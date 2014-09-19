package com.chartboost.sdk.impl;

import java.util.*;

public class bd<T>
{
    private final Map<Class<?>, T> a;
    private final Map<Class<?>, T> b;
    
    public bd() {
        super();
        this.a = (Map<Class<?>, T>)bf.c();
        this.b = be.a((bg<Class<?>, T>)new a());
    }
    
    public static <T> List<Class<?>> a(final Class<T> clazz) {
        return bc.a(clazz);
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
    
    private final class a implements bg<Class<?>, T>
    {
        @Override
        public T a(final Class<?> clazz) {
            final Iterator<Class<?>> iterator = bd.a(clazz).iterator();
            while (iterator.hasNext()) {
                final Object value = bd.this.a.get(iterator.next());
                if (value != null) {
                    return (T)value;
                }
            }
            return null;
        }
    }
}
