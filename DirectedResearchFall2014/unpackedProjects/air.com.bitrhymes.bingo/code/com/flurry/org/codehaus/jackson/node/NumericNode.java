package com.flurry.org.codehaus.jackson.node;

import java.math.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class NumericNode extends ValueNode
{
    @Override
    public double asDouble() {
        return this.getDoubleValue();
    }
    
    @Override
    public double asDouble(final double n) {
        return this.getDoubleValue();
    }
    
    @Override
    public int asInt() {
        return this.getIntValue();
    }
    
    @Override
    public int asInt(final int n) {
        return this.getIntValue();
    }
    
    @Override
    public long asLong() {
        return this.getLongValue();
    }
    
    @Override
    public long asLong(final long n) {
        return this.getLongValue();
    }
    
    @Override
    public abstract String asText();
    
    @Override
    public abstract BigInteger getBigIntegerValue();
    
    @Override
    public abstract BigDecimal getDecimalValue();
    
    @Override
    public abstract double getDoubleValue();
    
    @Override
    public abstract int getIntValue();
    
    @Override
    public abstract long getLongValue();
    
    @Override
    public abstract JsonParser.NumberType getNumberType();
    
    @Override
    public abstract Number getNumberValue();
    
    @Override
    public final boolean isNumber() {
        return true;
    }
}
