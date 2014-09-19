package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.annotate.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class TypeSerializer
{
    public abstract String getPropertyName();
    
    public abstract TypeIdResolver getTypeIdResolver();
    
    public abstract JsonTypeInfo.As getTypeInclusion();
    
    public abstract void writeTypePrefixForArray(final Object p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public void writeTypePrefixForArray(final Object o, final JsonGenerator jsonGenerator, final Class<?> clazz) throws IOException, JsonProcessingException {
        this.writeTypePrefixForArray(o, jsonGenerator);
    }
    
    public abstract void writeTypePrefixForObject(final Object p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public void writeTypePrefixForObject(final Object o, final JsonGenerator jsonGenerator, final Class<?> clazz) throws IOException, JsonProcessingException {
        this.writeTypePrefixForObject(o, jsonGenerator);
    }
    
    public abstract void writeTypePrefixForScalar(final Object p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public void writeTypePrefixForScalar(final Object o, final JsonGenerator jsonGenerator, final Class<?> clazz) throws IOException, JsonProcessingException {
        this.writeTypePrefixForScalar(o, jsonGenerator);
    }
    
    public abstract void writeTypeSuffixForArray(final Object p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public abstract void writeTypeSuffixForObject(final Object p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public abstract void writeTypeSuffixForScalar(final Object p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
}
