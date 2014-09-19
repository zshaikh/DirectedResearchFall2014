package com.flurry.org.codehaus.jackson.map;

public interface ContextualSerializer<T>
{
    JsonSerializer<T> createContextual(SerializationConfig p0, BeanProperty p1) throws JsonMappingException;
}
