package com.vungle.sdk;

import java.lang.annotation.*;
import javax.inject.*;
import java.util.*;
import java.lang.reflect.*;

public final class be<T> extends aq<T>
{
    private final Field[] e;
    private final ClassLoader f;
    private final Constructor<T> g;
    private final Class<?> h;
    private final String[] i;
    private final aq<?>[] j;
    private final aq<?>[] k;
    private aq<? super T> l;
    
    private be(final String s, final String s2, final boolean b, final Class<?> clazz, final Field[] e, final Constructor<T> g, final int n, final Class<?> h, final String[] i) {
        super(s, s2, b, clazz);
        this.g = g;
        this.e = e;
        this.h = h;
        this.i = i;
        this.k = (aq<?>[])new aq[n];
        this.j = (aq<?>[])new aq[e.length];
        this.f = clazz.getClassLoader();
    }
    
    public static <T> aq<T> a(final Class<T> clazz, final boolean b) {
        final boolean annotationPresent = clazz.isAnnotationPresent((Class<? extends Annotation>)Singleton.class);
        final ArrayList<String> list = new ArrayList<String>();
        final ArrayList<Field> list2 = new ArrayList<Field>();
        for (Class<? super Object> superclass = (Class<? super Object>)clazz; superclass != Object.class; superclass = superclass.getSuperclass()) {
            for (final Field obj : superclass.getDeclaredFields()) {
                if (obj.isAnnotationPresent((Class<? extends Annotation>)Inject.class) && !Modifier.isStatic(obj.getModifiers())) {
                    if ((0x2 & obj.getModifiers()) != 0x0) {
                        throw new IllegalStateException("Can't inject private field: " + obj);
                    }
                    obj.setAccessible(true);
                    list2.add(obj);
                    list.add(at.a(obj.getGenericType(), obj.getAnnotations(), obj));
                }
            }
        }
        final Constructor<?>[] array = clazz.getDeclaredConstructors();
        final int length2 = array.length;
        int j = 0;
        Constructor<?> declaredConstructor = null;
        while (j < length2) {
            final Constructor<?> constructor = array[j];
            if (constructor.isAnnotationPresent((Class<? extends Annotation>)Inject.class)) {
                if (declaredConstructor != null) {
                    throw new IllegalArgumentException("Too many injectable constructors on " + clazz.getName());
                }
                declaredConstructor = constructor;
            }
            ++j;
        }
    Label_0288:
        while (true) {
            if (declaredConstructor != null) {
                break Label_0288;
            }
            Label_0328: {
                if (list2.isEmpty()) {
                    break Label_0328;
                }
                while (true) {
                    while (true) {
                        Label_0587: {
                            try {
                                declaredConstructor = clazz.getDeclaredConstructor((Class<?>[])new Class[0]);
                                if (declaredConstructor != null) {
                                    if ((0x2 & declaredConstructor.getModifiers()) != 0x0) {
                                        throw new IllegalStateException("Can't inject private constructor: " + declaredConstructor);
                                    }
                                    final String a = at.a((Type)clazz);
                                    declaredConstructor.setAccessible(true);
                                    final Type[] genericParameterTypes = declaredConstructor.getGenericParameterTypes();
                                    final int length3 = genericParameterTypes.length;
                                    if (length3 != 0) {
                                        final Annotation[][] parameterAnnotations = declaredConstructor.getParameterAnnotations();
                                        for (int k = 0; k < genericParameterTypes.length; ++k) {
                                            list.add(at.a(genericParameterTypes[k], parameterAnnotations[k], declaredConstructor));
                                        }
                                    }
                                    final String s = a;
                                    final int n = length3;
                                    final Class<? super Object> superclass2 = clazz.getSuperclass();
                                    Label_0575: {
                                        if (superclass2 == null) {
                                            break Label_0575;
                                        }
                                        if (!at.e(superclass2.getName())) {
                                            list.add(at.a(superclass2));
                                            break Label_0575;
                                        }
                                        final Class<?> clazz2 = null;
                                        return new be<T>(s, at.a(clazz), annotationPresent, clazz, list2.toArray(new Field[list2.size()]), (Constructor<Object>)declaredConstructor, n, clazz2, list.toArray(new String[list.size()]));
                                    }
                                    final Class<?> clazz2 = superclass2;
                                    return new be<T>(s, at.a(clazz), annotationPresent, clazz, list2.toArray(new Field[list2.size()]), (Constructor<Object>)declaredConstructor, n, clazz2, list.toArray(new String[list.size()]));
                                }
                                else {
                                    if (annotationPresent) {
                                        throw new IllegalArgumentException("No injectable constructor on @Singleton " + clazz.getName());
                                    }
                                    break Label_0587;
                                }
                                throw new IllegalArgumentException("No injectable members on " + clazz.getName() + ". Do you want to add an injectable constructor?");
                                // iftrue(Label_0288:, !b)
                                throw new IllegalArgumentException("No injectable members on " + clazz.getName() + ". Do you want to add an injectable constructor?");
                            }
                            catch (NoSuchMethodException ex) {
                                continue Label_0288;
                            }
                        }
                        final String s = null;
                        final int n = 0;
                        continue;
                    }
                }
            }
            break;
        }
    }
    
    @Override
    public final void a(final av av) {
        int i = 0;
        int n = 0;
        while (i < this.e.length) {
            if (this.j[i] == null) {
                this.j[i] = av.a(this.i[n], this.e[i], this.f);
            }
            ++n;
            ++i;
        }
        if (this.g != null) {
            for (int j = 0; j < this.k.length; ++j) {
                if (this.k[j] == null) {
                    this.k[j] = av.a(this.i[n], this.g, this.f);
                }
                ++n;
            }
        }
        final int n2 = n;
        if (this.h != null && this.l == null) {
            this.l = (aq<? super T>)av.a(this.i[n2], this.c, this.f, false);
        }
    }
    
    @Override
    public final void a(final T obj) {
        int i = 0;
        try {
            while (i < this.e.length) {
                this.e[i].set(obj, this.j[i].get());
                ++i;
            }
            if (this.l != null) {
                this.l.a((Object)obj);
            }
        }
        catch (IllegalAccessException detailMessage) {
            throw new AssertionError((Object)detailMessage);
        }
    }
    
    @Override
    public final void a(final Set<aq<?>> c, final Set<aq<?>> c2) {
        if (this.k != null) {
            Collections.addAll(c, this.k);
        }
        Collections.addAll(c2, this.j);
        if (this.l != null) {
            c2.add(this.l);
        }
    }
    
    @Override
    public final T get() {
        if (this.g == null) {
            throw new UnsupportedOperationException();
        }
        final Object[] initargs = new Object[this.k.length];
        for (int i = 0; i < this.k.length; ++i) {
            initargs[i] = this.k[i].get();
        }
        try {
            final T instance = this.g.newInstance(initargs);
            this.a(instance);
            return instance;
        }
        catch (InvocationTargetException ex) {
            final Throwable cause = ex.getCause();
            RuntimeException ex2;
            if (cause instanceof RuntimeException) {
                ex2 = (RuntimeException)cause;
            }
            else {
                ex2 = new RuntimeException(cause);
            }
            throw ex2;
        }
        catch (IllegalAccessException detailMessage) {
            throw new AssertionError((Object)detailMessage);
        }
        catch (InstantiationException cause2) {
            throw new RuntimeException(cause2);
        }
    }
    
    @Override
    public final String toString() {
        if (this.b != null) {
            return this.b;
        }
        return this.c;
    }
}
