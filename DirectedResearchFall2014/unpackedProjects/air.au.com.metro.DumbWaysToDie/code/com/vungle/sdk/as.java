package com.vungle.sdk;

public final class as extends aw
{
    @Override
    public final aq<?> a(final String s, final String str, final ClassLoader classLoader, final boolean b) {
        final aq<?> aq = this.a(str + "$$InjectAdapter", classLoader);
        if (aq != null) {
            return aq;
        }
        final Class<?> a = this.a(classLoader, str);
        if (a.equals(Void.class)) {
            throw new IllegalStateException(String.format("Could not load class %s needed for binding %s", str, s));
        }
        if (a.isInterface()) {
            return null;
        }
        return be.a(a, b);
    }
    
    @Override
    public final <T> ay<T> a(final Class<? extends T> obj, final T g) {
        final ay<T> ay = this.a(obj.getName() + "$$ModuleAdapter", obj.getClassLoader());
        if (ay == null) {
            throw new IllegalStateException("Module adapter for " + obj + " could not be loaded. Please ensure that code generation was run for this module.");
        }
        if (g != null) {
            ay.g = g;
            return ay;
        }
        throw new UnsupportedOperationException("No no-args constructor on " + ay.getClass().getName());
    }
    
    @Override
    public final bb a(final Class<?> clazz) {
        final bb bb = this.a(clazz.getName() + "$$StaticInjection", clazz.getClassLoader());
        if (bb != null) {
            return bb;
        }
        return bf.a(clazz);
    }
}
