package com.flurry.org.apache.avro.util;

import java.nio.*;
import java.util.*;
import java.io.*;

public class ByteBufferOutputStream extends OutputStream
{
    public static final int BUFFER_SIZE = 8192;
    private List<ByteBuffer> buffers;
    
    public ByteBufferOutputStream() {
        super();
        this.reset();
    }
    
    public void append(final List<ByteBuffer> list) {
        for (final ByteBuffer byteBuffer : list) {
            byteBuffer.position(byteBuffer.limit());
        }
        this.buffers.addAll(list);
    }
    
    public List<ByteBuffer> getBufferList() {
        final List<ByteBuffer> buffers = this.buffers;
        this.reset();
        final Iterator<ByteBuffer> iterator = buffers.iterator();
        while (iterator.hasNext()) {
            iterator.next().flip();
        }
        return buffers;
    }
    
    public void prepend(final List<ByteBuffer> list) {
        for (final ByteBuffer byteBuffer : list) {
            byteBuffer.position(byteBuffer.limit());
        }
        this.buffers.addAll(0, list);
    }
    
    public void reset() {
        (this.buffers = new LinkedList<ByteBuffer>()).add(ByteBuffer.allocate(8192));
    }
    
    @Override
    public void write(final int n) {
        ByteBuffer allocate = this.buffers.get(this.buffers.size() - 1);
        if (allocate.remaining() < 1) {
            allocate = ByteBuffer.allocate(8192);
            this.buffers.add(allocate);
        }
        allocate.put((byte)n);
    }
    
    public void write(final ByteBuffer byteBuffer) {
        this.buffers.add(byteBuffer);
    }
    
    @Override
    public void write(final byte[] array, int n, int i) {
        ByteBuffer allocate = this.buffers.get(this.buffers.size() - 1);
        for (int length = allocate.remaining(); i > length; length = allocate.remaining()) {
            allocate.put(array, n, length);
            i -= length;
            n += length;
            allocate = ByteBuffer.allocate(8192);
            this.buffers.add(allocate);
        }
        allocate.put(array, n, i);
    }
    
    public void writeBuffer(final ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() < 8192) {
            this.write(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining());
            return;
        }
        final ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(byteBuffer.limit());
        this.buffers.add(duplicate);
    }
}
