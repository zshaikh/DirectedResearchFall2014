package com.flurry.org.codehaus.jackson.map.util;

public abstract class PrimitiveArrayBuilder<T>
{
    static final int INITIAL_CHUNK_SIZE = 12;
    static final int MAX_CHUNK_SIZE = 262144;
    static final int SMALL_CHUNK_SIZE = 16384;
    Node<T> _bufferHead;
    Node<T> _bufferTail;
    int _bufferedEntryCount;
    T _freeBuffer;
    
    protected abstract T _constructArray(final int p0);
    
    protected void _reset() {
        if (this._bufferTail != null) {
            this._freeBuffer = this._bufferTail.getData();
        }
        this._bufferTail = null;
        this._bufferHead = null;
        this._bufferedEntryCount = 0;
    }
    
    public final T appendCompletedChunk(final T t, final int n) {
        final Node<T> bufferTail = new Node<T>(t, n);
        if (this._bufferHead == null) {
            this._bufferTail = bufferTail;
            this._bufferHead = bufferTail;
        }
        else {
            this._bufferTail.linkNext(bufferTail);
            this._bufferTail = bufferTail;
        }
        this._bufferedEntryCount += n;
        int n2;
        if (n < 16384) {
            n2 = n + n;
        }
        else {
            n2 = n + (n >> 2);
        }
        return this._constructArray(n2);
    }
    
    public T completeAndClearBuffer(final T t, final int n) {
        final int i = n + this._bufferedEntryCount;
        final T constructArray = this._constructArray(i);
        int copyData = 0;
        for (Node<T> node = this._bufferHead; node != null; node = node.next()) {
            copyData = node.copyData(constructArray, copyData);
        }
        System.arraycopy(t, 0, constructArray, copyData, n);
        final int j = copyData + n;
        if (j != i) {
            throw new IllegalStateException("Should have gotten " + i + " entries, got " + j);
        }
        return constructArray;
    }
    
    public T resetAndStart() {
        this._reset();
        if (this._freeBuffer == null) {
            return this._constructArray(12);
        }
        return this._freeBuffer;
    }
    
    static final class Node<T>
    {
        final T _data;
        final int _dataLength;
        Node<T> _next;
        
        public Node(final T data, final int dataLength) {
            super();
            this._data = data;
            this._dataLength = dataLength;
        }
        
        public int copyData(final T t, final int n) {
            System.arraycopy(this._data, 0, t, n, this._dataLength);
            return n + this._dataLength;
        }
        
        public T getData() {
            return this._data;
        }
        
        public void linkNext(final Node<T> next) {
            if (this._next != null) {
                throw new IllegalStateException();
            }
            this._next = next;
        }
        
        public Node<T> next() {
            return this._next;
        }
    }
}
