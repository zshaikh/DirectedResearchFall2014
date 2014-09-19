package com.vungle.sdk;

import java.util.*;

class ax<K, V>
{
    private final LinkedHashMap<K, V> a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    
    public ax() {
        super();
        this.c = Integer.MAX_VALUE;
        this.a = new LinkedHashMap<K, V>(0, 0.75f, true);
    }
    
    private void a(final int n) {
        while (true) {
            synchronized (this) {
                if (this.b < 0 || (this.a.isEmpty() && this.b != 0)) {
                    throw new IllegalStateException(this.getClass().getName() + ".sizeOf() is reporting inconsistent results!");
                }
            }
            if (this.b <= n || this.a.isEmpty()) {
                break;
            }
            final Map.Entry<Object, Object> entry = this.a.entrySet().iterator().next();
            final Object key = entry.getKey();
            entry.getValue();
            this.a.remove(key);
            --this.b;
            ++this.e;
        }
        // monitorexit(this)
    }
    // monitorexit(this)
    
    protected V a(final K k) {
        return null;
    }
    
    public final V b(final K key) {
        if (key == null) {
            throw new NullPointerException("key == null");
        }
        final V a;
        synchronized (this) {
            final V value = this.a.get(key);
            if (value != null) {
                ++this.f;
                return value;
            }
            ++this.g;
            // monitorexit(this)
            a = this.a(key);
            if (a == null) {
                return null;
            }
        }
        synchronized (this) {
            ++this.d;
            final V put = this.a.put(key, a);
            if (put != null) {
                this.a.put(key, put);
            }
            else {
                ++this.b;
            }
            // monitorexit(this)
            if (put != null) {
                return put;
            }
        }
        this.a(this.c);
        return a;
    }
    
    @Override
    public final String toString() {
        synchronized (this) {
            final int n = this.f + this.g;
            int i;
            if (n != 0) {
                i = 100 * this.f / n;
            }
            else {
                i = 0;
            }
            return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", this.c, this.f, this.g, i);
        }
    }
}
