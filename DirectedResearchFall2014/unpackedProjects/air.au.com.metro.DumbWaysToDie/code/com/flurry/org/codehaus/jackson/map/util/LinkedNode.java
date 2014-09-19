package com.flurry.org.codehaus.jackson.map.util;

public final class LinkedNode<T>
{
    final LinkedNode<T> _next;
    final T _value;
    
    public LinkedNode(final T value, final LinkedNode<T> next) {
        super();
        this._value = value;
        this._next = next;
    }
    
    public static <ST> boolean contains(LinkedNode<ST> next, final ST st) {
        while (next != null) {
            if (next.value() == st) {
                return true;
            }
            next = next.next();
        }
        return false;
    }
    
    public LinkedNode<T> next() {
        return this._next;
    }
    
    public T value() {
        return this._value;
    }
}
