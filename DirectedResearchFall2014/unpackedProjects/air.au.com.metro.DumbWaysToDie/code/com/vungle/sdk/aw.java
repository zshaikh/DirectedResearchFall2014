package com.vungle.sdk;

import java.lang.reflect.*;

public abstract class aw
{
    private final ax<ClassLoader, ax<String, Class<?>>> a;
    
    public aw() {
        super();
        this.a = new ax<ClassLoader, ax<String, Class<?>>>() {};
    }
    
    public abstract aq<?> a(final String p0, final String p1, final ClassLoader p2, final boolean p3);
    
    public abstract <T> ay<T> a(final Class<? extends T> p0, final T p1);
    
    public abstract bb a(final Class<?> p0);
    
    protected final Class<?> a(final ClassLoader classLoader, final String s) {
        ClassLoader systemClassLoader;
        if (classLoader != null) {
            systemClassLoader = classLoader;
        }
        else {
            systemClassLoader = ClassLoader.getSystemClassLoader();
        }
        return this.a.b(systemClassLoader).b(s);
    }
    
    protected final <T> T a(final String s, final ClassLoader classLoader) {
        try {
            final Class<?> a = this.a(classLoader, s);
            if (a == Void.class) {
                return null;
            }
            final Constructor<Void> declaredConstructor = a.getDeclaredConstructor((Class<?>[])new Class[0]);
            declaredConstructor.setAccessible(true);
            return (T)declaredConstructor.newInstance(new Object[0]);
        }
        catch (NoSuchMethodException cause) {
            throw new RuntimeException("No default constructor found on " + s, cause);
        }
        catch (InstantiationException cause2) {
            throw new RuntimeException("Failed to initialize " + s, cause2);
        }
        catch (IllegalAccessException cause3) {
            throw new RuntimeException("Failed to initialize " + s, cause3);
        }
        catch (InvocationTargetException ex) {
            throw new RuntimeException("Error while initializing " + s, ex.getCause());
        }
    }
}
