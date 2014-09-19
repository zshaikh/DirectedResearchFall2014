package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.io.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public final class IntNode extends NumericNode
{
    private static final IntNode[] CANONICALS;
    static final int MAX_CANONICAL = 10;
    static final int MIN_CANONICAL = -1;
    final int _value;
    
    static {
        CANONICALS = new IntNode[12];
        for (int i = 0; i < 12; ++i) {
            IntNode.CANONICALS[i] = new IntNode(i - 1);
        }
    }
    
    public IntNode(final int value) {
        super();
        this._value = value;
    }
    
    public static IntNode valueOf(final int n) {
        if (n > 10 || n < -1) {
            return new IntNode(n);
        }
        return IntNode.CANONICALS[n + 1];
    }
    
    @Override
    public boolean asBoolean(final boolean b) {
        return this._value != 0;
    }
    
    @Override
    public String asText() {
        return NumberOutput.toString(this._value);
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_INT;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && ((IntNode)o)._value == this._value);
    }
    
    @Override
    public BigInteger getBigIntegerValue() {
        return BigInteger.valueOf(this._value);
    }
    
    @Override
    public BigDecimal getDecimalValue() {
        return BigDecimal.valueOf(this._value);
    }
    
    @Override
    public double getDoubleValue() {
        return this._value;
    }
    
    @Override
    public int getIntValue() {
        return this._value;
    }
    
    @Override
    public long getLongValue() {
        return this._value;
    }
    
    @Override
    public JsonParser.NumberType getNumberType() {
        return JsonParser.NumberType.INT;
    }
    
    @Override
    public Number getNumberValue() {
        return this._value;
    }
    
    @Override
    public int hashCode() {
        return this._value;
    }
    
    @Override
    public boolean isInt() {
        return true;
    }
    
    @Override
    public boolean isIntegralNumber() {
        return true;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeNumber(this._value);
    }
}
