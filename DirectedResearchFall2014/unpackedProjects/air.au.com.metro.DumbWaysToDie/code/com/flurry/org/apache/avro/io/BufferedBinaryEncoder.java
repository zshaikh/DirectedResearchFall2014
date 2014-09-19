package com.flurry.org.apache.avro.io;

import java.io.*;
import com.flurry.org.apache.avro.*;

public class BufferedBinaryEncoder extends BinaryEncoder
{
    private byte[] buf;
    private int bulkLimit;
    private int pos;
    private ByteSink sink;
    
    BufferedBinaryEncoder(final OutputStream outputStream, final int n) {
        super();
        this.configure(outputStream, n);
    }
    
    private void ensureBounds(final int n) throws IOException {
        if (this.buf.length - this.pos < n) {
            this.flushBuffer();
        }
    }
    
    private void flushBuffer() throws IOException {
        if (this.pos > 0) {
            this.sink.innerWrite(this.buf, 0, this.pos);
            this.pos = 0;
        }
    }
    
    private void writeByte(final int n) throws IOException {
        if (this.pos == this.buf.length) {
            this.flushBuffer();
        }
        this.buf[this.pos++] = (byte)(n & 0xFF);
    }
    
    @Override
    public int bytesBuffered() {
        return this.pos;
    }
    
    BufferedBinaryEncoder configure(final OutputStream outputStream, final int n) {
        if (outputStream == null) {
            throw new NullPointerException("OutputStream cannot be null!");
        }
        Label_0032: {
            if (this.sink == null || this.pos <= 0) {
                break Label_0032;
            }
            try {
                this.flushBuffer();
                this.sink = (ByteSink)new OutputStreamSink(outputStream);
                this.pos = 0;
                if (this.buf == null || this.buf.length != n) {
                    this.buf = new byte[n];
                }
                this.bulkLimit = this.buf.length >>> 1;
                if (this.bulkLimit > 512) {
                    this.bulkLimit = 512;
                }
                return this;
            }
            catch (IOException ex) {
                throw new AvroRuntimeException("Failure flushing old output", ex);
            }
        }
    }
    
    @Override
    public void flush() throws IOException {
        this.flushBuffer();
        this.sink.innerFlush();
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException {
        if (this.buf.length == this.pos) {
            this.flushBuffer();
        }
        this.pos += BinaryData.encodeBoolean(b, this.buf, this.pos);
    }
    
    @Override
    public void writeDouble(final double n) throws IOException {
        this.ensureBounds(8);
        this.pos += BinaryData.encodeDouble(n, this.buf, this.pos);
    }
    
    @Override
    public void writeFixed(final byte[] array, final int n, final int n2) throws IOException {
        if (n2 > this.bulkLimit) {
            this.flushBuffer();
            this.sink.innerWrite(array, n, n2);
            return;
        }
        this.ensureBounds(n2);
        System.arraycopy(array, n, this.buf, this.pos, n2);
        this.pos += n2;
    }
    
    @Override
    public void writeFloat(final float n) throws IOException {
        this.ensureBounds(4);
        this.pos += BinaryData.encodeFloat(n, this.buf, this.pos);
    }
    
    @Override
    public void writeInt(final int n) throws IOException {
        this.ensureBounds(5);
        this.pos += BinaryData.encodeInt(n, this.buf, this.pos);
    }
    
    @Override
    public void writeLong(final long n) throws IOException {
        this.ensureBounds(10);
        this.pos += BinaryData.encodeLong(n, this.buf, this.pos);
    }
    
    @Override
    protected void writeZero() throws IOException {
        this.writeByte(0);
    }
    
    private abstract static class ByteSink
    {
        protected abstract void innerFlush() throws IOException;
        
        protected abstract void innerWrite(final byte[] p0, final int p1, final int p2) throws IOException;
    }
    
    static class OutputStreamSink extends ByteSink
    {
        private final OutputStream out;
        
        private OutputStreamSink(final OutputStream out) {
            super();
            this.out = out;
        }
        
        @Override
        protected void innerFlush() throws IOException {
            this.out.flush();
        }
        
        @Override
        protected void innerWrite(final byte[] b, final int off, final int len) throws IOException {
            this.out.write(b, off, len);
        }
    }
}
