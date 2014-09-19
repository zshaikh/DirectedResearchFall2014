package com.flurry.org.codehaus.jackson.node;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public final class MissingNode extends BaseJsonNode
{
    private static final MissingNode instance;
    
    static {
        instance = new MissingNode();
    }
    
    public static MissingNode getInstance() {
        return MissingNode.instance;
    }
    
    @Override
    public double asDouble(final double n) {
        return 0.0;
    }
    
    @Override
    public int asInt(final int n) {
        return 0;
    }
    
    @Override
    public long asLong(final long n) {
        return 0L;
    }
    
    @Override
    public String asText() {
        return "";
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.NOT_AVAILABLE;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this;
    }
    
    @Override
    public boolean isMissingNode() {
        return true;
    }
    
    @Override
    public JsonNode path(final int n) {
        return this;
    }
    
    @Override
    public JsonNode path(final String s) {
        return this;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeNull();
    }
    
    @Override
    public void serializeWithType(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        jsonGenerator.writeNull();
    }
    
    @Override
    public String toString() {
        return "";
    }
}
