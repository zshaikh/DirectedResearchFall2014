package com.flurry.org.codehaus.jackson.util;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class MinimalPrettyPrinter implements PrettyPrinter
{
    public static final String DEFAULT_ROOT_VALUE_SEPARATOR = " ";
    protected String _rootValueSeparator;
    
    public MinimalPrettyPrinter() {
        this(" ");
    }
    
    public MinimalPrettyPrinter(final String rootValueSeparator) {
        super();
        this._rootValueSeparator = " ";
        this._rootValueSeparator = rootValueSeparator;
    }
    
    @Override
    public void beforeArrayValues(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
    }
    
    @Override
    public void beforeObjectEntries(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
    }
    
    public void setRootValueSeparator(final String rootValueSeparator) {
        this._rootValueSeparator = rootValueSeparator;
    }
    
    @Override
    public void writeArrayValueSeparator(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw(',');
    }
    
    @Override
    public void writeEndArray(final JsonGenerator jsonGenerator, final int n) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw(']');
    }
    
    @Override
    public void writeEndObject(final JsonGenerator jsonGenerator, final int n) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw('}');
    }
    
    @Override
    public void writeObjectEntrySeparator(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw(',');
    }
    
    @Override
    public void writeObjectFieldValueSeparator(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw(':');
    }
    
    @Override
    public void writeRootValueSeparator(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        if (this._rootValueSeparator != null) {
            jsonGenerator.writeRaw(this._rootValueSeparator);
        }
    }
    
    @Override
    public void writeStartArray(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw('[');
    }
    
    @Override
    public void writeStartObject(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw('{');
    }
}
