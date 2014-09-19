package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.io.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public final class DoubleNode extends NumericNode
{
    protected final double _value;
    
    public DoubleNode(final double value) {
        super();
        this._value = value;
    }
    
    public static DoubleNode valueOf(final double n) {
        return new DoubleNode(n);
    }
    
    @Override
    public String asText() {
        return NumberOutput.toString(this._value);
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_FLOAT;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && ((DoubleNode)o)._value == this._value);
    }
    
    @Override
    public BigInteger getBigIntegerValue() {
        return this.getDecimalValue().toBigInteger();
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
        return (int)this._value;
    }
    
    @Override
    public long getLongValue() {
        return (long)this._value;
    }
    
    @Override
    public JsonParser.NumberType getNumberType() {
        return JsonParser.NumberType.DOUBLE;
    }
    
    @Override
    public Number getNumberValue() {
        return this._value;
    }
    
    @Override
    public int hashCode() {
        final long doubleToLongBits = Double.doubleToLongBits(this._value);
        return (int)doubleToLongBits ^ (int)(doubleToLongBits >> 32);
    }
    
    @Override
    public boolean isDouble() {
        return true;
    }
    
    @Override
    public boolean isFloatingPointNumber() {
        return true;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeNumber(this._value);
    }
}
