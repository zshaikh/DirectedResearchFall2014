package com.flurry.org.apache.avro.io;

import java.io.*;
import com.flurry.org.apache.avro.*;

public interface DatumReader<D>
{
    D read(D p0, Decoder p1) throws IOException;
    
    void setSchema(Schema p0);
}
