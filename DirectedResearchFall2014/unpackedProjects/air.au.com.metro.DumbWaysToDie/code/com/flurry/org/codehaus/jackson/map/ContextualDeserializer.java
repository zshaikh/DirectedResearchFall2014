package com.flurry.org.codehaus.jackson.map;

public interface ContextualDeserializer<T>
{
    JsonDeserializer<T> createContextual(DeserializationConfig p0, BeanProperty p1) throws JsonMappingException;
}
