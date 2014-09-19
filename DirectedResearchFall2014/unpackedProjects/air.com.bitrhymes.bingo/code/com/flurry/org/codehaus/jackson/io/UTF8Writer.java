package com.flurry.org.codehaus.jackson.io;

import java.io.*;

public final class UTF8Writer extends Writer
{
    static final int SURR1_FIRST = 55296;
    static final int SURR1_LAST = 56319;
    static final int SURR2_FIRST = 56320;
    static final int SURR2_LAST = 57343;
    protected final IOContext _context;
    OutputStream _out;
    byte[] _outBuffer;
    final int _outBufferEnd;
    int _outPtr;
    int _surrogate;
    
    public UTF8Writer(final IOContext context, final OutputStream out) {
        super();
        this._surrogate = 0;
        this._context = context;
        this._out = out;
        this._outBuffer = context.allocWriteEncodingBuffer();
        this._outBufferEnd = this._outBuffer.length - 4;
        this._outPtr = 0;
    }
    
    private int convertSurrogate(final int i) throws IOException {
        final int surrogate = this._surrogate;
        this._surrogate = 0;
        if (i < 56320 || i > 57343) {
            throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(surrogate) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
        }
        return 65536 + (surrogate - 55296 << 10) + (i - 56320);
    }
    
    private void throwIllegal(final int n) throws IOException {
        if (n > 1114111) {
            throw new IOException("Illegal character point (0x" + Integer.toHexString(n) + ") to output; max is 0x10FFFF as per RFC 4627");
        }
        if (n < 55296) {
            throw new IOException("Illegal character point (0x" + Integer.toHexString(n) + ") to output");
        }
        if (n <= 56319) {
            throw new IOException("Unmatched first part of surrogate pair (0x" + Integer.toHexString(n) + ")");
        }
        throw new IOException("Unmatched second part of surrogate pair (0x" + Integer.toHexString(n) + ")");
    }
    
    @Override
    public Writer append(final char c) throws IOException {
        this.write(c);
        return this;
    }
    
    @Override
    public void close() throws IOException {
        if (this._out != null) {
            if (this._outPtr > 0) {
                this._out.write(this._outBuffer, 0, this._outPtr);
                this._outPtr = 0;
            }
            final OutputStream out = this._out;
            this._out = null;
            final byte[] outBuffer = this._outBuffer;
            if (outBuffer != null) {
                this._outBuffer = null;
                this._context.releaseWriteEncodingBuffer(outBuffer);
            }
            out.close();
            final int surrogate = this._surrogate;
            this._surrogate = 0;
            if (surrogate > 0) {
                this.throwIllegal(surrogate);
            }
        }
    }
    
    @Override
    public void flush() throws IOException {
        if (this._out != null) {
            if (this._outPtr > 0) {
                this._out.write(this._outBuffer, 0, this._outPtr);
                this._outPtr = 0;
            }
            this._out.flush();
        }
    }
    
    @Override
    public void write(int convertSurrogate) throws IOException {
        if (this._surrogate > 0) {
            convertSurrogate = this.convertSurrogate(convertSurrogate);
        }
        else if (convertSurrogate >= 55296 && convertSurrogate <= 57343) {
            if (convertSurrogate > 56319) {
                this.throwIllegal(convertSurrogate);
            }
            this._surrogate = convertSurrogate;
            return;
        }
        if (this._outPtr >= this._outBufferEnd) {
            this._out.write(this._outBuffer, 0, this._outPtr);
            this._outPtr = 0;
        }
        if (convertSurrogate < 128) {
            this._outBuffer[this._outPtr++] = (byte)convertSurrogate;
            return;
        }
        final int outPtr = this._outPtr;
        int outPtr2;
        if (convertSurrogate < 2048) {
            final byte[] outBuffer = this._outBuffer;
            final int n = outPtr + 1;
            outBuffer[outPtr] = (byte)(0xC0 | convertSurrogate >> 6);
            final byte[] outBuffer2 = this._outBuffer;
            outPtr2 = n + 1;
            outBuffer2[n] = (byte)(0x80 | (convertSurrogate & 0x3F));
        }
        else if (convertSurrogate <= 65535) {
            final byte[] outBuffer3 = this._outBuffer;
            final int n2 = outPtr + 1;
            outBuffer3[outPtr] = (byte)(0xE0 | convertSurrogate >> 12);
            final byte[] outBuffer4 = this._outBuffer;
            final int n3 = n2 + 1;
            outBuffer4[n2] = (byte)(0x80 | (0x3F & convertSurrogate >> 6));
            final byte[] outBuffer5 = this._outBuffer;
            final int n4 = n3 + 1;
            outBuffer5[n3] = (byte)(0x80 | (convertSurrogate & 0x3F));
            outPtr2 = n4;
        }
        else {
            if (convertSurrogate > 1114111) {
                this.throwIllegal(convertSurrogate);
            }
            final byte[] outBuffer6 = this._outBuffer;
            final int n5 = outPtr + 1;
            outBuffer6[outPtr] = (byte)(0xF0 | convertSurrogate >> 18);
            final byte[] outBuffer7 = this._outBuffer;
            final int n6 = n5 + 1;
            outBuffer7[n5] = (byte)(0x80 | (0x3F & convertSurrogate >> 12));
            final byte[] outBuffer8 = this._outBuffer;
            final int n7 = n6 + 1;
            outBuffer8[n6] = (byte)(0x80 | (0x3F & convertSurrogate >> 6));
            final byte[] outBuffer9 = this._outBuffer;
            outPtr2 = n7 + 1;
            outBuffer9[n7] = (byte)(0x80 | (convertSurrogate & 0x3F));
        }
        this._outPtr = outPtr2;
    }
    
