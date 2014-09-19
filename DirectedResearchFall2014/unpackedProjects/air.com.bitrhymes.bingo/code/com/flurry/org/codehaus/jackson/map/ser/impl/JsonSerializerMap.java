package com.flurry.org.codehaus.jackson.map.ser.impl;

import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;

public class JsonSerializerMap
{
    private final Bucket[] _buckets;
    private final int _size;
    
    public JsonSerializerMap(final Map<SerializerCache.TypeKey, JsonSerializer<Object>> map) {
        super();
        final int size = findSize(map.size());
        this._size = size;
        final int n = size - 1;
        final Bucket[] buckets = new Bucket[size];
        for (final Map.Entry<SerializerCache.TypeKey, JsonSerializer<Object>> entry : map.entrySet()) {
            final SerializerCache.TypeKey typeKey = entry.getKey();
            final int n2 = n & typeKey.hashCode();
            buckets[n2] = new Bucket(buckets[n2], typeKey, entry.getValue());
        }
        this._buckets = buckets;
    }
    
    private static final int findSize(final int n) {
        int n2;
        if (n <= 64) {
            n2 = n + n;
        }
        else {
            n2 = n + (n >> 2);
        }
        int i;
        for (i = 8; i < n2; i += i) {}
        return i;
    }
    
    public JsonSerializer<Object> find(final SerializerCache.TypeKey typeKey) {
        Bucket next = this._buckets[typeKey.hashCode() & this._buckets.length - 1];
        if (next == null) {
            return null;
        }
        if (typeKey.equals(next.key)) {
            return next.value;
        }
        do {
            next = next.next;
            if (next != null) {
                continue;
            }
            return null;
        } while (!typeKey.equals(next.key));
        return next.value;
    }
    
    public int size() {
        return this._size;
    }
    
    private static final class Bucket
    {
        public final SerializerCache.TypeKey key;
        public final Bucket next;
        public final JsonSerializer<Object> value;
        
        public Bucket(final Bucket next, final SerializerCache.TypeKey key, final JsonSerializer<Object> value) {
            super();
            this.next = next;
            this.key = key;
            this.value = value;
        }
    }
}
