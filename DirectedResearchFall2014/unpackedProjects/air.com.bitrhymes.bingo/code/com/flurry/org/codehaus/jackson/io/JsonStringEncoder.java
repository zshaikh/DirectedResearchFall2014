package com.flurry.org.codehaus.jackson.io;

import java.lang.ref.*;
import com.flurry.org.codehaus.jackson.util.*;

public final class JsonStringEncoder
{
    private static final byte[] HEX_BYTES;
    private static final char[] HEX_CHARS;
    private static final int INT_0 = 48;
    private static final int INT_BACKSLASH = 92;
    private static final int INT_U = 117;
    private static final int SURR1_FIRST = 55296;
    private static final int SURR1_LAST = 56319;
    private static final int SURR2_FIRST = 56320;
    private static final int SURR2_LAST = 57343;
    protected static final ThreadLocal<SoftReference<JsonStringEncoder>> _threadEncoder;
    protected ByteArrayBuilder _byteBuilder;
    protected final char[] _quoteBuffer;
    protected TextBuffer _textBuffer;
    
    static {
        HEX_CHARS = CharTypes.copyHexChars();
        HEX_BYTES = CharTypes.copyHexBytes();
        _threadEncoder = new ThreadLocal<SoftReference<JsonStringEncoder>>();
    }
    
    public JsonStringEncoder() {
        super();
        (this._quoteBuffer = new char[6])[0] = '\\';
        this._quoteBuffer[2] = '0';
        this._quoteBuffer[3] = '0';
    }
    
    private int _appendByteEscape(int n, final int n2, final ByteArrayBuilder byteArrayBuilder, final int currentSegmentLength) {
        byteArrayBuilder.setCurrentSegmentLength(currentSegmentLength);
        byteArrayBuilder.append(92);
        if (n2 < 0) {
            byteArrayBuilder.append(117);
            if (n > 255) {
                final int n3 = n >> 8;
                byteArrayBuilder.append(JsonStringEncoder.HEX_BYTES[n3 >> 4]);
                byteArrayBuilder.append(JsonStringEncoder.HEX_BYTES[n3 & 0xF]);
                n &= 0xFF;
            }
            else {
                byteArrayBuilder.append(48);
                byteArrayBuilder.append(48);
            }
            byteArrayBuilder.append(JsonStringEncoder.HEX_BYTES[n >> 4]);
            byteArrayBuilder.append(JsonStringEncoder.HEX_BYTES[n & 0xF]);
        }
        else {
            byteArrayBuilder.append((byte)n2);
        }
        return byteArrayBuilder.getCurrentSegmentLength();
    }
    
    private int _appendSingleEscape(final int n, final char[] array) {
        if (n < 0) {
            final int n2 = -(n + 1);
            array[1] = 'u';
            array[4] = JsonStringEncoder.HEX_CHARS[n2 >> 4];
            array[5] = JsonStringEncoder.HEX_CHARS[n2 & 0xF];
            return 6;
        }
        array[1] = (char)n;
        return 2;
    }
    
