package com.flurry.org.codehaus.jackson;

import java.util.*;

public final class Base64Variant
{
    public static final int BASE64_VALUE_INVALID = -1;
    public static final int BASE64_VALUE_PADDING = -2;
    static final char PADDING_CHAR_NONE;
    private final int[] _asciiToBase64;
    private final byte[] _base64ToAsciiB;
    private final char[] _base64ToAsciiC;
    final int _maxLineLength;
    final String _name;
    final char _paddingChar;
    final boolean _usesPadding;
    
    public Base64Variant(final Base64Variant base64Variant, final String s, final int n) {
        this(base64Variant, s, base64Variant._usesPadding, base64Variant._paddingChar, n);
    }
    
    public Base64Variant(final Base64Variant base64Variant, final String name, final boolean usesPadding, final char paddingChar, final int maxLineLength) {
        super();
        this._asciiToBase64 = new int[128];
        this._base64ToAsciiC = new char[64];
        this._base64ToAsciiB = new byte[64];
        this._name = name;
        final byte[] base64ToAsciiB = base64Variant._base64ToAsciiB;
        System.arraycopy(base64ToAsciiB, 0, this._base64ToAsciiB, 0, base64ToAsciiB.length);
        final char[] base64ToAsciiC = base64Variant._base64ToAsciiC;
        System.arraycopy(base64ToAsciiC, 0, this._base64ToAsciiC, 0, base64ToAsciiC.length);
        final int[] asciiToBase64 = base64Variant._asciiToBase64;
        System.arraycopy(asciiToBase64, 0, this._asciiToBase64, 0, asciiToBase64.length);
        this._usesPadding = usesPadding;
        this._paddingChar = paddingChar;
        this._maxLineLength = maxLineLength;
    }
    
