package com.flurry.org.codehaus.jackson.map;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public interface JsonSerializableWithType extends JsonSerializable
{
    void serializeWithType(JsonGenerator p0, SerializerProvider p1, TypeSerializer p2) throws IOException, JsonProcessingException;
}
