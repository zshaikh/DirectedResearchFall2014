package com.flurry.org.codehaus.jackson.map.deser.impl;

import com.flurry.org.codehaus.jackson.map.deser.*;
import java.util.*;

public final class BeanPropertyMap
{
    private final Bucket[] _buckets;
    private final int _hashMask;
    private final int _size;
    
    public BeanPropertyMap(final Collection<SettableBeanProperty> collection) {
        super();
        this._size = collection.size();
        final int size = findSize(this._size);
        this._hashMask = size - 1;
        final Bucket[] buckets = new Bucket[size];
        for (final SettableBeanProperty settableBeanProperty : collection) {
            final String name = settableBeanProperty.getName();
            final int n = name.hashCode() & this._hashMask;
            buckets[n] = new Bucket(buckets[n], name, settableBeanProperty);
        }
        this._buckets = buckets;
    }
    
    private SettableBeanProperty _findWithEquals(final String s, final int n) {
        for (Bucket next = this._buckets[n]; next != null; next = next.next) {
            if (s.equals(next.key)) {
                return next.value;
            }
        }
        return null;
    }
    
    private static final int findSize(final int n) {
        int n2;
        if (n <= 32) {
            n2 = n + n;
        }
        else {
            n2 = n + (n >> 2);
        }
        int i;
        for (i = 2; i < n2; i += i) {}
        return i;
    }
    
    public Iterator<SettableBeanProperty> allProperties() {
        return new IteratorImpl(this._buckets);
    }
    
    public void assignIndexes() {
        int n = 0;
        final Bucket[] buckets = this._buckets;
        int n2;
        for (int length = buckets.length, i = 0; i < length; ++i, n = n2) {
            Bucket next = buckets[i];
            n2 = n;
            while (next != null) {
                final SettableBeanProperty value = next.value;
                final int n3 = n2 + 1;
                value.assignIndex(n2);
                next = next.next;
                n2 = n3;
            }
        }
    }
    
    public SettableBeanProperty find(final String s) {
        final int n = s.hashCode() & this._hashMask;
        Bucket next = this._buckets[n];
        if (next == null) {
            return null;
        }
        if (next.key == s) {
            return next.value;
        }
        do {
            next = next.next;
            if (next != null) {
                continue;
            }
            return this._findWithEquals(s, n);
        } while (next.key != s);
        return next.value;
    }
    
    public void remove(final SettableBeanProperty obj) {
        final String name = obj.getName();
        final int n = name.hashCode() & this._buckets.length - 1;
        int n2 = 0;
        Bucket next = this._buckets[n];
        Bucket bucket = null;
        while (next != null) {
            Bucket bucket2;
            if (n2 == 0 && next.key.equals(name)) {
                n2 = 1;
                bucket2 = bucket;
            }
            else {
                bucket2 = new Bucket(bucket, next.key, next.value);
            }
            next = next.next;
            bucket = bucket2;
        }
        if (n2 == 0) {
            throw new NoSuchElementException("No entry '" + obj + "' found, can't remove");
        }
        this._buckets[n] = bucket;
    }
    
    public void replace(final SettableBeanProperty obj) {
        final String name = obj.getName();
        final int n = name.hashCode() & this._buckets.length - 1;
        int n2 = 0;
        Bucket next = this._buckets[n];
        Bucket bucket = null;
        while (next != null) {
            Bucket bucket2;
            if (n2 == 0 && next.key.equals(name)) {
                n2 = 1;
                bucket2 = bucket;
            }
            else {
                bucket2 = new Bucket(bucket, next.key, next.value);
            }
            next = next.next;
            bucket = bucket2;
        }
        if (n2 == 0) {
            throw new NoSuchElementException("No entry '" + obj + "' found, can't replace");
        }
        this._buckets[n] = new Bucket(bucket, name, obj);
    }
    
    public int size() {
        return this._size;
    }
    
    private static final class Bucket
    {
        public final String key;
        public final Bucket next;
        public final SettableBeanProperty value;
        
        public Bucket(final Bucket next, final String key, final SettableBeanProperty value) {
            super();
            this.next = next;
            this.key = key;
            this.value = value;
        }
    }
    
    private static final class IteratorImpl implements Iterator<SettableBeanProperty>
    {
        private final Bucket[] _buckets;
        private Bucket _currentBucket;
        private int _nextBucketIndex;
        
        public IteratorImpl(final Bucket[] buckets) {
            super();
            this._buckets = buckets;
            while (true) {
                int length;
                int i;
                int nextBucketIndex;
                for (length = this._buckets.length, i = 0; i < length; i = nextBucketIndex) {
                    final Bucket[] buckets2 = this._buckets;
                    nextBucketIndex = i + 1;
                    final Bucket currentBucket = buckets2[i];
                    if (currentBucket != null) {
                        this._currentBucket = currentBucket;
                        this._nextBucketIndex = nextBucketIndex;
                        return;
                    }
                }
                nextBucketIndex = i;
                continue;
            }
        }
        
        @Override
        public boolean hasNext() {
            return this._currentBucket != null;
        }
        
        @Override
        public SettableBeanProperty next() {
            final Bucket currentBucket = this._currentBucket;
            if (currentBucket == null) {
                throw new NoSuchElementException();
            }
            Object next;
            for (next = currentBucket.next; next == null && this._nextBucketIndex < this._buckets.length; next = this._buckets[this._nextBucketIndex++]) {}
            this._currentBucket = (Bucket)next;
            return currentBucket.value;
        }
        
        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
