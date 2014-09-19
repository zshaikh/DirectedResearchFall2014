package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;

@Deprecated
public abstract class StreamBasedParserBase extends JsonParserBase
{
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    
    protected StreamBasedParserBase(final IOContext ioContext, final int n, final InputStream inputStream, final byte[] inputBuffer, final int inputPtr, final int inputEnd, final boolean bufferRecyclable) {
        super(ioContext, n);
        this._inputStream = inputStream;
        this._inputBuffer = inputBuffer;
        this._inputPtr = inputPtr;
        this._inputEnd = inputEnd;
        this._bufferRecyclable = bufferRecyclable;
    }
    
    @Override
    protected void _closeInput() throws IOException {
        if (this._inputStream != null) {
            if (this._ioContext.isResourceManaged() || this.isEnabled(Feature.AUTO_CLOSE_SOURCE)) {
                this._inputStream.close();
            }
            this._inputStream = null;
        }
    }
    
    protected final boolean _loadToHaveAtLeast(final int n) throws IOException {
        if (this._inputStream == null) {
            return false;
        }
        final int n2 = this._inputEnd - this._inputPtr;
        if (n2 > 0 && this._inputPtr > 0) {
            this._currInputProcessed += this._inputPtr;
            this._currInputRowStart -= this._inputPtr;
            System.arraycopy(this._inputBuffer, this._inputPtr, this._inputBuffer, 0, n2);
            this._inputEnd = n2;
        }
        else {
            this._inputEnd = 0;
        }
        this._inputPtr = 0;
        while (this._inputEnd < n) {
            final int read = this._inputStream.read(this._inputBuffer, this._inputEnd, this._inputBuffer.length - this._inputEnd);
            if (read < 1) {
                this._closeInput();
                if (read == 0) {
                    throw new IOException("InputStream.read() returned 0 characters when trying to read " + n2 + " bytes");
                }
                return false;
            }
            else {
                this._inputEnd += read;
            }
        }
        return true;
    }
    
    @Override
    protected void _releaseBuffers() throws IOException {
        super._releaseBuffers();
        if (this._bufferRecyclable) {
            final byte[] inputBuffer = this._inputBuffer;
            if (inputBuffer != null) {
                this._inputBuffer = null;
                this._ioContext.releaseReadIOBuffer(inputBuffer);
            }
        }
    }
    
    @Override
    public Object getInputSource() {
        return this._inputStream;
    }
    
    @Override
    protected final boolean loadMore() throws IOException {
        this._currInputProcessed += this._inputEnd;
        this._currInputRowStart -= this._inputEnd;
        if (this._inputStream != null) {
            final int read = this._inputStream.read(this._inputBuffer, 0, this._inputBuffer.length);
            if (read > 0) {
                this._inputPtr = 0;
                this._inputEnd = read;
                return true;
            }
            this._closeInput();
            if (read == 0) {
                throw new IOException("InputStream.read() returned 0 characters when trying to read " + this._inputBuffer.length + " bytes");
            }
        }
        return false;
    }
    
    @Override
    public int releaseBuffered(final OutputStream outputStream) throws IOException {
        final int len = this._inputEnd - this._inputPtr;
        if (len < 1) {
            return 0;
        }
        outputStream.write(this._inputBuffer, this._inputPtr, len);
        return len;
    }
}
