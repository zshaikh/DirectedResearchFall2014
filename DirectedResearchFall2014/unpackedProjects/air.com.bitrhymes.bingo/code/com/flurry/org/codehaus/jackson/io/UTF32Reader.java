package com.flurry.org.codehaus.jackson.io;

import java.io.*;

public final class UTF32Reader extends BaseReader
{
    final boolean mBigEndian;
    int mByteCount;
    int mCharCount;
    char mSurrogate;
    
    public UTF32Reader(final IOContext ioContext, final InputStream inputStream, final byte[] array, final int n, final int n2, final boolean mBigEndian) {
        super(ioContext, inputStream, array, n, n2);
        this.mSurrogate = '\0';
        this.mCharCount = 0;
        this.mByteCount = 0;
        this.mBigEndian = mBigEndian;
    }
    
    private boolean loadMore(final int length) throws IOException {
        this.mByteCount += this._length - length;
        if (length > 0) {
            if (this._ptr > 0) {
                for (int i = 0; i < length; ++i) {
                    this._buffer[i] = this._buffer[i + this._ptr];
                }
                this._ptr = 0;
            }
            this._length = length;
        }
        else {
            this._ptr = 0;
            final int read = this._in.read(this._buffer);
            if (read < 1) {
                this._length = 0;
                if (read < 0) {
                    this.freeBuffers();
                    return false;
                }
                this.reportStrangeStream();
            }
            this._length = read;
        }
        while (this._length < 4) {
            final int read2 = this._in.read(this._buffer, this._length, this._buffer.length - this._length);
            if (read2 < 1) {
                if (read2 < 0) {
                    this.freeBuffers();
                    this.reportUnexpectedEOF(this._length, 4);
                }
                this.reportStrangeStream();
            }
            this._length += read2;
        }
        return true;
    }
    
    private void reportInvalid(final int i, final int n, final String str) throws IOException {
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (n + this.mCharCount) + ", byte #" + (this.mByteCount + this._ptr - 1) + ")");
    }
    
    private void reportUnexpectedEOF(final int i, final int j) throws IOException {
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + j + ", at char #" + this.mCharCount + ", byte #" + (i + this.mByteCount) + ")");
    }
    
    @Override
    public int read(final char[] array, final int n, final int n2) throws IOException {
        if (this._buffer == null) {
            return -1;
        }
        if (n2 < 1) {
            return n2;
        }
        if (n < 0 || n + n2 > array.length) {
            this.reportBounds(array, n, n2);
        }
        final int n3 = n2 + n;
        int i;
        if (this.mSurrogate != '\0') {
            i = n + 1;
            array[n] = this.mSurrogate;
            this.mSurrogate = '\0';
        }
        else {
            final int n4 = this._length - this._ptr;
            if (n4 < 4 && !this.loadMore(n4)) {
                return -1;
            }
            i = n;
        }
    Label_0257:
        while (true) {
            while (i < n3) {
                final int ptr = this._ptr;
                int n5;
                if (this.mBigEndian) {
                    n5 = (this._buffer[ptr] << 24 | (0xFF & this._buffer[ptr + 1]) << 16 | (0xFF & this._buffer[ptr + 2]) << 8 | (0xFF & this._buffer[ptr + 3]));
                }
                else {
                    n5 = ((0xFF & this._buffer[ptr]) | (0xFF & this._buffer[ptr + 1]) << 8 | (0xFF & this._buffer[ptr + 2]) << 16 | this._buffer[ptr + 3] << 24);
                }
                this._ptr += 4;
                int n7;
                if (n5 > 65535) {
                    if (n5 > 1114111) {
                        this.reportInvalid(n5, i - n, "(above " + Integer.toHexString(1114111) + ") ");
                    }
                    final int n6 = n5 - 65536;
                    n7 = i + 1;
                    array[i] = (char)(55296 + (n6 >> 10));
                    n5 = (0xDC00 | (n6 & 0x3FF));
                    if (n7 >= n3) {
                        this.mSurrogate = (char)n5;
                        break Label_0257;
                    }
                }
                else {
                    n7 = i;
                }
                i = n7 + 1;
                array[n7] = (char)n5;
                if (this._ptr < this._length) {
                    continue;
                }
                n7 = i;
                final int n8 = n7 - n;
                this.mCharCount += n8;
                return n8;
            }
            int n7 = i;
            continue Label_0257;
        }
    }
}
