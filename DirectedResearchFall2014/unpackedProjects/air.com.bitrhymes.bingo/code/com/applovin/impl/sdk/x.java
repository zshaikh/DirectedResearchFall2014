package com.applovin.impl.sdk;

public class x
{
    private static int a;
    private final int b;
    private final String c;
    private final Object d;
    
    static {
        x.a = 0;
    }
    
    private x(final String c, final Object d) {
        super();
        if (c == null) {
            throw new IllegalArgumentException("No name specified");
        }
        if (d == null) {
            throw new IllegalArgumentException("No default value specified");
        }
        this.c = c;
        this.d = d;
        this.b = x.a;
        ++x.a;
    }
    
    public int a() {
        return this.b;
    }
    
    Object a(final Object obj) {
        return this.d.getClass().cast(obj);
    }
    
    public String b() {
        return this.c;
    }
    
    public Object c() {
        return this.d;
    }
}
