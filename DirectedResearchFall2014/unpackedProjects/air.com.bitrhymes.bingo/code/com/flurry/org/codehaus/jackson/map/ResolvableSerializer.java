package com.flurry.org.codehaus.jackson.map;

public interface ResolvableSerializer
{
    void resolve(SerializerProvider p0) throws JsonMappingException;
}
