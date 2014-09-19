package com.flurry.org.codehaus.jackson.node;

import java.math.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public final class BigIntegerNode extends NumericNode
{
    protected final BigInteger _value;
    
    public BigIntegerNode(final BigInteger value) {
        super();
        this._value = value;
    }
    
    public static BigIntegerNode valueOf(final BigInteger bigInteger) {
        return new BigIntegerNode(bigInteger);
    }
    
    @Override
    public boolean asBoolean(final boolean b) {
        return !BigInteger.ZERO.equals(this._value);
    }
    
    @Override
    public String asText() {
        return this._value.toString();
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_INT;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && ((BigIntegerNode)o)._value == this._value);
    }
    
    @Override
    public BigInteger getBigIntegerValue() {
        return this._value;
    }
    
    @Override
    public BigDecimal getDecimalValue() {
        return new BigDecimal(this._value);
    }
    
    @Override
    public double getDoubleValue() {
        return this._value.doubleValue();
    }
    
    @Override
    public int getIntValue() {
        return this._value.intValue();
    }
    
    @Override
    public long getLongValue() {
        return this._value.longValue();
    }
    
    @Override
    public JsonParser.NumberType getNumberType() {
        return JsonParser.NumberType.BIG_INTEGER;
    }
    
    @Override
    public Number getNumberValue() {
        return this._value;
    }
    
    @Override
    public int hashCode() {
        return this._value.hashCode();
    }
    
    @Override
    public boolean isBigInteger() {
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
