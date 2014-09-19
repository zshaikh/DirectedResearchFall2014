package com.chartboost.sdk.impl;

import java.util.concurrent.*;
import java.util.*;

class bc
{
    private static final ConcurrentMap<Class<?>, List<Class<?>>> a;
    
    static {
        a = bf.c();
    }
    
    public static <T> List<Class<?>> a(final Class<T> clazz) {
        final ConcurrentMap<Class<?>, List<Class<?>>> a = a();
        List<Class<?>> list;
        while (true) {
            list = a.get(clazz);
            if (list != null) {
                break;
            }
            a.putIfAbsent(clazz, b(clazz));
        }
        return list;
    }
    
    private static ConcurrentMap<Class<?>, List<Class<?>>> a() {
        return bc.a;
    }
    
    private static <T> void a(final Class<T> clazz, final List<Class<?>> list) {
        if (clazz != null && clazz != Object.class) {
            final Class[] interfaces = clazz.getInterfaces();
            for (int i = interfaces.length - 1; i >= 0; --i) {
                a(interfaces[i], list);
            }
            a((Class<? super T>)clazz.getSuperclass(), list);
            if (!list.contains(clazz)) {
                list.add(clazz);
            }
        }
    }
    
    private static List<Class<?>> b(final Class<?> clazz) {
        final ArrayList<Class<?>> list = new ArrayList<Class<?>>();
        list.add(Object.class);
        a(clazz, list);
        Collections.reverse(list);
        return (List<Class<?>>)Collections.unmodifiableList((List<?>)new ArrayList<Object>(list));
    }
}
