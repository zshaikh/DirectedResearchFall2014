package com.chartboost.sdk.impl;

import java.io.*;
import java.util.concurrent.*;
import java.util.concurrent.locks.*;
import java.util.*;

abstract class ba<K, V, M extends Map<K, V>> implements Serializable, ConcurrentMap<K, V>
{
    private volatile M a;
    private final transient Lock b;
    private final h<K, V> c;
    
    protected ba(final N n, final h.a a) {
        super();
        this.b = new ReentrantLock();
        this.a = bb.a("delegate", this.a((Map)bb.a("map", (N)n)));
        this.c = bb.a("viewType", a).a((ba<K, V, Map>)this);
    }
    
    private boolean a(final Object o, final Object obj) {
        if (o == null) {
            return obj == null;
        }
        return o.equals(obj);
    }
    
    protected M a() {
        this.b.lock();
        try {
            return this.a(this.a);
        }
        finally {
            this.b.unlock();
        }
    }
    
    abstract <N extends Map<? extends K, ? extends V>> M a(final N p0);
    
    protected void b(final M a) {
        this.a = a;
    }
    
    @Override
    public final void clear() {
        this.b.lock();
        try {
            this.b(this.a(Collections.emptyMap()));
        }
        finally {
            this.b.unlock();
        }
    }
    
    @Override
    public final boolean containsKey(final Object o) {
        return this.a.containsKey(o);
    }
    
    @Override
    public final boolean containsValue(final Object o) {
        return this.a.containsValue(o);
    }
    
    @Override
    public final Set<Entry<K, V>> entrySet() {
        return this.c.b();
    }
    
    @Override
    public final boolean equals(final Object obj) {
        return this.a.equals(obj);
    }
    
    @Override
    public final V get(final Object o) {
        return ((Map<K, V>)this.a).get(o);
    }
    
    @Override
    public final int hashCode() {
        return this.a.hashCode();
    }
    
    @Override
    public final boolean isEmpty() {
        return this.a.isEmpty();
    }
    
    @Override
    public final Set<K> keySet() {
        return this.c.a();
    }
    
    @Override
    public final V put(final K k, final V v) {
        this.b.lock();
        try {
            final Map<K, V> a = this.a();
            try {
                return a.put(k, v);
            }
            finally {
                this.b((M)a);
            }
        }
        finally {
            this.b.unlock();
        }
    }
    
    @Override
    public final void putAll(final Map<? extends K, ? extends V> map) {
        this.b.lock();
        try {
            final Map<K, V> a = this.a();
            a.putAll(map);
            this.b((M)a);
        }
        finally {
            this.b.unlock();
        }
    }
    
    @Override
    public V putIfAbsent(final K k, final V v) {
        this.b.lock();
        try {
            if (!this.a.containsKey(k)) {
                final Map<K, V> a = this.a();
                try {
                    return a.put(k, v);
                }
                finally {
                    this.b((M)a);
                }
            }
        }
        finally {
            this.b.unlock();
        }
        final V value = ((Map<K, V>)this.a).get(k);
        this.b.unlock();
        return value;
    }
    
    @Override
    public final V remove(final Object o) {
        this.b.lock();
        try {
            if (!this.a.containsKey(o)) {
                return null;
            }
            final Map<K, V> a = this.a();
            try {
                return a.remove(o);
            }
            finally {
                this.b((M)a);
            }
        }
        finally {
            this.b.unlock();
        }
    }
    
    @Override
    public boolean remove(final Object o, final Object o2) {
        this.b.lock();
        try {
            if (this.a.containsKey(o) && this.a(o2, ((Map<K, Object>)this.a).get(o))) {
                final Map<K, V> a = this.a();
                a.remove(o);
                this.b((M)a);
                return true;
            }
            return false;
        }
        finally {
            this.b.unlock();
        }
    }
    
    @Override
    public V replace(final K k, final V v) {
        this.b.lock();
        try {
            if (!this.a.containsKey(k)) {
                return null;
            }
            final Map<K, V> a = this.a();
            try {
                return a.put(k, v);
            }
            finally {
                this.b((M)a);
            }
        }
        finally {
            this.b.unlock();
        }
    }
    
    @Override
    public boolean replace(final K k, final V v, final V v2) {
        this.b.lock();
        try {
            if (!this.a.containsKey(k) || !this.a(v, ((Map<K, Object>)this.a).get(k))) {
                return false;
            }
            final Map<K, V> a = this.a();
            a.put(k, v2);
            this.b((M)a);
            return true;
        }
        finally {
            this.b.unlock();
        }
    }
    
    @Override
    public final int size() {
        return this.a.size();
    }
    
    @Override
    public String toString() {
        return this.a.toString();
    }
    
    @Override
    public final Collection<V> values() {
        return this.c.c();
    }
    
    protected abstract static class a<E> implements Collection<E>
    {
        abstract Collection<E> a();
        
        @Override
        public final boolean add(final E e) {
            throw new UnsupportedOperationException();
        }
        
        @Override
        public final boolean addAll(final Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }
        
        @Override
        public final boolean contains(final Object o) {
            return this.a().contains(o);
        }
        
        @Override
        public final boolean containsAll(final Collection<?> collection) {
            return this.a().containsAll(collection);
        }
        
        @Override
        public boolean equals(final Object obj) {
            return this.a().equals(obj);
        }
        
        @Override
        public int hashCode() {
            return this.a().hashCode();
        }
        
        @Override
        public final boolean isEmpty() {
            return this.a().isEmpty();
        }
        
        @Override
        public final Iterator<E> iterator() {
            return new f<E>(this.a().iterator());
        }
        
        @Override
        public final int size() {
            return this.a().size();
        }
        
        @Override
        public final Object[] toArray() {
            return this.a().toArray();
        }
        