    public Base64Variant(final String name, final String s, final boolean usesPadding, final char paddingChar, final int maxLineLength) {
        super();
        this._asciiToBase64 = new int[128];
        this._base64ToAsciiC = new char[64];
        this._base64ToAsciiB = new byte[64];
        this._name = name;
        this._usesPadding = usesPadding;
        this._paddingChar = paddingChar;
        this._maxLineLength = maxLineLength;
        final int length = s.length();
        if (length != 64) {
            throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + length + ")");
        }
        s.getChars(0, length, this._base64ToAsciiC, 0);
        Arrays.fill(this._asciiToBase64, -1);
        for (int i = 0; i < length; ++i) {
            final char c = this._base64ToAsciiC[i];
            this._base64ToAsciiB[i] = (byte)c;
            this._asciiToBase64[c] = i;
        }
        if (usesPadding) {
            this._asciiToBase64[paddingChar] = -2;
        }
    }
    
    public int decodeBase64Byte(final byte b) {
        if (b <= 127) {
            return this._asciiToBase64[b];
        }
        return -1;
    }
    
    public int decodeBase64Char(final char c) {
        if (c <= '\u007f') {
            return this._asciiToBase64[c];
        }
        return -1;
    }
    
    public int decodeBase64Char(final int n) {
        if (n <= 127) {
            return this._asciiToBase64[n];
        }
        return -1;
    }
    
    public String encode(final byte[] array) {
        return this.encode(array, false);
    }
    
    public String encode(final byte[] array, final boolean b) {
        final int length = array.length;
        final StringBuilder sb = new StringBuilder(length + (length >> 2) + (length >> 3));
        if (b) {
            sb.append('\"');
        }
        int n = this.getMaxLineLength() >> 2;
        int n2;
        int i;
        int n7;
        for (n2 = length - 3, i = 0; i <= n2; i = n7) {
            final int n3 = i + 1;
            final int n4 = array[i] << 8;
            final int n5 = n3 + 1;
            final int n6 = (n4 | (0xFF & array[n3])) << 8;
            n7 = n5 + 1;
            this.encodeBase64Chunk(sb, n6 | (0xFF & array[n5]));
            if (--n <= 0) {
                sb.append('\\');
                sb.append('n');
                n = this.getMaxLineLength() >> 2;
            }
        }
        final int n8 = length - i;
        if (n8 > 0) {
            final int n9 = i + 1;
            int n10 = array[i] << 16;
            if (n8 == 2) {
                n10 |= (0xFF & array[n9]) << 8;
            }
            this.encodeBase64Partial(sb, n10, n8);
        }
        if (b) {
            sb.append('\"');
        }
        return sb.toString();
    }
    
    public byte encodeBase64BitsAsByte(final int n) {
        return this._base64ToAsciiB[n];
    }
    
    public char encodeBase64BitsAsChar(final int n) {
        return this._base64ToAsciiC[n];
    }
    
    public int encodeBase64Chunk(final int n, final byte[] array, final int n2) {
        final int n3 = n2 + 1;
        array[n2] = this._base64ToAsciiB[0x3F & n >> 18];
        final int n4 = n3 + 1;
        array[n3] = this._base64ToAsciiB[0x3F & n >> 12];
        final int n5 = n4 + 1;
        array[n4] = this._base64ToAsciiB[0x3F & n >> 6];
        final int n6 = n5 + 1;
        array[n5] = this._base64ToAsciiB[n & 0x3F];
        return n6;
    }
    
    public int encodeBase64Chunk(final int n, final char[] array, final int n2) {
        final int n3 = n2 + 1;
        array[n2] = this._base64ToAsciiC[0x3F & n >> 18];
        final int n4 = n3 + 1;
        array[n3] = this._base64ToAsciiC[0x3F & n >> 12];
        final int n5 = n4 + 1;
        array[n4] = this._base64ToAsciiC[0x3F & n >> 6];
        final int n6 = n5 + 1;
        array[n5] = this._base64ToAsciiC[n & 0x3F];
        return n6;
    }
    
    public void encodeBase64Chunk(final StringBuilder sb, final int n) {
        sb.append(this._base64ToAsciiC[0x3F & n >> 18]);
        sb.append(this._base64ToAsciiC[0x3F & n >> 12]);
        sb.append(this._base64ToAsciiC[0x3F & n >> 6]);
        sb.append(this._base64ToAsciiC[n & 0x3F]);
    }
    
    public int encodeBase64Partial(final int n, final int n2, final byte[] array, final int n3) {
        final int n4 = n3 + 1;
        array[n3] = this._base64ToAsciiB[0x3F & n >> 18];
        int n5 = n4 + 1;
        array[n4] = this._base64ToAsciiB[0x3F & n >> 12];
        if (this._usesPadding) {
            final byte b = (byte)this._paddingChar;
            final int n6 = n5 + 1;
            byte b2;
            if (n2 == 2) {
                b2 = this._base64ToAsciiB[0x3F & n >> 6];
            }
            else {
                b2 = b;
            }
            array[n5] = b2;
            n5 = n6 + 1;
            array[n6] = b;
        }
        else if (n2 == 2) {
            final int n7 = n5 + 1;
            array[n5] = this._base64ToAsciiB[0x3F & n >> 6];
            return n7;
        }
        return n5;
    }
    
    public int encodeBase64Partial(final int n, final int n2, final char[] array, final int n3) {
        final int n4 = n3 + 1;
        array[n3] = this._base64ToAsciiC[0x3F & n >> 18];
        int n5 = n4 + 1;
        array[n4] = this._base64ToAsciiC[0x3F & n >> 12];
        if (this._usesPadding) {
            final int n6 = n5 + 1;
            char paddingChar;
            if (n2 == 2) {
                paddingChar = this._base64ToAsciiC[0x3F & n >> 6];
            }
            else {
                paddingChar = this._paddingChar;
            }
            array[n5] = paddingChar;
            n5 = n6 + 1;
            array[n6] = this._paddingChar;
        }
        else if (n2 == 2) {
            final int n7 = n5 + 1;
            array[n5] = this._base64ToAsciiC[0x3F & n >> 6];
            return n7;
        }
        return n5;
    }
    
    public void encodeBase64Partial(final StringBuilder sb, final int n, final int n2) {
        sb.append(this._base64ToAsciiC[0x3F & n >> 18]);
        sb.append(this._base64ToAsciiC[0x3F & n >> 12]);
        if (this._usesPadding) {
            char paddingChar;
            if (n2 == 2) {
                paddingChar = this._base64ToAsciiC[0x3F & n >> 6];
            }
            else {
                paddingChar = this._paddingChar;
            }
            sb.append(paddingChar);
            sb.append(this._paddingChar);
        }
        else if (n2 == 2) {
            sb.append(this._base64ToAsciiC[0x3F & n >> 6]);
        }
    }
    
    public int getMaxLineLength() {
        return this._maxLineLength;
    }
    
    public String getName() {
        return this._name;
    }
    
    public byte getPaddingByte() {
        return (byte)this._paddingChar;
    }
    
    public char getPaddingChar() {
        return this._paddingChar;
    }
    
    @Override
    public String toString() {
        return this._name;
    }
    
    public boolean usesPadding() {
        return this._usesPadding;
    }
    
    public boolean usesPaddingChar(final char c) {
        return c == this._paddingChar;
    }
    
    public boolean usesPaddingChar(final int n) {
        return n == this._paddingChar;
    }
}