    @Override
    public void write(final String s) throws IOException {
        this.write(s, 0, s.length());
    }
    
    @Override
    public void write(final String s, int n, int n2) throws IOException {
        if (n2 < 2) {
            if (n2 == 1) {
                this.write(s.charAt(n));
            }
            return;
        }
        if (this._surrogate > 0) {
            final int n3 = n + 1;
            final char char1 = s.charAt(n);
            --n2;
            this.write(this.convertSurrogate(char1));
            n = n3;
        }
        int outPtr = this._outPtr;
        final byte[] outBuffer = this._outBuffer;
        final int outBufferEnd = this._outBufferEnd;
        final int n4 = n2 + n;
        int i = n;
        while (true) {
            while (i < n4) {
                if (outPtr >= outBufferEnd) {
                    this._out.write(outBuffer, 0, outPtr);
                    outPtr = 0;
                }
                final int n5 = i + 1;
                char surrogate = s.charAt(i);
                int n6 = 0;
                Label_0222: {
                    if (surrogate < '\u0080') {
                        n6 = outPtr + 1;
                        outBuffer[outPtr] = (byte)surrogate;
                        int n7 = n4 - n5;
                        final int n8 = outBufferEnd - n6;
                        if (n7 > n8) {
                            n7 = n8;
                        }
                        int n10;
                        for (final int n9 = n7 + n5, i = n5; i < n9; i = n10) {
                            n10 = i + 1;
                            surrogate = s.charAt(i);
                            if (surrogate >= '\u0080') {
                                i = n10;
                                break Label_0222;
                            }
                            final int n11 = n6 + 1;
                            outBuffer[n6] = (byte)surrogate;
                            n6 = n11;
                        }
                        outPtr = n6;
                        continue;
                    }
                    n6 = outPtr;
                    i = n5;
                }
                int n14;
                if (surrogate < '\u0800') {
                    final int n12 = n6 + 1;
                    outBuffer[n6] = (byte)('\u00c0' | surrogate >> 6);
                    final int n13 = n12 + 1;
                    outBuffer[n12] = (byte)('\u0080' | (surrogate & '?'));
                    outPtr = n13;
                    n14 = i;
                }
                else {
                    if (surrogate < '\ud800' || surrogate > '\udfff') {
                        final int n15 = n6 + 1;
                        outBuffer[n6] = (byte)('\u00e0' | surrogate >> 12);
                        final int n16 = n15 + 1;
                        outBuffer[n15] = (byte)('\u0080' | ('?' & surrogate >> 6));
                        outPtr = n16 + 1;
                        outBuffer[n16] = (byte)('\u0080' | (surrogate & '?'));
                        continue;
                    }
                    if (surrogate > '\udbff') {
                        this._outPtr = n6;
                        this.throwIllegal(surrogate);
                    }
                    this._surrogate = surrogate;
                    if (i >= n4) {
                        outPtr = n6;
                        this._outPtr = outPtr;
                        return;
                    }
                    n14 = i + 1;
                    final int convertSurrogate = this.convertSurrogate(s.charAt(i));
                    if (convertSurrogate > 1114111) {
                        this._outPtr = n6;
                        this.throwIllegal(convertSurrogate);
                    }
                    final int n17 = n6 + 1;
                    outBuffer[n6] = (byte)(0xF0 | convertSurrogate >> 18);
                    final int n18 = n17 + 1;
                    outBuffer[n17] = (byte)(0x80 | (0x3F & convertSurrogate >> 12));
                    final int n19 = n18 + 1;
                    outBuffer[n18] = (byte)(0x80 | (0x3F & convertSurrogate >> 6));
                    final int n20 = n19 + 1;
                    outBuffer[n19] = (byte)(0x80 | (convertSurrogate & 0x3F));
                    outPtr = n20;
                }
                i = n14;
            }
            continue;
        }
    }
    
