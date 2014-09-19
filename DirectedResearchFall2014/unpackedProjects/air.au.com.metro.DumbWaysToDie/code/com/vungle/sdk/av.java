package com.vungle.sdk;

import java.util.*;

public final class av
{
    private static final Object a;
    private final av b;
    private final Queue<aq<?>> c;
    private boolean d;
    private final List<String> e;
    private final Map<String, aq<?>> f;
    private final aw g;
    private final b h;
    
    static {
        a = new Object();
    }
    
    public av(final aw g, final b h) {
        super();
        this.c = new LinkedList<aq<?>>();
        this.d = true;
        this.e = new ArrayList<String>();
        this.f = new HashMap<String, aq<?>>();
        if (g == null) {
            throw new NullPointerException("plugin");
        }
        if (h == null) {
            throw new NullPointerException("errorHandler");
        }
        this.b = null;
        this.g = g;
        this.h = h;
    }
    
    private static <T> aq<T> a(final aq<T> aq) {
        if (!aq.c()) {
            return aq;
        }
        if (aq instanceof c) {
            throw new AssertionError();
        }
        return new c<T>(aq, (byte)0);
    }
    
    private static <K, V> void a(final Map<K, V> map, final K k, final V v) {
        final V put = map.put(k, v);
        if (put != null) {
            map.put(k, put);
        }
    }
    
    private void c() {
        if (!Thread.holdsLock(this)) {
            throw new AssertionError();
        }
    }
    
    public final aq<?> a(final String s, final Object o, final ClassLoader classLoader) {
        return this.a(s, o, classLoader, true);
    }
    
    public final aq<?> a(final String s, final Object o, final ClassLoader classLoader, final boolean b) {
        this.c();
        av b2 = this;
        aq<?> aq = null;
        while (b2 != null) {
            aq = b2.f.get(s);
            if (aq != null) {
                if (b2 != this && !aq.b()) {
                    throw new AssertionError();
                }
                break;
            }
            else {
                b2 = b2.b;
            }
        }
        if (aq == null) {
            final a a = new a(s, classLoader, o, b, (byte)0);
            a.c(true);
            a.d(true);
            this.c.add(a);
            this.d = false;
            return null;
        }
        if (!aq.b()) {
            this.c.add(aq);
        }
        aq.c(true);
        aq.d(true);
        return aq;
    }
    
    public final void a() {
        this.c();
    Label_0104_Outer:
        while (true) {
            final aq<?> aq = this.c.poll();
            if (aq == null) {
                break;
            }
            if (aq instanceof a) {
                final a a = (a)aq;
                final String f = a.f;
                final boolean g = a.g;
                if (this.f.containsKey(f)) {
                    continue;
                }
                Object d;
                ClassLoader e;
                String a2;
                Object a3;
                String d2;
                aq<Object> a4;
                String b;
                Block_15_Outer:Block_12_Outer:
                while (true) {
                    Label_0344: {
                        try {
                            d = aq.d;
                            e = a.e;
                            a2 = at.a(f);
                            if (a2 == null) {
                                break Block_15_Outer;
                            }
                            a3 = new ar<Object>(f, d, e, a2);
                            ((aq)a3).c(aq.f());
                            ((aq)a3).d(aq.g());
                            if (!f.equals(((aq)a3).b) && !f.equals(((aq)a3).c)) {
                                throw new IllegalStateException("Unable to create binding for " + f);
                            }
                            break Label_0344;
                        }
                        catch (Exception cause) {
                            if (cause.getMessage() != null) {
                                this.e.add(cause.getMessage() + " required by " + aq.d);
                                this.f.put(f, com.vungle.sdk.aq.a);
                                continue Label_0104_Outer;
                            }
                            if (cause instanceof RuntimeException) {
                                throw (RuntimeException)cause;
                            }
                            throw new RuntimeException(cause);
                            Label_0277: {
                                d2 = at.d(f);
                            }
                            // iftrue(Label_0319:, d2 == null || at.c(f))
                            // iftrue(Label_0004:, a4.c == null)
                            // iftrue(Label_0385:, a4.b == null)
                            // iftrue(Label_0277:, b == null)
                            Block_14: {
                                break Block_14;
                                Label_0319:
                                throw new IllegalArgumentException("No binding for " + f);
                                while (true) {
                                    while (true) {
                                        a(this.f, a4.b, a4);
                                        while (true) {
                                            Label_0385: {
                                                break Label_0385;
                                                a3 = new au(f, d, e, b);
                                                continue Block_15_Outer;
                                                a(this.f, a4.c, a4);
                                                continue Label_0104_Outer;
                                            }
                                            continue;
                                        }
                                        a4 = a((aq<Object>)a3);
                                        this.c.add(a4);
                                        continue Block_12_Outer;
                                    }
                                    b = at.b(f);
                                    continue;
                                }
                            }
                            a3 = this.g.a(f, d2, e, g);
                            // iftrue(Label_0104:, a3 != null)
                            throw new IllegalArgumentException("No binding for " + f);
                        }
                    }
                    break;
                }
            }
            this.d = true;
            aq.a(this);
            if (this.d) {
                aq.a();
            }
            else {
                this.c.add(aq);
            }
        }
        try {
            this.h.a(this.e);
        }
        finally {
            this.e.clear();
        }
    }
    
