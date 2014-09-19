package com.flurry.org.codehaus.jackson.node;

import java.math.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public final class DecimalNode extends NumericNode
{
    protected final BigDecimal _value;
    
    public DecimalNode(final BigDecimal value) {
        super();
        this._value = value;
    }
    
    public static DecimalNode valueOf(final BigDecimal bigDecimal) {
        return new DecimalNode(bigDecimal);
    }
    
    @Override
    public String asText() {
        return this._value.toString();
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_FLOAT;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && ((DecimalNode)o)._value.equals(this._value));
    }
    
    @Override
    public BigInteger getBigIntegerValue() {
        return this._value.toBigInteger();
    }
    
    @Override
    public BigDecimal getDecimalValue() {
        return this._value;
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
        return JsonParser.NumberType.BIG_DECIMAL;
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
    public boolean isBigDecimal() {
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
