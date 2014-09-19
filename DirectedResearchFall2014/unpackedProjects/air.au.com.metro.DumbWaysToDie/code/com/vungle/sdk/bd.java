package com.vungle.sdk;

import java.util.*;

public final class bd<K, V> extends LinkedHashMap<K, V>
{
    @Override
    public final V put(final K k, final V v) {
        final V put = super.put(k, v);
        if (put != null) {
            super.put(k, put);
            throw new IllegalArgumentException("Duplicate:\n    " + put + "\n    " + v);
        }
        return null;
    }
    
    @Override
    public final void putAll(final Map<? extends K, ? extends V> map) {
        for (final Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            this.put(entry.getKey(), (V)entry.getValue());
        }
    }
}