    public final void a(final Map<String, ? extends aq<?>> map) {
        for (final Map.Entry<String, ? extends aq<?>> entry : map.entrySet()) {
            this.f.put(entry.getKey(), a((aq<Object>)entry.getValue()));
        }
    }
    
    static final class a extends aq<Object>
    {
        final ClassLoader e;
        final String f;
        final boolean g;
        
        private a(final String f, final ClassLoader e, final Object o, final boolean g) {
            super(null, null, false, o);
            this.f = f;
            this.e = e;
            this.g = g;
        }
        
        @Override
        public final void a(final Object o) {
            throw new UnsupportedOperationException("Deferred bindings must resolve first.");
        }
        
        @Override
        public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
            throw new UnsupportedOperationException("Deferred bindings must resolve first.");
        }
    }
    
    public interface b
    {
        public static final b a = new b() {
            @Override
            public final void a(List<String> list) {
            }
        };
        
        void a(List<String> p0);
    }
    
    static final class c<T> extends aq<T>
    {
        private final aq<T> e;
        private volatile Object f;
        
        private c(final aq<T> e) {
            super(e.b, e.c, true, e.d);
            this.f = av.a;
            this.e = e;
        }
        
        protected final void a() {
            this.e.a();
        }
        
        @Override
        public final void a(final av av) {
            this.e.a(av);
        }
        
        @Override
        public final void a(final T t) {
            this.e.a(t);
        }
        
        @Override
        public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
            this.e.a(set, set2);
        }
        
        @Override
        public final void a(final boolean b) {
            this.e.a(b);
        }
        
        @Override
        public final void b(final boolean b) {
            this.e.b(b);
        }
        
        @Override
        public final boolean b() {
            return this.e.b();
        }
        
        @Override
        public final void c(final boolean b) {
            this.e.c(true);
        }
        
        protected final boolean c() {
            return true;
        }
        
        @Override
        public final void d(final boolean b) {
            this.e.d(b);
        }
        
        @Override
        public final boolean d() {
            return this.e.d();
        }
        
        @Override
        public final boolean e() {
            return this.e.e();
        }
        
        @Override
        public final boolean f() {
            return this.e.f();
        }
        
        @Override
        public final boolean g() {
            return this.e.g();
        }
        
        @Override
        public final T get() {
            Label_0035: {
                if (this.f != av.a) {
                    break Label_0035;
                }
                synchronized (this) {
                    if (this.f == av.a) {
                        this.f = this.e.get();
                    }
                    // monitorexit(this)
                    return (T)this.f;
                }
            }
        }
        
        @Override
        public final String toString() {
            return "@Singleton/" + this.e.toString();
        }
    }
}
