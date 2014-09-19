package com.flurry.org.codehaus.jackson;

import java.io.*;

public interface PrettyPrinter
{
    void beforeArrayValues(JsonGenerator p0) throws IOException, JsonGenerationException;
    
    void beforeObjectEntries(JsonGenerator p0) throws IOException, JsonGenerationException;
    
    void writeArrayValueSeparator(JsonGenerator p0) throws IOException, JsonGenerationException;
    
    void writeEndArray(JsonGenerator p0, int p1) throws IOException, JsonGenerationException;
    
    void writeEndObject(JsonGenerator p0, int p1) throws IOException, JsonGenerationException;
    
    void writeObjectEntrySeparator(JsonGenerator p0) throws IOException, JsonGenerationException;
    
    void writeObjectFieldValueSeparator(JsonGenerator p0) throws IOException, JsonGenerationException;
    
    void writeRootValueSeparator(JsonGenerator p0) throws IOException, JsonGenerationException;
    
    void writeStartArray(JsonGenerator p0) throws IOException, JsonGenerationException;
    
    void writeStartObject(JsonGenerator p0) throws IOException, JsonGenerationException;
}