    @Override
    public void write(final char[] array) throws IOException {
        this.write(array, 0, array.length);
    }
    
    @Override
    public void write(final char[] array, int n, int n2) throws IOException {
        if (n2 < 2) {
            if (n2 == 1) {
                this.write(array[n]);
            }
            return;
        }
        if (this._surrogate > 0) {
            final int n3 = n + 1;
            final char c = array[n];
            --n2;
            this.write(this.convertSurrogate(c));
            n = n3;
        }
        int outPtr = this._outPtr;
        final byte[] outBuffer = this._outBuffer;
        final int outBufferEnd = this._outBufferEnd;
        final int n4 = n2 + n;
        int i = n;
        while (true) {
            while (i < n4) {
                if (outPtr >= outBufferEnd) {
                    this._out.write(outBuffer, 0, outPtr);
                    outPtr = 0;
                }
                final int n5 = i + 1;
                char surrogate = array[i];
                int n6 = 0;
                Label_0214: {
                    if (surrogate < '\u0080') {
                        n6 = outPtr + 1;
                        outBuffer[outPtr] = (byte)surrogate;
                        int n7 = n4 - n5;
                        final int n8 = outBufferEnd - n6;
                        if (n7 > n8) {
                            n7 = n8;
                        }
                        int n10;
                        for (final int n9 = n7 + n5, i = n5; i < n9; i = n10) {
                            n10 = i + 1;
                            surrogate = array[i];
                            if (surrogate >= '\u0080') {
                                i = n10;
                                break Label_0214;
                            }
                            final int n11 = n6 + 1;
                            outBuffer[n6] = (byte)surrogate;
                            n6 = n11;
                        }
                        outPtr = n6;
                        continue;
                    }
                    n6 = outPtr;
                    i = n5;
                }
                int n14;
                if (surrogate < '\u0800') {
                    final int n12 = n6 + 1;
                    outBuffer[n6] = (byte)('\u00c0' | surrogate >> 6);
                    final int n13 = n12 + 1;
                    outBuffer[n12] = (byte)('\u0080' | (surrogate & '?'));
                    outPtr = n13;
                    n14 = i;
                }
                else {
                    if (surrogate < '\ud800' || surrogate > '\udfff') {
                        final int n15 = n6 + 1;
                        outBuffer[n6] = (byte)('\u00e0' | surrogate >> 12);
                        final int n16 = n15 + 1;
                        outBuffer[n15] = (byte)('\u0080' | ('?' & surrogate >> 6));
                        outPtr = n16 + 1;
                        outBuffer[n16] = (byte)('\u0080' | (surrogate & '?'));
                        continue;
                    }
                    if (surrogate > '\udbff') {
                        this._outPtr = n6;
                        this.throwIllegal(surrogate);
                    }
                    this._surrogate = surrogate;
                    if (i >= n4) {
                        outPtr = n6;
                        this._outPtr = outPtr;
                        return;
                    }
                    n14 = i + 1;
                    final int convertSurrogate = this.convertSurrogate(array[i]);
                    if (convertSurrogate > 1114111) {
                        this._outPtr = n6;
                        this.throwIllegal(convertSurrogate);
                    }
                    final int n17 = n6 + 1;
                    outBuffer[n6] = (byte)(0xF0 | convertSurrogate >> 18);
                    final int n18 = n17 + 1;
                    outBuffer[n17] = (byte)(0x80 | (0x3F & convertSurrogate >> 12));
                    final int n19 = n18 + 1;
                    outBuffer[n18] = (byte)(0x80 | (0x3F & convertSurrogate >> 6));
                    final int n20 = n19 + 1;
                    outBuffer[n19] = (byte)(0x80 | (convertSurrogate & 0x3F));
                    outPtr = n20;
                }
                i = n14;
            }
            continue;
        }
    }
}
