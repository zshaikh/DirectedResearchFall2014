package com.flurry.org.codehaus.jackson.map;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class JsonSerializer<T>
{
    public Class<T> handledType() {
        return null;
    }
    
    public boolean isUnwrappingSerializer() {
        return false;
    }
    
    public abstract void serialize(final T p0, final JsonGenerator p1, final SerializerProvider p2) throws IOException, JsonProcessingException;
    
    public void serializeWithType(final T t, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        this.serialize(t, jsonGenerator, serializerProvider);
    }
    
    public JsonSerializer<T> unwrappingSerializer() {
        return this;
    }
    
    public abstract static class None extends JsonSerializer<Object>
    {
    }
}
