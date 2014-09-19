package com.flurry.org.codehaus.jackson.map;

public interface ResolvableDeserializer
{
    void resolve(DeserializationConfig p0, DeserializerProvider p1) throws JsonMappingException;
}
