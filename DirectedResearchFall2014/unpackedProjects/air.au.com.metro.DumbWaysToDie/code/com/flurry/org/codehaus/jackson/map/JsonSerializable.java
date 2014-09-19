package com.flurry.org.codehaus.jackson.map;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@Deprecated
public interface JsonSerializable
{
    void serialize(JsonGenerator p0, SerializerProvider p1) throws IOException, JsonProcessingException;
}
