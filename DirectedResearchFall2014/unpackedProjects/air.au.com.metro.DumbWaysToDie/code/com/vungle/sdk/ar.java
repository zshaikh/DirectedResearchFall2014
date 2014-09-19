package com.vungle.sdk;

final class ar<T> extends aq<T>
{
    private final String e;
    private final ClassLoader f;
    private aq<?> g;
    
    public ar(final String s, final Object o, final ClassLoader f, final String e) {
        super(s, null, false, o);
        this.f = f;
        this.e = e;
    }
    
    @Override
    public final void a(final av av) {
        this.g = av.a(this.e, this.d, this.f);
    }
    
    @Override
    public final void a(final T t) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final T get() {
        return (T)this.g;
    }
}
