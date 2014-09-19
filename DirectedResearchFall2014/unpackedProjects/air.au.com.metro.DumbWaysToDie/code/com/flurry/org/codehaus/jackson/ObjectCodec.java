package com.flurry.org.codehaus.jackson;

import java.io.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;

public abstract class ObjectCodec
{
    public abstract JsonNode createArrayNode();
    
    public abstract JsonNode createObjectNode();
    
    public abstract JsonNode readTree(final JsonParser p0) throws IOException, JsonProcessingException;
    
    public abstract <T> T readValue(final JsonParser p0, final JavaType p1) throws IOException, JsonProcessingException;
    
    public abstract <T> T readValue(final JsonParser p0, final TypeReference<?> p1) throws IOException, JsonProcessingException;
    
    public abstract <T> T readValue(final JsonParser p0, final Class<T> p1) throws IOException, JsonProcessingException;
    
    public abstract <T> Iterator<T> readValues(final JsonParser p0, final JavaType p1) throws IOException, JsonProcessingException;
    
    public abstract <T> Iterator<T> readValues(final JsonParser p0, final TypeReference<?> p1) throws IOException, JsonProcessingException;
    
    public abstract <T> Iterator<T> readValues(final JsonParser p0, final Class<T> p1) throws IOException, JsonProcessingException;
    
    public abstract JsonParser treeAsTokens(final JsonNode p0);
    
    public abstract <T> T treeToValue(final JsonNode p0, final Class<T> p1) throws IOException, JsonProcessingException;
    
    public abstract void writeTree(final JsonGenerator p0, final JsonNode p1) throws IOException, JsonProcessingException;
    
    public abstract void writeValue(final JsonGenerator p0, final Object p1) throws IOException, JsonProcessingException;
}
