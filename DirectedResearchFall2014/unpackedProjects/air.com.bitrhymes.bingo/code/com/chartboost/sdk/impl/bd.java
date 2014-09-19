package com.chartboost.sdk.impl;

public class bd
{
    public static <T> T a(final String s, final T t) throws IllegalArgumentException {
        if (t == null) {
            throw new a(s);
        }
        return t;
    }
    
    static class a extends IllegalArgumentException
    {
        a(final String obj) {
            super(String.valueOf(obj) + " should not be null!");
        }
    }
}
