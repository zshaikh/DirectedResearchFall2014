package com.flurry.org.codehaus.jackson.map.util;

import java.util.*;
import java.lang.reflect.*;

public final class ObjectBuffer
{
    static final int INITIAL_CHUNK_SIZE = 12;
    static final int MAX_CHUNK_SIZE = 262144;
    static final int SMALL_CHUNK_SIZE = 16384;
    private Node _bufferHead;
    private Node _bufferTail;
    private int _bufferedEntryCount;
    private Object[] _freeBuffer;
    
    protected final void _copyTo(final Object o, final int i, final Object[] array, final int n) {
        int n2 = 0;
        for (Node node = this._bufferHead; node != null; node = node.next()) {
            final Object[] data = node.getData();
            final int length = data.length;
            System.arraycopy(data, 0, o, n2, length);
            n2 += length;
        }
        System.arraycopy(array, 0, o, n2, n);
        final int j = n2 + n;
        if (j != i) {
            throw new IllegalStateException("Should have gotten " + i + " entries, got " + j);
        }
    }
    
    protected void _reset() {
        if (this._bufferTail != null) {
            this._freeBuffer = this._bufferTail.getData();
        }
        this._bufferTail = null;
        this._bufferHead = null;
        this._bufferedEntryCount = 0;
    }
    
    public Object[] appendCompletedChunk(final Object[] array) {
        final Node bufferTail = new Node(array);
        if (this._bufferHead == null) {
            this._bufferTail = bufferTail;
            this._bufferHead = bufferTail;
        }
        else {
            this._bufferTail.linkNext(bufferTail);
            this._bufferTail = bufferTail;
        }
        final int length = array.length;
        this._bufferedEntryCount += length;
        int n;
        if (length < 16384) {
            n = length + length;
        }
        else {
            n = length + (length >> 2);
        }
        return new Object[n];
    }
    
    public int bufferedSize() {
        return this._bufferedEntryCount;
    }
    
    public void completeAndClearBuffer(final Object[] array, final int n, final List<Object> list) {
        for (Node node = this._bufferHead; node != null; node = node.next()) {
            final Object[] data = node.getData();
            for (int i = 0; i < data.length; ++i) {
                list.add(data[i]);
            }
        }
        for (int j = 0; j < n; ++j) {
            list.add(array[j]);
        }
    }
    
    public Object[] completeAndClearBuffer(final Object[] array, final int n) {
        final int n2 = n + this._bufferedEntryCount;
        final Object[] array2 = new Object[n2];
        this._copyTo(array2, n2, array, n);
        return array2;
    }
    
    public <T> T[] completeAndClearBuffer(final Object[] array, final int n, final Class<T> componentType) {
        final int length = n + this._bufferedEntryCount;
        final Object[] array2 = (Object[])Array.newInstance(componentType, length);
        this._copyTo(array2, length, array, n);
        this._reset();
        return (T[])array2;
    }
    
    public int initialCapacity() {
        if (this._freeBuffer == null) {
            return 0;
        }
        return this._freeBuffer.length;
    }
    
    public Object[] resetAndStart() {
        this._reset();
        if (this._freeBuffer == null) {
            return new Object[12];
        }
        return this._freeBuffer;
    }
    
    static final class Node
    {
        final Object[] _data;
        Node _next;
        
        public Node(final Object[] data) {
            super();
            this._data = data;
        }
        
        public Object[] getData() {
            return this._data;
        }
        
        public void linkNext(final Node next) {
            if (this._next != null) {
                throw new IllegalStateException();
            }
            this._next = next;
        }
        
        public Node next() {
            return this._next;
        }
    }
}
