package com.flurry.org.apache.avro.file;

import java.util.*;
import com.flurry.org.apache.avro.*;
import java.io.*;

public interface FileReader<D> extends Iterator<D>, Iterable<D>, Closeable
{
    Schema getSchema();
    
    D next(D p0) throws IOException;
    
    boolean pastSync(long p0) throws IOException;
    
    void sync(long p0) throws IOException;
    
    long tell() throws IOException;
}
