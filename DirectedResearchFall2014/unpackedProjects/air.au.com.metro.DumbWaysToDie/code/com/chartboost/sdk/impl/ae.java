package com.chartboost.sdk.impl;

import java.util.regex.*;

public class ae
{
    private static Pattern a;
    
    static {
        ae.a = Pattern.compile("\\s+", 40);
    }
    
    public static void a(final int i, final int j) {
        if (i != j) {
            throw new a("" + i + " != " + j);
        }
    }
    
    public static class a extends RuntimeException
    {
        final String a;
        
        a(final String s) {
            super(s);
            this.a = s;
        }
        
        @Override
        public String toString() {
            return this.a;
        }
    }
}
