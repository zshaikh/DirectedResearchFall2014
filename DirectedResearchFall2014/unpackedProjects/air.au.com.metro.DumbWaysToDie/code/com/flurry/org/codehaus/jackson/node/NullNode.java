package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public final class NullNode extends ValueNode
{
    public static final NullNode instance;
    
    static {
        instance = new NullNode();
    }
    
    public static NullNode getInstance() {
        return NullNode.instance;
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
        return "null";
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.VALUE_NULL;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this;
    }
    
    @Override
    public boolean isNull() {
        return true;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeNull();
    }
}
