package com.flurry.org.apache.avro.util;

import java.util.*;
import java.lang.ref.*;

public class WeakIdentityHashMap<K, V> implements Map<K, V>
{
    private Map<IdentityWeakReference, V> backingStore;
    private final ReferenceQueue<K> queue;
    
    public WeakIdentityHashMap() {
        super();
        this.queue = new ReferenceQueue<K>();
        this.backingStore = new HashMap<IdentityWeakReference, V>();
    }
    
    private void reap() {
        synchronized (this) {
            for (Reference<? extends K> reference = this.queue.poll(); reference != null; reference = this.queue.poll()) {
                this.backingStore.remove(reference);
            }
        }
    }
    
    @Override
    public void clear() {
        this.backingStore.clear();
        this.reap();
    }
    
    @Override
    public boolean containsKey(final Object o) {
        this.reap();
        return this.backingStore.containsKey(new IdentityWeakReference(o));
    }
    
    @Override
    public boolean containsValue(final Object o) {
        this.reap();
        return this.backingStore.containsValue(o);
    }
    
    @Override
    public Set<Entry<K, V>> entrySet() {
        this.reap();
        final HashSet<Entry<K, V>> s = new HashSet<Entry<K, V>>();
        for (final Entry<IdentityWeakReference, V> entry : this.backingStore.entrySet()) {
            s.add(new Entry<K, V>() {
                final /* synthetic */ Object val$key = entry.getKey().get();
                final /* synthetic */ Object val$value = entry.getValue();
                
                @Override
                public K getKey() {
                    return (K)this.val$key;
                }
                
                @Override
                public V getValue() {
                    return (V)this.val$value;
                }
                
                @Override
                public V setValue(final V v) {
                    throw new UnsupportedOperationException();
                }
            });
        }
        return (Set<Entry<K, V>>)Collections.unmodifiableSet((Set<?>)s);
    }
    
    @Override
    public boolean equals(final Object o) {
        return this.backingStore.equals(((WeakIdentityHashMap)o).backingStore);
    }
    
    @Override
    public V get(final Object o) {
        this.reap();
        return this.backingStore.get(new IdentityWeakReference(o));
    }
    
    @Override
    public int hashCode() {
        this.reap();
        return this.backingStore.hashCode();
    }
    
    @Override
    public boolean isEmpty() {
        this.reap();
        return this.backingStore.isEmpty();
    }
    
    @Override
    public Set<K> keySet() {
        this.reap();
        final HashSet<K> s = new HashSet<K>();
        final Iterator<IdentityWeakReference> iterator = this.backingStore.keySet().iterator();
        while (iterator.hasNext()) {
            s.add(iterator.next().get());
        }
        return Collections.unmodifiableSet((Set<? extends K>)s);
    }
    
    @Override
    public V put(final K k, final V v) {
        this.reap();
        return this.backingStore.put(new IdentityWeakReference(k), v);
    }
    
    @Override
    public void putAll(final Map map) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public V remove(final Object o) {
        this.reap();
        return this.backingStore.remove(new IdentityWeakReference(o));
    }
    
    @Override
    public int size() {
        this.reap();
        return this.backingStore.size();
    }
    
    @Override
    public Collection<V> values() {
        this.reap();
        return this.backingStore.values();
    }
    
    class IdentityWeakReference extends WeakReference<K>
    {
        int hash;
        
        IdentityWeakReference(final Object referent) {
            super(referent, WeakIdentityHashMap.this.queue);
            this.hash = System.identityHashCode(referent);
        }
        
        @Override
        public boolean equals(final Object o) {
            return this == o || this.get() == ((IdentityWeakReference)o).get();
        }
        
        @Override
        public int hashCode() {
            return this.hash;
        }
    }
}
