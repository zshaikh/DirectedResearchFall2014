package com.flurry.org.apache.avro.file;

import java.io.*;

public interface SeekableInput extends Closeable
{
    long length() throws IOException;
    
    int read(byte[] p0, int p1, int p2) throws IOException;
    
    void seek(long p0) throws IOException;
    
    long tell() throws IOException;
}
