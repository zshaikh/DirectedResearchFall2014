package com.flurry.org.apache.avro.file;

import java.io.*;

public class SeekableFileInput extends FileInputStream implements SeekableInput
{
    public SeekableFileInput(final File file) throws IOException {
        super(file);
    }
    
    public SeekableFileInput(final FileDescriptor fdObj) throws IOException {
        super(fdObj);
    }
    
    @Override
    public long length() throws IOException {
        return this.getChannel().size();
    }
    
    @Override
    public void seek(final long n) throws IOException {
        this.getChannel().position(n);
    }
    
    @Override
    public long tell() throws IOException {
        return this.getChannel().position();
    }
}
