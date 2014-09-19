package com.chartboost.sdk.impl;

import java.util.*;
import java.util.concurrent.*;

public abstract class bh<T>
{
    final int a;
    private Queue<T> b;
    
    public bh(final int a) {
        super();
        this.b = new ConcurrentLinkedQueue<T>();
        this.a = a;
    }
    
    protected boolean a(final T t) {
        return true;
    }
    
    protected abstract T b();
    
    public void b(final T t) {
        if (this.a(t) && this.b.size() <= this.a) {
            this.b.add(t);
        }
    }
    
    public T c() {
        final T poll = this.b.poll();
        if (poll != null) {
            return poll;
        }
        return this.b();
    }
}
