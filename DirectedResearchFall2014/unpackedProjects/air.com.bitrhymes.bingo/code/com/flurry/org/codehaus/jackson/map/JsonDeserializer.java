package com.flurry.org.codehaus.jackson.map;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class JsonDeserializer<T>
{
    public abstract T deserialize(final JsonParser p0, final DeserializationContext p1) throws IOException, JsonProcessingException;
    
    public T deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext, final T t) throws IOException, JsonProcessingException {
        throw new UnsupportedOperationException();
    }
    
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }
    
    public T getEmptyValue() {
        return this.getNullValue();
    }
    
    public T getNullValue() {
        return null;
    }
    
    public JsonDeserializer<T> unwrappingDeserializer() {
        return this;
    }
    
    public abstract static class None extends JsonDeserializer<Object>
    {
    }
}
