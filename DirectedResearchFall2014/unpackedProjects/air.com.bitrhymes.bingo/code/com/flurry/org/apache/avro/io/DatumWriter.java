package com.flurry.org.apache.avro.io;

import com.flurry.org.apache.avro.*;
import java.io.*;

public interface DatumWriter<D>
{
    void setSchema(Schema p0);
    
    void write(D p0, Encoder p1) throws IOException;
}
