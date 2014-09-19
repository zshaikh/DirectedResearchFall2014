package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;

@Deprecated
public abstract class ReaderBasedParserBase extends JsonParserBase
{
    protected char[] _inputBuffer;
    protected Reader _reader;
    
    protected ReaderBasedParserBase(final IOContext ioContext, final int n, final Reader reader) {
        super(ioContext, n);
        this._reader = reader;
        this._inputBuffer = ioContext.allocTokenBuffer();
    }
    
    @Override
    protected void _closeInput() throws IOException {
        if (this._reader != null) {
            if (this._ioContext.isResourceManaged() || this.isEnabled(Feature.AUTO_CLOSE_SOURCE)) {
                this._reader.close();
            }
            this._reader = null;
        }
    }
    
    protected final boolean _matchToken(final String s, int endIndex) throws IOException, JsonParseException {
        do {
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOFInValue();
            }
            if (this._inputBuffer[this._inputPtr] != s.charAt(endIndex)) {
                this._reportInvalidToken(s.substring(0, endIndex), "'null', 'true', 'false' or NaN");
            }
            ++this._inputPtr;
        } while (++endIndex < s.length());
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            return true;
        }
        if (Character.isJavaIdentifierPart(this._inputBuffer[this._inputPtr])) {
            ++this._inputPtr;
            this._reportInvalidToken(s.substring(0, endIndex), "'null', 'true', 'false' or NaN");
        }
        return true;
    }
    
    @Override
    protected void _releaseBuffers() throws IOException {
        super._releaseBuffers();
        final char[] inputBuffer = this._inputBuffer;
        if (inputBuffer != null) {
            this._inputBuffer = null;
            this._ioContext.releaseTokenBuffer(inputBuffer);
        }
    }
    
    protected void _reportInvalidToken(final String str, final String s) throws IOException, JsonParseException {
        final StringBuilder sb = new StringBuilder(str);
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final char c = this._inputBuffer[this._inputPtr];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            ++this._inputPtr;
            sb.append(c);
        }
        this._reportError("Unrecognized token '" + sb.toString() + "': was expecting ");
    }
    
    @Override
    public Object getInputSource() {
        return this._reader;
    }
    
    protected char getNextChar(final String s) throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            this._reportInvalidEOF(s);
        }
        return this._inputBuffer[this._inputPtr++];
    }
    
    @Override
    protected final boolean loadMore() throws IOException {
        this._currInputProcessed += this._inputEnd;
        this._currInputRowStart -= this._inputEnd;
        if (this._reader != null) {
            final int read = this._reader.read(this._inputBuffer, 0, this._inputBuffer.length);
            if (read > 0) {
                this._inputPtr = 0;
                this._inputEnd = read;
                return true;
            }
            this._closeInput();
            if (read == 0) {
                throw new IOException("Reader returned 0 characters when trying to read " + this._inputEnd);
            }
        }
        return false;
    }
    
    @Override
    public int releaseBuffered(final Writer writer) throws IOException {
        final int n = this._inputEnd - this._inputPtr;
        if (n < 1) {
            return 0;
        }
        writer.write(this._inputBuffer, this._inputPtr, n);
        return n;
    }
}