        @Override
        public final <T> T[] toArray(final T[] array) {
            return this.a().toArray(array);
        }
        
        @Override
        public String toString() {
            return this.a().toString();
        }
    }
    
    private class b extends ba.a<Entry<K, V>> implements Set<Entry<K, V>>
    {
        @Override
        Collection<Entry<K, V>> a() {
            return (Collection<Entry<K, V>>)ba.this.a.entrySet();
        }
        
        @Override
        public void clear() {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                a.entrySet().clear();
                ba.this.b(a);
            }
            finally {
                ba.this.b.unlock();
            }
        }
        
        @Override
        public boolean remove(final Object o) {
            ba.this.b.lock();
            try {
                if (!((ba.a)this).contains(o)) {
                    return false;
                }
                final Map<K, V> a = ba.this.a();
                try {
                    return a.entrySet().remove(o);
                }
                finally {
                    ba.this.b(a);
                }
            }
            finally {
                ba.this.b.unlock();
            }
        }
        
        @Override
        public boolean removeAll(final Collection<?> collection) {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                try {
                    return a.entrySet().removeAll(collection);
                }
                finally {
                    ba.this.b(a);
                }
            }
            finally {
                ba.this.b.unlock();
            }
        }
        
        @Override
        public boolean retainAll(final Collection<?> collection) {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                try {
                    return a.entrySet().retainAll(collection);
                }
                finally {
                    ba.this.b(a);
                }
            }
            finally {
                ba.this.b.unlock();
            }
        }
    }
    
    final class c extends h<K, V> implements Serializable
    {
        public Set<K> a() {
            return Collections.unmodifiableSet(((Map<? extends K, V>)ba.this.a).keySet());
        }
        
        public Set<Entry<K, V>> b() {
            return Collections.unmodifiableSet((Set<? extends Entry<K, V>>)ba.this.a.entrySet());
        }
        
        public Collection<V> c() {
            return Collections.unmodifiableCollection(((Map<K, ? extends V>)ba.this.a).values());
        }
    }
    
    private class d extends ba.a<K> implements Set<K>
    {
        @Override
        Collection<K> a() {
            return (Collection<K>)ba.this.a.keySet();
        }
        
        @Override
        public void clear() {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                a.keySet().clear();
                ba.this.b(a);
            }
            finally {
                ba.this.b.unlock();
            }
        }
        
        @Override
        public boolean remove(final Object o) {
            return ba.this.remove(o) != null;
        }
        
        @Override
        public boolean removeAll(final Collection<?> collection) {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                try {
                    return a.keySet().removeAll(collection);
                }
                finally {
                    ba.this.b(a);
                }
            }
            finally {
                ba.this.b.unlock();
            }
        }
        
        @Override
        public boolean retainAll(final Collection<?> collection) {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                try {
                    return a.keySet().retainAll(collection);
                }
                finally {
                    ba.this.b(a);
                }
            }
            finally {
                ba.this.b.unlock();
            }
        }
    }
    
    final class e extends h<K, V> implements Serializable
    {
        private final transient d b;
        private final transient b c;
        private final transient g d;
        
        e() {
            super();
            this.b = new d();
            this.c = new b();
            this.d = new g();
        }
        
        public Set<K> a() {
            return this.b;
        }
        
        public Set<Entry<K, V>> b() {
            return this.c;
        }
        
        public Collection<V> c() {
            return this.d;
        }
    }
    
    private static class f<T> implements Iterator<T>
    {
        private final Iterator<T> a;
        
        public f(final Iterator<T> a) {
            super();
            this.a = a;
        }
        
        @Override
        public boolean hasNext() {
            return this.a.hasNext();
        }
        
        @Override
        public T next() {
            return this.a.next();
        }
        
        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
    
    private final class g extends ba.a<V>
    {
        @Override
        Collection<V> a() {
            return ((Map<K, V>)ba.this.a).values();
        }
        
        @Override
        public void clear() {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                a.values().clear();
                ba.this.b(a);
            }
            finally {
                ba.this.b.unlock();
            }
        }
        
        @Override
        public boolean remove(final Object o) {
            ba.this.b.lock();
            try {
                if (!((ba.a)this).contains(o)) {
                    return false;
                }
                final Map<K, V> a = ba.this.a();
                try {
                    return a.values().remove(o);
                }
                finally {
                    ba.this.b(a);
                }
            }
            finally {
                ba.this.b.unlock();
            }
        }
        
        @Override
        public boolean removeAll(final Collection<?> collection) {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                try {
                    return a.values().removeAll(collection);
                }
                finally {
                    ba.this.b(a);
                }
            }
            finally {
                ba.this.b.unlock();
            }
        }
        
        @Override
        public boolean retainAll(final Collection<?> collection) {
            ba.this.b.lock();
            try {
                final Map<K, V> a = ba.this.a();
                try {
                    return a.values().retainAll(collection);
                }
                finally {
                    ba.this.b(a);
                }
            }
            finally {
                ba.this.b.unlock();
            }
        }
    }
    
    public abstract static class h<K, V>
    {
        abstract Set<K> a();
        
        abstract Set<Entry<K, V>> b();
        
        abstract Collection<V> c();
        
        public enum a
        {
            a {
                @Override
                 <K, V, M extends Map<K, V>> h<K, V> a(final ba<K, V, M> ba) {
                    ba.getClass();
                    return (h<K, V>)ba.new c();
                }
            }, 
            b {
                @Override
                 <K, V, M extends Map<K, V>> h<K, V> a(final ba<K, V, M> ba) {
                    ba.getClass();
                    return (h<K, V>)ba.new e();
                }
            };
            
            abstract <K, V, M extends Map<K, V>> h<K, V> a(final ba<K, V, M> p0);
        }
    }
}
