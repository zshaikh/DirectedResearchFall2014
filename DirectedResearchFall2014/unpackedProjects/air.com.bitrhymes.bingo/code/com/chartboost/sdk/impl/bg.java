package com.chartboost.sdk.impl;

import java.util.concurrent.*;
import java.util.*;

final class bg<K, V> implements bi<K, V>, Map<K, V>
{
    private final ConcurrentMap<K, V> a;
    private final bi<K, V> b;
    
    bg(final ConcurrentMap<K, V> concurrentMap, final bi<K, V> bi) {
        super();
        this.a = bd.a("map", concurrentMap);
        this.b = bd.a("function", bi);
    }
    
    public static <K, V> Map<K, V> a(final bi<K, V> bi) {
        return new bg<K, V>((ConcurrentMap<K, V>)bh.c(), bi);
    }
    
    @Override
    public V a(final K k) {
        return this.get(k);
    }
    
    @Override
    public void clear() {
        this.a.clear();
    }
    
    @Override
    public boolean containsKey(final Object o) {
        return this.a.containsKey(o);
    }
    
    @Override
    public boolean containsValue(final Object o) {
        return this.a.containsValue(o);
    }
    
    @Override
    public Set<Entry<K, V>> entrySet() {
        return this.a.entrySet();
    }
    
    @Override
    public boolean equals(final Object obj) {
        return this.a.equals(obj);
    }
    
    @Override
    public V get(final Object o) {
        while (true) {
            final V value = this.a.get(o);
            if (value != null) {
                return value;
            }
            final V a = this.b.a((K)o);
            if (a == null) {
                return null;
            }
            this.a.putIfAbsent((K)o, a);
        }
    }
    
    @Override
    public int hashCode() {
        return this.a.hashCode();
    }
    
    @Override
    public boolean isEmpty() {
        return this.a.isEmpty();
    }
    
    @Override
    public Set<K> keySet() {
        return this.a.keySet();
    }
    
    @Override
    public V put(final K k, final V v) {
        return this.a.put(k, v);
    }
    
    @Override
    public void putAll(final Map<? extends K, ? extends V> map) {
        this.a.putAll((Map<?, ?>)map);
    }
    
    @Override
    public V remove(final Object o) {
        return this.a.remove(o);
    }
    
    @Override
    public int size() {
        return this.a.size();
    }
    
    @Override
    public Collection<V> values() {
        return this.a.values();
    }
}
