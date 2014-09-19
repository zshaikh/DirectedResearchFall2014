package com.flurry.org.apache.avro.file;

import java.io.*;

public class SeekableByteArrayInput extends ByteArrayInputStream implements SeekableInput
{
    public SeekableByteArrayInput(final byte[] buf) {
        super(buf);
    }
    
    @Override
    public long length() throws IOException {
        return this.count;
    }
    
    @Override
    public void seek(final long n) throws IOException {
        this.reset();
        this.skip(n);
    }
    
    @Override
    public long tell() throws IOException {
        return this.pos;
    }
}
