package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.io.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public final class LongNode extends NumericNode
{
    final long _value;
    
    public LongNode(final long value) {
        super();
        this._value = value;
    }
    
    public static LongNode valueOf(final long n) {
        return new LongNode(n);
    }
    
    @Override
    public boolean asBoolean(final boolean b) {
        return this._value != 0L;
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
        return o == this || (o != null && o.getClass() == this.getClass() && ((LongNode)o)._value == this._value);
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
        return (int)this._value;
    }
    
    @Override
    public long getLongValue() {
        return this._value;
    }
    
    @Override
    public JsonParser.NumberType getNumberType() {
        return JsonParser.NumberType.LONG;
    }
    
    @Override
    public Number getNumberValue() {
        return this._value;
    }
    
    @Override
    public int hashCode() {
        return (int)this._value ^ (int)(this._value >> 32);
    }
    
    @Override
    public boolean isIntegralNumber() {
        return true;
    }
    
    @Override
    public boolean isLong() {
        return true;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeNumber(this._value);
    }
}
