package com.flurry.org.codehaus.jackson.map;

public interface ContextualKeyDeserializer
{
    KeyDeserializer createContextual(DeserializationConfig p0, BeanProperty p1) throws JsonMappingException;
}
