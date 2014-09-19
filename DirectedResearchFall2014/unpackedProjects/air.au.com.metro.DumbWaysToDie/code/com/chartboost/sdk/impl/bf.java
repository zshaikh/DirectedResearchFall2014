package com.chartboost.sdk.impl;

import java.util.*;

abstract class bf<K, V> extends ba<K, V, Map<K, V>>
{
    protected bf(final Map<? extends K, ? extends V> map, final h.a a) {
        super(map, a);
    }
    
    public static <K, V> a<K, V> b() {
        return new a<K, V>();
    }
    
    public static <K, V> bf<K, V> c() {
        return b().a();
    }
    
    public static class a<K, V>
    {
        private h.a a;
        private final Map<K, V> b;
        
        a() {
            super();
            this.a = h.a.a;
            this.b = new HashMap<K, V>();
        }
        
        public bf<K, V> a() {
            return new b<K, V>((Map<? extends K, ? extends V>)this.b, this.a);
        }
    }
    
    static class b<K, V> extends bf<K, V>
    {
        b(final Map<? extends K, ? extends V> map, final h.a a) {
            super(map, a);
        }
        
        public <N extends Map<? extends K, ? extends V>> Map<K, V> a(final N m) {
            return new HashMap<K, V>(m);
        }
    }
}
