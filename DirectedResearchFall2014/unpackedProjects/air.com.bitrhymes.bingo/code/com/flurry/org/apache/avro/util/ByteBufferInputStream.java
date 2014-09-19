package com.flurry.org.apache.avro.util;

import java.util.*;
import java.nio.*;
import java.io.*;

public class ByteBufferInputStream extends InputStream
{
    private List<ByteBuffer> buffers;
    private int current;
    
    public ByteBufferInputStream(final List<ByteBuffer> buffers) {
        super();
        this.buffers = buffers;
    }
    
    private ByteBuffer getBuffer() throws IOException {
        while (this.current < this.buffers.size()) {
            final ByteBuffer byteBuffer = this.buffers.get(this.current);
            if (byteBuffer.hasRemaining()) {
                return byteBuffer;
            }
            ++this.current;
        }
        throw new EOFException();
    }
    
    @Override
    public int read() throws IOException {
        return 0xFF & this.getBuffer().get();
    }
    
    @Override
    public int read(final byte[] array, final int n, final int length) throws IOException {
        if (length == 0) {
            return 0;
        }
        final ByteBuffer buffer = this.getBuffer();
        final int remaining = buffer.remaining();
        if (length > remaining) {
            buffer.get(array, n, remaining);
            return remaining;
        }
        buffer.get(array, n, length);
        return length;
    }
    
    public ByteBuffer readBuffer(final int capacity) throws IOException {
        if (capacity == 0) {
            return ByteBuffer.allocate(0);
        }
        final ByteBuffer buffer = this.getBuffer();
        if (buffer.remaining() == capacity) {
            ++this.current;
            return buffer;
        }
        final ByteBuffer allocate = ByteBuffer.allocate(capacity);
        for (int i = 0; i < capacity; i += this.read(allocate.array(), i, capacity - i)) {}
        return allocate;
    }
}
