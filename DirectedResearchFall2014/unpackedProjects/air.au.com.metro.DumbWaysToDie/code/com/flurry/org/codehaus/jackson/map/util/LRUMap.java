package com.flurry.org.codehaus.jackson.map.util;

import java.util.*;

public class LRUMap<K, V> extends LinkedHashMap<K, V>
{
    protected final int _maxEntries;
    
    public LRUMap(final int initialCapacity, final int maxEntries) {
        super(initialCapacity, 0.8f, true);
        this._maxEntries = maxEntries;
    }
    
    @Override
    protected boolean removeEldestEntry(final Map.Entry<K, V> entry) {
        return this.size() > this._maxEntries;
    }
}
