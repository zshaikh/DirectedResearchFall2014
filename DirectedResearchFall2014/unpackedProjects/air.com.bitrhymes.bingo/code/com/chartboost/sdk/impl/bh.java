package com.chartboost.sdk.impl;

import java.util.*;

abstract class bh<K, V> extends bc<K, V, Map<K, V>>
{
    protected bh(final Map<? extends K, ? extends V> map, final h.a a) {
        super(map, a);
    }
    
    public static <K, V> a<K, V> b() {
        return new a<K, V>();
    }
    
    public static <K, V> bh<K, V> c() {
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
        
        public bh<K, V> a() {
            return new b<K, V>((Map<? extends K, ? extends V>)this.b, this.a);
        }
    }
    
    static class b<K, V> extends bh<K, V>
    {
        b(final Map<? extends K, ? extends V> map, final h.a a) {
            super(map, a);
        }
        
        public <N extends Map<? extends K, ? extends V>> Map<K, V> a(final N m) {
            return new HashMap<K, V>(m);
        }
    }
}
