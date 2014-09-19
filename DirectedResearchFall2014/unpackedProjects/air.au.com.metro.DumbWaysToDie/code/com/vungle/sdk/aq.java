package com.vungle.sdk;

import javax.inject.*;
import java.util.*;

public abstract class aq<T> implements ao<T>, Provider<T>
{
    public static final aq<Object> a;
    public final String b;
    public final String c;
    public final Object d;
    private int e;
    
    static {
        a = new aq<Object>() {
            @Override
            public final void a(final Object o) {
                throw new AssertionError((Object)"Unresolved binding should never be called to inject.");
            }
            
            @Override
            public final Object get() {
                throw new AssertionError((Object)"Unresolved binding should never be called to inject.");
            }
        };
    }
    
    public aq(final String b, final String c, final boolean b2, final Object d) {
        super();
        if (b2 && b == null) {
            throw new IllegalArgumentException();
        }
        this.b = b;
        this.c = c;
        this.d = d;
        int e;
        if (b2) {
            e = 1;
        }
        else {
            e = 0;
        }
        this.e = e;
    }
    
    void a() {
        this.e |= 0x2;
    }
    
    public void a(final av av) {
    }
    
    public void a(final T t) {
    }
    
    public void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
    }
    
    public void a(final boolean b) {
        int e;
        if (b) {
            e = (0x4 | this.e);
        }
        else {
            e = (0xFFFFFFFB & this.e);
        }
        this.e = e;
    }
    
    public void b(final boolean b) {
        int e;
        if (b) {
            e = (0x8 | this.e);
        }
        else {
            e = (0xFFFFFFF7 & this.e);
        }
        this.e = e;
    }
    
    public boolean b() {
        return (0x2 & this.e) != 0x0;
    }
    
    public void c(final boolean b) {
        int e;
        if (b) {
            e = (0x20 | this.e);
        }
        else {
            e = (0xFFFFFFDF & this.e);
        }
        this.e = e;
    }
    
    boolean c() {
        return (0x1 & this.e) != 0x0;
    }
    
    public void d(final boolean b) {
        int e;
        if (b) {
            e = (0x10 | this.e);
        }
        else {
            e = (0xFFFFFFEF & this.e);
        }
        this.e = e;
    }
    
    public boolean d() {
        return (0x4 & this.e) != 0x0;
    }
    
    public boolean e() {
        return (0x8 & this.e) != 0x0;
    }
    
    public boolean f() {
        return (0x20 & this.e) != 0x0;
    }
    
    public boolean g() {
        return (0x10 & this.e) != 0x0;
    }
    
    public T get() {
        throw new UnsupportedOperationException("No injectable constructor on " + this.getClass().getName());
    }
    
    @Override
    public String toString() {
        return this.getClass().getSimpleName() + "[provideKey=\"" + this.b + "\", memberskey=\"" + this.c + "\"]";
    }
}
