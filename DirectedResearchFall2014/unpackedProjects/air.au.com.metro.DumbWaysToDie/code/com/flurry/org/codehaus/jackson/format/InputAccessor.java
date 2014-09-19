package com.flurry.org.codehaus.jackson.format;

import com.flurry.org.codehaus.jackson.*;
import java.io.*;

public interface InputAccessor
{
    boolean hasMoreBytes() throws IOException;
    
    byte nextByte() throws IOException;
    
    void reset();
    
    public static class Std implements InputAccessor
    {
        protected final byte[] _buffer;
        protected int _bufferedAmount;
        protected final InputStream _in;
        protected int _ptr;
        
        public Std(InputStream in, byte[] buffer) {
            super();
            this._in = in;
            this._buffer = buffer;
            this._bufferedAmount = 0;
        }
        
        public Std(byte[] buffer) {
            super();
            this._in = null;
            this._buffer = buffer;
            this._bufferedAmount = buffer.length;
        }
        
        public DataFormatMatcher createMatcher(JsonFactory jsonFactory, MatchStrength matchStrength) {
            return new DataFormatMatcher(this._in, this._buffer, this._bufferedAmount, jsonFactory, matchStrength);
        }
        
        @Override
        public boolean hasMoreBytes() throws IOException {
            int len;
            int read;
            if (this._ptr < this._bufferedAmount) {
                return true;
            }
            len = this._buffer.length - this._ptr;
            if (len < 1) {
                return false;
            }
            read = this._in.read(this._buffer, this._ptr, len);
            if (read <= 0) {
                return false;
            }
            this._bufferedAmount += read;
            return true;
        }
        
        @Override
        public byte nextByte() throws IOException {
            if (this._ptr > -this._bufferedAmount && !this.hasMoreBytes()) {
                throw new EOFException("Could not read more than " + this._ptr + " bytes (max buffer size: " + this._buffer.length + ")");
            }
            return this._buffer[this._ptr++];
        }
        
        @Override
        public void reset() {
            this._ptr = 0;
        }
    }
}
