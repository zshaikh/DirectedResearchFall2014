package com.flurry.org.codehaus.jackson.io;

import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.util.*;

public final class IOContext
{
    protected final BufferRecycler _bufferRecycler;
    protected char[] _concatCBuffer;
    protected JsonEncoding _encoding;
    protected final boolean _managedResource;
    protected char[] _nameCopyBuffer;
    protected byte[] _readIOBuffer;
    protected final Object _sourceRef;
    protected char[] _tokenCBuffer;
    protected byte[] _writeEncodingBuffer;
    
    public IOContext(final BufferRecycler bufferRecycler, final Object sourceRef, final boolean managedResource) {
        super();
        this._readIOBuffer = null;
        this._writeEncodingBuffer = null;
        this._tokenCBuffer = null;
        this._concatCBuffer = null;
        this._nameCopyBuffer = null;
        this._bufferRecycler = bufferRecycler;
        this._sourceRef = sourceRef;
        this._managedResource = managedResource;
    }
    
    public final char[] allocConcatBuffer() {
        if (this._concatCBuffer != null) {
            throw new IllegalStateException("Trying to call allocConcatBuffer() second time");
        }
        return this._concatCBuffer = this._bufferRecycler.allocCharBuffer(BufferRecycler.CharBufferType.CONCAT_BUFFER);
    }
    
    public final char[] allocNameCopyBuffer(final int n) {
        if (this._nameCopyBuffer != null) {
            throw new IllegalStateException("Trying to call allocNameCopyBuffer() second time");
        }
        return this._nameCopyBuffer = this._bufferRecycler.allocCharBuffer(BufferRecycler.CharBufferType.NAME_COPY_BUFFER, n);
    }
    
    public final byte[] allocReadIOBuffer() {
        if (this._readIOBuffer != null) {
            throw new IllegalStateException("Trying to call allocReadIOBuffer() second time");
        }
        return this._readIOBuffer = this._bufferRecycler.allocByteBuffer(BufferRecycler.ByteBufferType.READ_IO_BUFFER);
    }
    
    public final char[] allocTokenBuffer() {
        if (this._tokenCBuffer != null) {
            throw new IllegalStateException("Trying to call allocTokenBuffer() second time");
        }
        return this._tokenCBuffer = this._bufferRecycler.allocCharBuffer(BufferRecycler.CharBufferType.TOKEN_BUFFER);
    }
    
    public final byte[] allocWriteEncodingBuffer() {
        if (this._writeEncodingBuffer != null) {
            throw new IllegalStateException("Trying to call allocWriteEncodingBuffer() second time");
        }
        return this._writeEncodingBuffer = this._bufferRecycler.allocByteBuffer(BufferRecycler.ByteBufferType.WRITE_ENCODING_BUFFER);
    }
    
    public final TextBuffer constructTextBuffer() {
        return new TextBuffer(this._bufferRecycler);
    }
    
    public final JsonEncoding getEncoding() {
        return this._encoding;
    }
    
    public final Object getSourceReference() {
        return this._sourceRef;
    }
    
    public final boolean isResourceManaged() {
        return this._managedResource;
    }
    
    public final void releaseConcatBuffer(final char[] array) {
        if (array != null) {
            if (array != this._concatCBuffer) {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            this._concatCBuffer = null;
            this._bufferRecycler.releaseCharBuffer(BufferRecycler.CharBufferType.CONCAT_BUFFER, array);
        }
    }
    
    public final void releaseNameCopyBuffer(final char[] array) {
        if (array != null) {
            if (array != this._nameCopyBuffer) {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            this._nameCopyBuffer = null;
            this._bufferRecycler.releaseCharBuffer(BufferRecycler.CharBufferType.NAME_COPY_BUFFER, array);
        }
    }
    
    public final void releaseReadIOBuffer(final byte[] array) {
        if (array != null) {
            if (array != this._readIOBuffer) {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            this._readIOBuffer = null;
            this._bufferRecycler.releaseByteBuffer(BufferRecycler.ByteBufferType.READ_IO_BUFFER, array);
        }
    }
    
    public final void releaseTokenBuffer(final char[] array) {
        if (array != null) {
            if (array != this._tokenCBuffer) {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            this._tokenCBuffer = null;
            this._bufferRecycler.releaseCharBuffer(BufferRecycler.CharBufferType.TOKEN_BUFFER, array);
        }
    }
    
    public final void releaseWriteEncodingBuffer(final byte[] array) {
        if (array != null) {
            if (array != this._writeEncodingBuffer) {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            this._writeEncodingBuffer = null;
            this._bufferRecycler.releaseByteBuffer(BufferRecycler.ByteBufferType.WRITE_ENCODING_BUFFER, array);
        }
    }
    
    public void setEncoding(final JsonEncoding encoding) {
        this._encoding = encoding;
    }
}
