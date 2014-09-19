package com.google.ads.util;

import java.util.*;
import java.lang.ref.*;

public abstract class i
{
    private static final Object a;
    private static int b;
    private static HashMap<Class<?>, Integer> c;
    private final ArrayList<a<?>> d;
    public final int u;
    
    static {
        a = new Object();
        i.b = 0;
        i.c = new HashMap<Class<?>, Integer>();
    }
    
    public i() {
        super();
        this.d = new ArrayList<a<?>>();
        synchronized (i.a) {
            final int b = i.b;
            i.b = b + 1;
            this.u = b;
            final Integer n = i.c.get(this.getClass());
            if (n == null) {
                i.c.put(this.getClass(), 1);
            }
            else {
                i.c.put(this.getClass(), 1 + n);
            }
            // monitorexit(i.a)
            com.google.ads.util.b.d("State created: " + this.toString());
        }
    }
    
    private void a(final a<?> e) {
        this.d.add(e);
    }
    
    @Override
    protected void finalize() throws Throwable {
        synchronized (i.a) {
            i.c.put(this.getClass(), i.c.get(this.getClass()) - 1);
            // monitorexit(i.a)
            super.finalize();
        }
    }
    
    @Override
    public String toString() {
        return this.getClass().getSimpleName() + "[" + this.u + "]";
    }
    
    public abstract class a<T>
    {
        protected T a;
        protected final String b;
        
        private a(final i i, final String s) {
            this(s, (Object)null);
        }
        
        private a(final String b, final T a) {
            super();
            this.b = b;
            i.this.a(this);
            this.a = a;
        }
        
        @Override
        public String toString() {
            return i.this.toString() + "." + this.b + " = " + this.a;
        }
    }
    
    public final class b<T> extends a<T>
    {
        public b(final String s, final T t) {
            super(s, (Object)t);
        }
        
        public T a() {
            return this.a;
        }
        
        @Override
        public String toString() {
            return super.toString() + " (!)";
        }
    }
    
    public final class c<T> extends a<T>
    {
        private boolean e;
        
        public c(final String s) {
            super(s);
            this.e = false;
            this.e = false;
        }
        
        public c(final String s, final T t) {
            super(s, (Object)t);
            this.e = false;
            this.e = false;
        }
        
        public T a() {
            synchronized (this) {
                return this.a;
            }
        }
        
        public void a(final T t) {
            synchronized (this) {
                b.d("State changed - " + i.this.toString() + "." + this.b + ": '" + t + "' <-- '" + this.a + "'.");
                this.a = t;
                this.e = true;
            }
        }
        
        @Override
        public String toString() {
            final StringBuilder append = new StringBuilder().append(super.toString());
            String str;
            if (this.e) {
                str = " (*)";
            }
            else {
                str = "";
            }
            return append.append(str).toString();
        }
    }
    
    public final class d<T> extends a<WeakReference<T>>
    {
        public d(final String s, final T referent) {
            super(s, (Object)new WeakReference(referent));
        }
        
        public T a() {
            return (T)((WeakReference)this.a).get();
        }
        
        @Override
        public String toString() {
            return i.this.toString() + "." + this.b + " = " + this.a() + " (?)";
        }
    }
}
