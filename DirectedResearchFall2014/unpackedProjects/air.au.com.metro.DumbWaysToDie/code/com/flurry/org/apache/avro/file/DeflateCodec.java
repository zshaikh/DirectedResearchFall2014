package com.flurry.org.apache.avro.file;

import java.nio.*;
import java.io.*;
import java.util.zip.*;

class DeflateCodec extends Codec
{
    private int compressionLevel;
    private Deflater deflater;
    private Inflater inflater;
    private boolean nowrap;
    private ByteArrayOutputStream outputBuffer;
    
    public DeflateCodec(final int compressionLevel) {
        super();
        this.nowrap = true;
        this.compressionLevel = compressionLevel;
    }
    
    private Deflater getDeflater() {
        if (this.deflater == null) {
            this.deflater = new Deflater(this.compressionLevel, this.nowrap);
        }
        this.deflater.reset();
        return this.deflater;
    }
    
    private Inflater getInflater() {
        if (this.inflater == null) {
            this.inflater = new Inflater(this.nowrap);
        }
        this.inflater.reset();
        return this.inflater;
    }
    
    private ByteArrayOutputStream getOutputBuffer(final int size) {
        if (this.outputBuffer == null) {
            this.outputBuffer = new ByteArrayOutputStream(size);
        }
        this.outputBuffer.reset();
        return this.outputBuffer;
    }
    
    private void writeAndClose(final ByteBuffer byteBuffer, final OutputStream outputStream) throws IOException {
        final byte[] array = byteBuffer.array();
        final int off = byteBuffer.arrayOffset() + byteBuffer.position();
        final int remaining = byteBuffer.remaining();
        try {
            outputStream.write(array, off, remaining);
        }
        finally {
            outputStream.close();
        }
    }
    
    @Override
    ByteBuffer compress(final ByteBuffer byteBuffer) throws IOException {
        final ByteArrayOutputStream outputBuffer = this.getOutputBuffer(byteBuffer.remaining());
        this.writeAndClose(byteBuffer, new DeflaterOutputStream(outputBuffer, this.getDeflater()));
        return ByteBuffer.wrap(outputBuffer.toByteArray());
    }
    
    @Override
    ByteBuffer decompress(final ByteBuffer byteBuffer) throws IOException {
        final ByteArrayOutputStream outputBuffer = this.getOutputBuffer(byteBuffer.remaining());
        this.writeAndClose(byteBuffer, new InflaterOutputStream(outputBuffer, this.getInflater()));
        return ByteBuffer.wrap(outputBuffer.toByteArray());
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (this.getClass() == o.getClass() && this.nowrap == ((DeflateCodec)o).nowrap);
    }
    
    @Override
    String getName() {
        return "deflate";
    }
    
    @Override
    public int hashCode() {
        if (this.nowrap) {
            return 0;
        }
        return 1;
    }
    
    @Override
    public String toString() {
        return this.getName() + "-" + this.compressionLevel;
    }
    
    static class Option extends CodecFactory
    {
        private int compressionLevel;
        
        Option(final int compressionLevel) {
            super();
            this.compressionLevel = compressionLevel;
        }
        
        @Override
        protected Codec createInstance() {
            return new DeflateCodec(this.compressionLevel);
        }
    }
}
