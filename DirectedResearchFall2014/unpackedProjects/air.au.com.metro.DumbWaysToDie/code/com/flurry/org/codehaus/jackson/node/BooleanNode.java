package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public final class BooleanNode extends ValueNode
{
    public static final BooleanNode FALSE;
    public static final BooleanNode TRUE;
    
    static {
        TRUE = new BooleanNode();
        FALSE = new BooleanNode();
    }
    
    public static BooleanNode getFalse() {
        return BooleanNode.FALSE;
    }
    
    public static BooleanNode getTrue() {
        return BooleanNode.TRUE;
    }
    
    public static BooleanNode valueOf(final boolean b) {
        if (b) {
            return BooleanNode.TRUE;
        }
        return BooleanNode.FALSE;
    }
    
    @Override
    public boolean asBoolean() {
        return this == BooleanNode.TRUE;
    }
    
    @Override
    public boolean asBoolean(final boolean b) {
        return this == BooleanNode.TRUE;
    }
    
    @Override
    public double asDouble(final double n) {
        if (this == BooleanNode.TRUE) {
            return 1.0;
        }
        return 0.0;
    }
    
    @Override
    public int asInt(final int n) {
        if (this == BooleanNode.TRUE) {
            return 1;
        }
        return 0;
    }
    
    @Override
    public long asLong(final long n) {
        if (this == BooleanNode.TRUE) {
            return 1L;
        }
        return 0L;
    }
    
    @Override
    public String asText() {
        if (this == BooleanNode.TRUE) {
            return "true";
        }
        return "false";
    }
    
    @Override
    public JsonToken asToken() {
        if (this == BooleanNode.TRUE) {
            return JsonToken.VALUE_TRUE;
        }
        return JsonToken.VALUE_FALSE;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this;
    }
    
    @Override
    public boolean getBooleanValue() {
        return this == BooleanNode.TRUE;
    }
    
    @Override
    public boolean isBoolean() {
        return true;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeBoolean(this == BooleanNode.TRUE);
    }
}
