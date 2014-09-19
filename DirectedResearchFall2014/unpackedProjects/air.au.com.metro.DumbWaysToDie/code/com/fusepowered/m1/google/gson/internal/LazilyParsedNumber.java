package com.fusepowered.m1.google.gson.internal;

import java.io.*;
import java.math.*;

public final class LazilyParsedNumber extends Number
{
    private final String value;
    
    public LazilyParsedNumber(final String value) {
        super();
        this.value = value;
    }
    
    private Object writeReplace() throws ObjectStreamException {
        return new BigDecimal(this.value);
    }
    
    @Override
    public double doubleValue() {
        return Double.parseDouble(this.value);
    }
    
    @Override
    public float floatValue() {
        return Float.parseFloat(this.value);
    }
    
    @Override
    public int intValue() {
        try {
            return Integer.parseInt(this.value);
        }
        catch (NumberFormatException ex) {
            try {
                return (int)Long.parseLong(this.value);
            }
            catch (NumberFormatException ex2) {
                return new BigInteger(this.value).intValue();
            }
        }
    }
    
    @Override
    public long longValue() {
        try {
            return Long.parseLong(this.value);
        }
        catch (NumberFormatException ex) {
            return new BigInteger(this.value).longValue();
        }
    }
    
    @Override
    public String toString() {
        return this.value;
    }
}
