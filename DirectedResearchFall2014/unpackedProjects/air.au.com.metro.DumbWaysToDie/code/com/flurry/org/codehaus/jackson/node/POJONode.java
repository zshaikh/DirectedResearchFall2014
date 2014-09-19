package com.flurry.org.codehaus.jackson.node;

import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

public final class POJONode extends ValueNode
{
    protected final Object _value;
    
    public POJONode(final Object value) {
        super();
        this._value = value;
    }
    
    @Override
    public boolean asBoolean(final boolean b) {
        if (this._value != null && this._value instanceof Boolean) {
            return (boolean)this._value;
        }
        return b;
    }
    
    @Override
    public double asDouble(final double n) {
        if (this._value instanceof Number) {
            return ((Number)this._value).doubleValue();
        }
        return n;
    }
    
    @Override
    public int asInt(final int n) {
        if (this._value instanceof Number) {
            return ((Number)this._value).intValue();
        }
        return n;
    }
    
    @Override
    public long asLong(final long n) {
        if (this._value instanceof Number) {
            return ((Number)this._value).longValue();
        }
        return n;
    }
    
    @Override
    public String asText() {
        if (this._value == null) {
            return "null";
        }
        return this._value.toString();
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.VALUE_EMBEDDED_OBJECT;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (o.getClass() != this.getClass()) {
            return false;
        }
        final POJONode pojoNode = (POJONode)o;
        if (this._value == null) {
            return pojoNode._value == null;
        }
        return this._value.equals(pojoNode._value);
    }
    
    @Override
    public byte[] getBinaryValue() throws IOException {
        if (this._value instanceof byte[]) {
            return (byte[])this._value;
        }
        return super.getBinaryValue();
    }
    
    public Object getPojo() {
        return this._value;
    }
    
    @Override
    public int hashCode() {
        return this._value.hashCode();
    }
    
    @Override
    public boolean isPojo() {
        return true;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        if (this._value == null) {
            jsonGenerator.writeNull();
            return;
        }
        jsonGenerator.writeObject(this._value);
    }
    
    @Override
    public String toString() {
        return String.valueOf(this._value);
    }
}
