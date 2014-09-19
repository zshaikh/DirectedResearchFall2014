package com.vungle.sdk;

import java.util.*;
import java.lang.reflect.*;

public abstract class ap
{
    public abstract <T> T a(final Class<T> p0);
    
    public abstract <T> T a(final T p0);
    
    public abstract void a();
    
    public static final class a extends ap
    {
        public final av a;
        private final a b;
        private final Map<Class<?>, bb> c;
        private final Map<String, Class<?>> d;
        private final aw e;
        
        public a(final av a, final aw e, final Map<Class<?>, bb> c, final Map<String, Class<?>> d) {
            super();
            if (a == null) {
                throw new NullPointerException("linker");
            }
            if (e == null) {
                throw new NullPointerException("plugin");
            }
            if (c == null) {
                throw new NullPointerException("staticInjections");
            }
            if (d == null) {
                throw new NullPointerException("injectableTypes");
            }
            this.b = null;
            this.a = a;
            this.e = e;
            this.c = c;
            this.d = d;
        }
        
        private aq<?> a(final ClassLoader classLoader, final String str, final String s) {
            Object o = null;
            for (a b = this; b != null; b = b.b) {
                o = b.d.get(str);
                if (o != null) {
                    break;
                }
            }
            if (o == null) {
                throw new IllegalArgumentException("No inject registered for " + str + ". You must explicitly add it to the 'injects' option in one of your modules.");
            }
            while (true) {
                final aq<?> a;
                synchronized (this.a) {
                    a = this.a.a(s, o, classLoader, false);
                    if (a == null || !a.b()) {
                        this.a.a();
                        return this.a.a(s, o, classLoader, false);
                    }
                }
                return a;
            }
        }
        
        private void b() {
            for (final Map.Entry<Class<?>, bb> entry : this.c.entrySet()) {
                bb a = entry.getValue();
                if (a == null) {
                    a = this.e.a(entry.getKey());
                    entry.setValue(a);
                }
                a.a(this.a);
            }
        }
        
        @Override
        public final <T> T a(final Class<T> clazz) {
            final String a = at.a((Type)clazz);
            String a2;
            if (clazz.isInterface()) {
                a2 = a;
            }
            else {
                a2 = at.a(clazz);
            }
            return (T)this.a(clazz.getClassLoader(), a2, a).get();
        }
        
        @Override
        public final <T> T a(final T t) {
            final String a = at.a(t.getClass());
            this.a(t.getClass().getClassLoader(), a, a).a(t);
            return t;
        }
        
        @Override
        public final void a() {
            synchronized (this.a) {
                this.b();
                this.a.a();
                this.b();
                // monitorexit(this.a)
                final Iterator<Map.Entry<Class<?>, bb>> iterator = this.c.entrySet().iterator();
                while (iterator.hasNext()) {
                    iterator.next().getValue().a();
                }
            }
        }
    }
}
