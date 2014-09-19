package com.flurry.org.codehaus.jackson.util;

import java.io.*;
import java.util.*;

public final class ByteArrayBuilder extends OutputStream
{
    static final int DEFAULT_BLOCK_ARRAY_SIZE = 40;
    private static final int INITIAL_BLOCK_SIZE = 500;
    private static final int MAX_BLOCK_SIZE = 262144;
    private static final byte[] NO_BYTES;
    private final BufferRecycler _bufferRecycler;
    private byte[] _currBlock;
    private int _currBlockPtr;
    private final LinkedList<byte[]> _pastBlocks;
    private int _pastLen;
    
    static {
        NO_BYTES = new byte[0];
    }
    
    public ByteArrayBuilder() {
        this(null);
    }
    
    public ByteArrayBuilder(final int n) {
        this(null, n);
    }
    
    public ByteArrayBuilder(final BufferRecycler bufferRecycler) {
        this(bufferRecycler, 500);
    }
    
    public ByteArrayBuilder(final BufferRecycler bufferRecycler, final int n) {
        super();
        this._pastBlocks = new LinkedList<byte[]>();
        this._bufferRecycler = bufferRecycler;
        if (bufferRecycler == null) {
            this._currBlock = new byte[n];
            return;
        }
        this._currBlock = bufferRecycler.allocByteBuffer(BufferRecycler.ByteBufferType.WRITE_CONCAT_BUFFER);
    }
    
    private void _allocMore() {
        this._pastLen += this._currBlock.length;
        int max = Math.max(this._pastLen >> 1, 1000);
        if (max > 262144) {
            max = 262144;
        }
        this._pastBlocks.add(this._currBlock);
        this._currBlock = new byte[max];
        this._currBlockPtr = 0;
    }
    
    public void append(final int n) {
        if (this._currBlockPtr >= this._currBlock.length) {
            this._allocMore();
        }
        this._currBlock[this._currBlockPtr++] = (byte)n;
    }
    
    public void appendThreeBytes(final int n) {
        if (2 + this._currBlockPtr < this._currBlock.length) {
            this._currBlock[this._currBlockPtr++] = (byte)(n >> 16);
            this._currBlock[this._currBlockPtr++] = (byte)(n >> 8);
            this._currBlock[this._currBlockPtr++] = (byte)n;
            return;
        }
        this.append(n >> 16);
        this.append(n >> 8);
        this.append(n);
    }
    
    public void appendTwoBytes(final int n) {
        if (1 + this._currBlockPtr < this._currBlock.length) {
            this._currBlock[this._currBlockPtr++] = (byte)(n >> 8);
            this._currBlock[this._currBlockPtr++] = (byte)n;
            return;
        }
        this.append(n >> 8);
        this.append(n);
    }
    
    @Override
    public void close() {
    }
    
    public byte[] completeAndCoalesce(final int currBlockPtr) {
        this._currBlockPtr = currBlockPtr;
        return this.toByteArray();
    }
    
    public byte[] finishCurrentSegment() {
        this._allocMore();
        return this._currBlock;
    }
    
    @Override
    public void flush() {
    }
    
    public byte[] getCurrentSegment() {
        return this._currBlock;
    }
    
    public int getCurrentSegmentLength() {
        return this._currBlockPtr;
    }
    
    public void release() {
        this.reset();
        if (this._bufferRecycler != null && this._currBlock != null) {
            this._bufferRecycler.releaseByteBuffer(BufferRecycler.ByteBufferType.WRITE_CONCAT_BUFFER, this._currBlock);
            this._currBlock = null;
        }
    }
    
    public void reset() {
        this._pastLen = 0;
        this._currBlockPtr = 0;
        if (!this._pastBlocks.isEmpty()) {
            this._pastBlocks.clear();
        }
    }
    
    public byte[] resetAndGetFirstSegment() {
        this.reset();
        return this._currBlock;
    }
    
    public void setCurrentSegmentLength(final int currBlockPtr) {
        this._currBlockPtr = currBlockPtr;
    }
    
    public byte[] toByteArray() {
        final int i = this._pastLen + this._currBlockPtr;
        if (i == 0) {
            return ByteArrayBuilder.NO_BYTES;
        }
        final byte[] array = new byte[i];
        int n = 0;
        for (final byte[] array2 : this._pastBlocks) {
            final int length = array2.length;
            System.arraycopy(array2, 0, array, n, length);
            n += length;
        }
        System.arraycopy(this._currBlock, 0, array, n, this._currBlockPtr);
        final int j = n + this._currBlockPtr;
        if (j != i) {
            throw new RuntimeException("Internal error: total len assumed to be " + i + ", copied " + j + " bytes");
        }
        if (!this._pastBlocks.isEmpty()) {
            this.reset();
        }
        return array;
    }
    
    @Override
    public void write(final int n) {
        this.append(n);
    }
    
    @Override
    public void write(final byte[] array) {
        this.write(array, 0, array.length);
    }
    
    @Override
    public void write(final byte[] array, int n, int b) {
        while (true) {
            final int min = Math.min(this._currBlock.length - this._currBlockPtr, b);
            if (min > 0) {
                System.arraycopy(array, n, this._currBlock, this._currBlockPtr, min);
                n += min;
                this._currBlockPtr += min;
                b -= min;
            }
            if (b <= 0) {
                break;
            }
            this._allocMore();
        }
    }
}
