package com.chartboost.sdk.impl;

import java.util.*;

public class bf<T>
{
    private final Map<Class<?>, T> a;
    private final Map<Class<?>, T> b;
    
    public bf() {
        super();
        this.a = (Map<Class<?>, T>)bh.c();
        this.b = bg.a((bi<Class<?>, T>)new a((a)null));
    }
    
    public static <T> List<Class<?>> a(final Class<T> clazz) {
        return be.a(clazz);
    }
    
    public int a() {
        return this.a.size();
    }
    
    public T a(final Class<?> clazz, final T t) {
        try {
            return this.a.put(clazz, t);
        }
        finally {
            this.b.clear();
        }
    }
    
    public T a(final Object o) {
        return this.b.get(o);
    }
    
    private final class a implements bi<Class<?>, T>
    {
        @Override
        public T a(final Class<?> clazz) {
            final Iterator<Class<?>> iterator = bf.a(clazz).iterator();
            while (iterator.hasNext()) {
                final Object value = bf.this.a.get(iterator.next());
                if (value != null) {
                    return (T)value;
                }
            }
            return null;
        }
    }
}