    private int _convertSurrogate(final int i, final int j) {
        if (j < 56320 || j > 57343) {
            throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(j) + "; illegal combination");
        }
        return 65536 + (i - 55296 << 10) + (j - 56320);
    }
    
    private void _throwIllegalSurrogate(final int n) {
        if (n > 1114111) {
            throw new IllegalArgumentException("Illegal character point (0x" + Integer.toHexString(n) + ") to output; max is 0x10FFFF as per RFC 4627");
        }
        if (n < 55296) {
            throw new IllegalArgumentException("Illegal character point (0x" + Integer.toHexString(n) + ") to output");
        }
        if (n <= 56319) {
            throw new IllegalArgumentException("Unmatched first part of surrogate pair (0x" + Integer.toHexString(n) + ")");
        }
        throw new IllegalArgumentException("Unmatched second part of surrogate pair (0x" + Integer.toHexString(n) + ")");
    }
    
    public static JsonStringEncoder getInstance() {
        final SoftReference<JsonStringEncoder> softReference = JsonStringEncoder._threadEncoder.get();
        JsonStringEncoder referent;
        if (softReference == null) {
            referent = null;
        }
        else {
            referent = softReference.get();
        }
        if (referent == null) {
            referent = new JsonStringEncoder();
            JsonStringEncoder._threadEncoder.set(new SoftReference<JsonStringEncoder>(referent));
        }
        return referent;
    }
    
    public byte[] encodeAsUTF8(final String s) {
        ByteArrayBuilder byteBuilder = this._byteBuilder;
        if (byteBuilder == null) {
            byteBuilder = new ByteArrayBuilder(null);
            this._byteBuilder = byteBuilder;
        }
        final int length = s.length();
        int n = 0;
        byte[] array = byteBuilder.resetAndGetFirstSegment();
        int n2 = array.length;
        int i = 0;
        while (i < length) {
            final int n3 = i + 1;
            Label_0124: {
                int j;
                int n4;
                int n5;
                int n6;
                for (j = s.charAt(i), n4 = n3; j <= 127; j = s.charAt(n4), n = n5, n4 = n6) {
                    if (n >= n2) {
                        array = byteBuilder.finishCurrentSegment();
                        n2 = array.length;
                        n = 0;
                    }
                    n5 = n + 1;
                    array[n] = (byte)j;
                    if (n4 >= length) {
                        n = n5;
                        break Label_0124;
                    }
                    n6 = n4 + 1;
                }
                int n7;
                if (n >= n2) {
                    array = byteBuilder.finishCurrentSegment();
                    n2 = array.length;
                    n7 = 0;
                }
                else {
                    n7 = n;
                }
                int n8;
                int n9;
                if (j < 2048) {
                    n8 = n7 + 1;
                    array[n7] = (byte)(0xC0 | j >> 6);
                    n9 = n4;
                }
                else if (j < 55296 || j > 57343) {
                    int n10 = n7 + 1;
                    array[n7] = (byte)(0xE0 | j >> 12);
                    if (n10 >= n2) {
                        array = byteBuilder.finishCurrentSegment();
                        n2 = array.length;
                        n10 = 0;
                    }
                    final int n11 = n10 + 1;
                    array[n10] = (byte)(0x80 | (0x3F & j >> 6));
                    n8 = n11;
                    n9 = n4;
                }
                else {
                    if (j > 56319) {
                        this._throwIllegalSurrogate(j);
                    }
                    if (n4 >= length) {
                        this._throwIllegalSurrogate(j);
                    }
                    n9 = n4 + 1;
                    j = this._convertSurrogate(j, s.charAt(n4));
                    if (j > 1114111) {
                        this._throwIllegalSurrogate(j);
                    }
                    int n12 = n7 + 1;
                    array[n7] = (byte)(0xF0 | j >> 18);
                    if (n12 >= n2) {
                        array = byteBuilder.finishCurrentSegment();
                        n2 = array.length;
                        n12 = 0;
                    }
                    final int n13 = n12 + 1;
                    array[n12] = (byte)(0x80 | (0x3F & j >> 12));
                    int n14;
                    if (n13 >= n2) {
                        array = byteBuilder.finishCurrentSegment();
                        n2 = array.length;
                        n14 = 0;
                    }
                    else {
                        n14 = n13;
                    }
                    final int n15 = n14 + 1;
                    array[n14] = (byte)(0x80 | (0x3F & j >> 6));
                    n8 = n15;
                }
                if (n8 >= n2) {
                    array = byteBuilder.finishCurrentSegment();
                    n2 = array.length;
                    n8 = 0;
                }
                final int n16 = n8 + 1;
                array[n8] = (byte)(0x80 | (j & 0x3F));
                n = n16;
                i = n9;
                continue;
            }
            return this._byteBuilder.completeAndCoalesce(n);
        }
        return this._byteBuilder.completeAndCoalesce(n);
    }
    
    public char[] quoteAsString(final String s) {
        TextBuffer textBuffer = this._textBuffer;
        if (textBuffer == null) {
            textBuffer = new TextBuffer(null);
            this._textBuffer = textBuffer;
        }
        char[] array = textBuffer.emptyAndGetCurrentSegment();
        final int[] get7BitOutputEscapes = CharTypes.get7BitOutputEscapes();
        final int length = get7BitOutputEscapes.length;
        int i = 0;
        final int length2 = s.length();
        int currentLength = 0;
    Label_0225:
        while (i < length2) {
            while (true) {
                final char char1 = s.charAt(i);
                if (char1 < length && get7BitOutputEscapes[char1] != 0) {
                    final int n = i + 1;
                    final int appendSingleEscape = this._appendSingleEscape(get7BitOutputEscapes[s.charAt(i)], this._quoteBuffer);
                    if (currentLength + appendSingleEscape > array.length) {
                        final int n2 = array.length - currentLength;
                        if (n2 > 0) {
                            System.arraycopy(this._quoteBuffer, 0, array, currentLength, n2);
                        }
                        array = textBuffer.finishCurrentSegment();
                        final int n3 = appendSingleEscape - n2;
                        System.arraycopy(this._quoteBuffer, n2, array, currentLength, n3);
                        currentLength += n3;
                    }
                    else {
                        System.arraycopy(this._quoteBuffer, 0, array, currentLength, appendSingleEscape);
                        currentLength += appendSingleEscape;
                    }
                    i = n;
                    break;
                }
                if (currentLength >= array.length) {
                    array = textBuffer.finishCurrentSegment();
                    currentLength = 0;
                }
                final int n4 = currentLength + 1;
                array[currentLength] = char1;
                if (++i >= length2) {
                    currentLength = n4;
                    break Label_0225;
                }
                currentLength = n4;
            }
        }
        textBuffer.setCurrentLength(currentLength);
        return textBuffer.contentsAsArray();
    }
    
    public byte[] quoteAsUTF8(final String s) {
        ByteArrayBuilder byteBuilder = this._byteBuilder;
        if (byteBuilder == null) {
            byteBuilder = new ByteArrayBuilder(null);
            this._byteBuilder = byteBuilder;
        }
        int i = 0;
        final int length = s.length();
        int appendByteEscape = 0;
        byte[] array = byteBuilder.resetAndGetFirstSegment();
    Label_0181:
        while (i < length) {
            final int[] get7BitOutputEscapes = CharTypes.get7BitOutputEscapes();
            while (true) {
                final char char1 = s.charAt(i);
                if (char1 > '\u007f' || get7BitOutputEscapes[char1] != 0) {
                    if (appendByteEscape >= array.length) {
                        array = byteBuilder.finishCurrentSegment();
                        appendByteEscape = 0;
                    }
                    final int index = i + 1;
                    final char char2 = s.charAt(i);
                    if (char2 <= '\u007f') {
                        appendByteEscape = this._appendByteEscape(char2, get7BitOutputEscapes[char2], byteBuilder, appendByteEscape);
                        array = byteBuilder.getCurrentSegment();
                        i = index;
                        break;
                    }
                    int n2;
                    int n3;
                    if (char2 <= '\u07ff') {
                        final int n = appendByteEscape + 1;
                        array[appendByteEscape] = (byte)('\u00c0' | char2 >> 6);
                        n2 = ('\u0080' | (char2 & '?'));
                        n3 = n;
                        i = index;
                    }
                    else if (char2 < '\ud800' || char2 > '\udfff') {
                        final int n4 = appendByteEscape + 1;
                        array[appendByteEscape] = (byte)('\u00e0' | char2 >> 12);
                        int n5;
                        if (n4 >= array.length) {
                            array = byteBuilder.finishCurrentSegment();
                            n5 = 0;
                        }
                        else {
                            n5 = n4;
                        }
                        final int n6 = n5 + 1;
                        array[n5] = (byte)('\u0080' | ('?' & char2 >> 6));
                        n2 = ('\u0080' | (char2 & '?'));
                        n3 = n6;
                        i = index;
                    }
                    else {
                        if (char2 > '\udbff') {
                            this._throwIllegalSurrogate(char2);
                        }
                        if (index >= length) {
                            this._throwIllegalSurrogate(char2);
                        }
                        i = index + 1;
                        final int convertSurrogate = this._convertSurrogate(char2, s.charAt(index));
                        if (convertSurrogate > 1114111) {
                            this._throwIllegalSurrogate(convertSurrogate);
                        }
                        final int n7 = appendByteEscape + 1;
                        array[appendByteEscape] = (byte)(0xF0 | convertSurrogate >> 18);
                        int n8;
                        if (n7 >= array.length) {
                            array = byteBuilder.finishCurrentSegment();
                            n8 = 0;
                        }
                        else {
                            n8 = n7;
                        }
                        final int n9 = n8 + 1;
                        array[n8] = (byte)(0x80 | (0x3F & convertSurrogate >> 12));
                        int n10;
                        if (n9 >= array.length) {
                            array = byteBuilder.finishCurrentSegment();
                            n10 = 0;
                        }
                        else {
                            n10 = n9;
                        }
                        final int n11 = n10 + 1;
                        array[n10] = (byte)(0x80 | (0x3F & convertSurrogate >> 6));
                        n2 = (0x80 | (convertSurrogate & 0x3F));
                        n3 = n11;
                    }
                    if (n3 >= array.length) {
                        array = byteBuilder.finishCurrentSegment();
                        n3 = 0;
                    }
                    final int n12 = n3 + 1;
                    array[n3] = (byte)n2;
                    appendByteEscape = n12;
                    break;
                }
                else {
                    if (appendByteEscape >= array.length) {
                        array = byteBuilder.finishCurrentSegment();
                        appendByteEscape = 0;
                    }
                    final int n13 = appendByteEscape + 1;
                    array[appendByteEscape] = (byte)char1;
                    if (++i >= length) {
                        appendByteEscape = n13;
                        break Label_0181;
                    }
                    appendByteEscape = n13;
                }
            }
        }
        return this._byteBuilder.completeAndCoalesce(appendByteEscape);
    }
}
