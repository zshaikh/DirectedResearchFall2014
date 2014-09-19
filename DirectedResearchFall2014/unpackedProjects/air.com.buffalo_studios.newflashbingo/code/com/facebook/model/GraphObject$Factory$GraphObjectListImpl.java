package com.facebook.model;

import com.facebook.*;
import org.json.*;
import java.text.*;
import java.io.*;
import java.util.*;
import java.lang.annotation.*;
import com.facebook.internal.*;
import java.lang.reflect.*;

final class GraphObject$Factory$GraphObjectListImpl<T> extends AbstractList<T> implements GraphObjectList<T>
{
    private final Class<?> itemType;
    private final JSONArray state;
    
    public GraphObject$Factory$GraphObjectListImpl(final JSONArray state, final Class<?> itemType) {
        super();
        Validate.notNull(state, "state");
        Validate.notNull(itemType, "itemType");
        this.state = state;
        this.itemType = itemType;
    }
    
    private void checkIndex(final int n) {
        if (n < 0 || n >= this.state.length()) {
            throw new IndexOutOfBoundsException();
        }
    }
    
    private void put(final int n, final T t) {
        final Object access$200 = getUnderlyingJSONObject(t);
        try {
            this.state.put(n, access$200);
        }
        catch (JSONException cause) {
            throw new IllegalArgumentException((Throwable)cause);
        }
    }
    
    @Override
    public final void add(final int n, final T t) {
        if (n < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (n < this.size()) {
            throw new UnsupportedOperationException("Only adding items at the end of the list is supported.");
        }
        this.put(n, t);
    }
    
    @Override
    public final <U extends GraphObject> GraphObjectList<U> castToListOf(final Class<U> clazz) {
        if (!GraphObject.class.isAssignableFrom(this.itemType)) {
            throw new FacebookGraphObjectException("Can't cast GraphObjectCollection of non-GraphObject type " + this.itemType);
        }
        if (clazz.isAssignableFrom(this.itemType)) {
            return (GraphObjectList<U>)this;
        }
        return GraphObject$Factory.createList(this.state, clazz);
    }
    
    @Override
    public final void clear() {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o != null && (this == o || (this.getClass() == o.getClass() && this.state.equals((Object)((GraphObject$Factory$GraphObjectListImpl)o).state)));
    }
    
    @Override
    public final T get(final int n) {
        this.checkIndex(n);
        return GraphObject$Factory.coerceValueToExpectedType(this.state.opt(n), this.itemType, null);
    }
    
    @Override
    public final JSONArray getInnerJSONArray() {
        return this.state;
    }
    
    @Override
    public final int hashCode() {
        return this.state.hashCode();
    }
    
    @Override
    public final boolean remove(final Object o) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final boolean removeAll(final Collection<?> collection) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final boolean retainAll(final Collection<?> collection) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final T set(final int n, final T t) {
        this.checkIndex(n);
        final T value = this.get(n);
        this.put(n, t);
        return value;
    }
    
    @Override
    public final int size() {
        return this.state.length();
    }
    
    @Override
    public final String toString() {
        return String.format("GraphObjectList{itemType=%s, state=%s}", this.itemType.getSimpleName(), this.state);
    }
}
