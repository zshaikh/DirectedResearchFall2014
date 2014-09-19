package com.vungle.sdk;

final class au<T> extends aq<an<T>>
{
    private static final Object e;
    private final String f;
    private final ClassLoader g;
    private aq<T> h;
    
    static {
        e = new Object();
    }
    
    public au(final String s, final Object o, final ClassLoader g, final String f) {
        super(s, null, false, o);
        this.g = g;
        this.f = f;
    }
    
    @Override
    public final void a(final av av) {
        this.h = (aq<T>)av.a(this.f, this.d, this.g);
    }
}
