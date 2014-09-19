package com.chartboost.sdk.impl;

public class bb
{
    public static <T> T a(final String s, final T t) throws IllegalArgumentException {
        if (t == null) {
            throw new a(s);
        }
        return t;
    }
    
    static class a extends IllegalArgumentException
    {
        a(final String str) {
            super(str + " should not be null!");
        }
    }
}
