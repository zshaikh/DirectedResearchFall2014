package com.vungle.sdk;

import java.util.*;
import java.lang.reflect.*;
import javax.inject.*;
import java.lang.annotation.*;

public final class bf extends bb
{
    private final ClassLoader a;
    private final Field[] b;
    private aq<?>[] c;
    
    private bf(final ClassLoader a, final Field[] b) {
        super();
        this.b = b;
        this.a = a;
    }
    
    public static bb a(final Class<?> clazz) {
        final ArrayList<Field> list = new ArrayList<Field>();
        for (final Field field : clazz.getDeclaredFields()) {
            if (Modifier.isStatic(field.getModifiers()) && field.isAnnotationPresent((Class<? extends Annotation>)Inject.class)) {
                field.setAccessible(true);
                list.add(field);
            }
        }
        if (list.isEmpty()) {
            throw new IllegalArgumentException("No static injections: " + clazz.getName());
        }
        return new bf(clazz.getClassLoader(), list.toArray(new Field[list.size()]));
    }
    
    @Override
    public final void a() {
        int i = 0;
        try {
            while (i < this.b.length) {
                this.b[i].set(null, this.c[i].get());
                ++i;
            }
        }
        catch (IllegalAccessException detailMessage) {
            throw new AssertionError((Object)detailMessage);
        }
    }
    
    @Override
    public final void a(final av av) {
        this.c = (aq<?>[])new aq[this.b.length];
        for (int i = 0; i < this.b.length; ++i) {
            final Field field = this.b[i];
            this.c[i] = av.a(at.a(field.getGenericType(), field.getAnnotations(), field), field, this.a);
        }
    }
}
