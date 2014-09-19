package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.math.*;

public class Utf8Generator extends JsonGeneratorBase
{
    private static final byte BYTE_0 = 48;
    private static final byte BYTE_BACKSLASH = 92;
    private static final byte BYTE_COLON = 58;
    private static final byte BYTE_COMMA = 44;
    private static final byte BYTE_LBRACKET = 91;
    private static final byte BYTE_LCURLY = 123;
    private static final byte BYTE_QUOTE = 34;
    private static final byte BYTE_RBRACKET = 93;
    private static final byte BYTE_RCURLY = 125;
    private static final byte BYTE_SPACE = 32;
    private static final byte BYTE_u = 117;
    private static final byte[] FALSE_BYTES;
    static final byte[] HEX_CHARS;
    private static final int MAX_BYTES_TO_BUFFER = 512;
    private static final byte[] NULL_BYTES;
    protected static final int SURR1_FIRST = 55296;
    protected static final int SURR1_LAST = 56319;
    protected static final int SURR2_FIRST = 56320;
    protected static final int SURR2_LAST = 57343;
    private static final byte[] TRUE_BYTES;
    protected static final int[] sOutputEscapes;
    protected boolean _bufferRecyclable;
    protected char[] _charBuffer;
    protected final int _charBufferLength;
    protected CharacterEscapes _characterEscapes;
    protected byte[] _entityBuffer;
    protected final IOContext _ioContext;
    protected int _maximumNonEscapedChar;
    protected byte[] _outputBuffer;
    protected final int _outputEnd;
    protected int[] _outputEscapes;
    protected final int _outputMaxContiguous;
    protected final OutputStream _outputStream;
    protected int _outputTail;
    
    static {
        HEX_CHARS = CharTypes.copyHexBytes();
        NULL_BYTES = new byte[] { 110, 117, 108, 108 };
        TRUE_BYTES = new byte[] { 116, 114, 117, 101 };
        FALSE_BYTES = new byte[] { 102, 97, 108, 115, 101 };
        sOutputEscapes = CharTypes.get7BitOutputEscapes();
    }
    
    public Utf8Generator(final IOContext ioContext, final int n, final ObjectCodec objectCodec, final OutputStream outputStream) {
        super(n, objectCodec);
        this._outputEscapes = Utf8Generator.sOutputEscapes;
        this._outputTail = 0;
        this._ioContext = ioContext;
        this._outputStream = outputStream;
        this._bufferRecyclable = true;
        this._outputBuffer = ioContext.allocWriteEncodingBuffer();
        this._outputEnd = this._outputBuffer.length;
        this._outputMaxContiguous = this._outputEnd >> 3;
        this._charBuffer = ioContext.allocConcatBuffer();
        this._charBufferLength = this._charBuffer.length;
        if (this.isEnabled(Feature.ESCAPE_NON_ASCII)) {
            this.setHighestNonEscapedChar(127);
        }
    }
    
    public Utf8Generator(final IOContext ioContext, final int n, final ObjectCodec objectCodec, final OutputStream outputStream, final byte[] outputBuffer, final int outputTail, final boolean bufferRecyclable) {
        super(n, objectCodec);
        this._outputEscapes = Utf8Generator.sOutputEscapes;
        this._outputTail = 0;
        this._ioContext = ioContext;
        this._outputStream = outputStream;
        this._bufferRecyclable = bufferRecyclable;
        this._outputTail = outputTail;
        this._outputBuffer = outputBuffer;
        this._outputEnd = this._outputBuffer.length;
        this._outputMaxContiguous = this._outputEnd >> 3;
        this._charBuffer = ioContext.allocConcatBuffer();
        this._charBufferLength = this._charBuffer.length;
        if (this.isEnabled(Feature.ESCAPE_NON_ASCII)) {
            this.setHighestNonEscapedChar(127);
        }
    }
    
    private int _handleLongCustomEscape(final byte[] array, int outputTail, final int n, final byte[] b, final int n2) throws IOException, JsonGenerationException {
        final int length = b.length;
        if (outputTail + length > n) {
            this._outputTail = outputTail;
            this._flushBuffer();
            final int outputTail2 = this._outputTail;
            if (length > array.length) {
                this._outputStream.write(b, 0, length);
                return outputTail2;
            }
            System.arraycopy(b, 0, array, outputTail2, length);
            outputTail = outputTail2 + length;
        }
        if (outputTail + n2 * 6 > n) {
            this._flushBuffer();
            return this._outputTail;
        }
        return outputTail;
    }
    
    private final int _outputMultiByteChar(final int n, final int n2) throws IOException {
        final byte[] outputBuffer = this._outputBuffer;
        if (n >= 55296 && n <= 57343) {
            final int n3 = n2 + 1;
            outputBuffer[n2] = 92;
            final int n4 = n3 + 1;
            outputBuffer[n3] = 117;
            final int n5 = n4 + 1;
            outputBuffer[n4] = Utf8Generator.HEX_CHARS[0xF & n >> 12];
            final int n6 = n5 + 1;
            outputBuffer[n5] = Utf8Generator.HEX_CHARS[0xF & n >> 8];
            final int n7 = n6 + 1;
            outputBuffer[n6] = Utf8Generator.HEX_CHARS[0xF & n >> 4];
            final int n8 = n7 + 1;
            outputBuffer[n7] = Utf8Generator.HEX_CHARS[n & 0xF];
            return n8;
        }
        final int n9 = n2 + 1;
        outputBuffer[n2] = (byte)(0xE0 | n >> 12);
        final int n10 = n9 + 1;
        outputBuffer[n9] = (byte)(0x80 | (0x3F & n >> 6));
        final int n11 = n10 + 1;
        outputBuffer[n10] = (byte)(0x80 | (n & 0x3F));
        return n11;
    }
    
    private final int _outputRawMultiByteChar(final int n, final char[] array, final int n2, final int n3) throws IOException {
        if (n >= 55296 && n <= 57343) {
            if (n2 >= n3) {
                this._reportError("Split surrogate on writeRaw() input (last character)");
            }
            this._outputSurrogates(n, array[n2]);
            return n2 + 1;
        }
        final byte[] outputBuffer = this._outputBuffer;
        outputBuffer[this._outputTail++] = (byte)(0xE0 | n >> 12);
        outputBuffer[this._outputTail++] = (byte)(0x80 | (0x3F & n >> 6));
        outputBuffer[this._outputTail++] = (byte)(0x80 | (n & 0x3F));
        return n2;
    }
    
    private final void _writeBytes(final byte[] b) throws IOException {
        final int length = b.length;
        if (length + this._outputTail > this._outputEnd) {
            this._flushBuffer();
            if (length > 512) {
                this._outputStream.write(b, 0, length);
                return;
            }
        }
        System.arraycopy(b, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }
    
    private final void _writeBytes(final byte[] b, final int off, final int len) throws IOException {
        if (len + this._outputTail > this._outputEnd) {
            this._flushBuffer();
            if (len > 512) {
                this._outputStream.write(b, off, len);
                return;
            }
        }
        System.arraycopy(b, off, this._outputBuffer, this._outputTail, len);
        this._outputTail += len;
    }
    
    private int _writeCustomEscape(final byte[] array, final int n, final SerializableString serializableString, final int n2) throws IOException, JsonGenerationException {
        final byte[] unquotedUTF8 = serializableString.asUnquotedUTF8();
        final int length = unquotedUTF8.length;
        if (length > 6) {
            return this._handleLongCustomEscape(array, n, this._outputEnd, unquotedUTF8, n2);
        }
        System.arraycopy(unquotedUTF8, 0, array, n, length);
        return n + length;
    }
    
    private final void _writeCustomStringSegment2(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        if (this._outputTail + 6 * (n2 - n) > this._outputEnd) {
            this._flushBuffer();
        }
        final int outputTail = this._outputTail;
        final byte[] outputBuffer = this._outputBuffer;
        final int[] outputEscapes = this._outputEscapes;
        int maximumNonEscapedChar;
        if (this._maximumNonEscapedChar <= 0) {
            maximumNonEscapedChar = 65535;
        }
        else {
            maximumNonEscapedChar = this._maximumNonEscapedChar;
        }
        final CharacterEscapes characterEscapes = this._characterEscapes;
        int outputTail2 = outputTail;
        int n3;
        for (int i = n; i < n2; i = n3) {
            n3 = i + 1;
            final char j = array[i];
            if (j <= '\u007f') {
                if (outputEscapes[j] == 0) {
                    final int n4 = outputTail2 + 1;
                    outputBuffer[outputTail2] = (byte)j;
                    outputTail2 = n4;
                }
                else {
                    final int n5 = outputEscapes[j];
                    if (n5 > 0) {
                        final int n6 = outputTail2 + 1;
                        outputBuffer[outputTail2] = 92;
                        outputTail2 = n6 + 1;
                        outputBuffer[n6] = (byte)n5;
                    }
                    else if (n5 == -2) {
                        final SerializableString escapeSequence = characterEscapes.getEscapeSequence(j);
                        if (escapeSequence == null) {
                            throw new JsonGenerationException("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(j) + ", although was supposed to have one");
                        }
                        outputTail2 = this._writeCustomEscape(outputBuffer, outputTail2, escapeSequence, n2 - n3);
                    }
                    else {
                        outputTail2 = this._writeGenericEscape(j, outputTail2);
                    }
                }
            }
            else if (j > maximumNonEscapedChar) {
                outputTail2 = this._writeGenericEscape(j, outputTail2);
            }
            else {
                final SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(j);
                if (escapeSequence2 != null) {
                    outputTail2 = this._writeCustomEscape(outputBuffer, outputTail2, escapeSequence2, n2 - n3);
                }
                else {
                    int outputMultiByteChar;
                    if (j <= '\u07ff') {
                        final int n7 = outputTail2 + 1;
                        outputBuffer[outputTail2] = (byte)('\u00c0' | j >> 6);
                        final int n8 = n7 + 1;
                        outputBuffer[n7] = (byte)('\u0080' | (j & '?'));
                        outputMultiByteChar = n8;
                    }
                    else {
                        outputMultiByteChar = this._outputMultiByteChar(j, outputTail2);
                    }
                    outputTail2 = outputMultiByteChar;
                }
            }
        }
        this._outputTail = outputTail2;
    }
    
    private int _writeGenericEscape(int n, final int n2) throws IOException {
        final byte[] outputBuffer = this._outputBuffer;
        final int n3 = n2 + 1;
        outputBuffer[n2] = 92;
        final int n4 = n3 + 1;
        outputBuffer[n3] = 117;
        int n7;
        if (n > 255) {
            final int n5 = 0xFF & n >> 8;
            final int n6 = n4 + 1;
            outputBuffer[n4] = Utf8Generator.HEX_CHARS[n5 >> 4];
            n7 = n6 + 1;
            outputBuffer[n6] = Utf8Generator.HEX_CHARS[n5 & 0xF];
            n &= 0xFF;
        }
        else {
            final int n8 = n4 + 1;
            outputBuffer[n4] = 48;
            n7 = n8 + 1;
            outputBuffer[n8] = 48;
        }
        final int n9 = n7 + 1;
        outputBuffer[n7] = Utf8Generator.HEX_CHARS[n >> 4];
        final int n10 = n9 + 1;
        outputBuffer[n9] = Utf8Generator.HEX_CHARS[n & 0xF];
        return n10;
    }
    
    private final void _writeLongString(final String s) throws IOException, JsonGenerationException {
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this._writeStringSegments(s);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    private final void _writeLongString(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this._writeStringSegments(this._charBuffer, 0, n2);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    private final void _writeNull() throws IOException {
        if (4 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        System.arraycopy(Utf8Generator.NULL_BYTES, 0, this._outputBuffer, this._outputTail, 4);
        this._outputTail += 4;
    }
    
    private final void _writeQuotedInt(final int n) throws IOException {
        if (13 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this._outputTail = NumberOutput.outputInt(n, this._outputBuffer, this._outputTail);
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    private final void _writeQuotedLong(final long n) throws IOException {
        if (23 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this._outputTail = NumberOutput.outputLong(n, this._outputBuffer, this._outputTail);
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    private final void _writeQuotedRaw(final Object o) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this.writeRaw(o.toString());
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    private final void _writeSegmentedRaw(final char[] array, int i, final int n) throws IOException, JsonGenerationException {
        final int outputEnd = this._outputEnd;
        final byte[] outputBuffer = this._outputBuffer;
    Label_0012:
        while (i < n) {
            do {
                final char c = array[i];
                if (c >= '\u0080') {
                    if (3 + this._outputTail >= this._outputEnd) {
                        this._flushBuffer();
                    }
                    final int n2 = i + 1;
                    final char c2 = array[i];
                    if (c2 < '\u0800') {
                        outputBuffer[this._outputTail++] = (byte)('\u00c0' | c2 >> 6);
                        outputBuffer[this._outputTail++] = (byte)('\u0080' | (c2 & '?'));
                    }
                    else {
                        this._outputRawMultiByteChar(c2, array, n2, n);
                    }
                    i = n2;
                    continue Label_0012;
                }
                if (this._outputTail >= outputEnd) {
                    this._flushBuffer();
                }
                outputBuffer[this._outputTail++] = (byte)c;
            } while (++i < n);
            break;
        }
    }
    
    private final void _writeStringSegment(final char[] array, int i, final int n) throws IOException, JsonGenerationException {
        final int n2 = n + i;
        final int outputTail = this._outputTail;
        final byte[] outputBuffer = this._outputBuffer;
        final int[] outputEscapes = this._outputEscapes;
        int outputTail2 = outputTail;
        while (i < n2) {
            final char c = array[i];
            if (c > '\u007f' || outputEscapes[c] != 0) {
                break;
            }
            final int n3 = outputTail2 + 1;
            outputBuffer[outputTail2] = (byte)c;
            ++i;
            outputTail2 = n3;
        }
        this._outputTail = outputTail2;
        if (i < n2) {
            if (this._characterEscapes != null) {
                this._writeCustomStringSegment2(array, i, n2);
            }
            else {
                if (this._maximumNonEscapedChar == 0) {
                    this._writeStringSegment2(array, i, n2);
                    return;
                }
                this._writeStringSegmentASCII2(array, i, n2);
            }
        }
    }
    
    private final void _writeStringSegment2(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        if (this._outputTail + 6 * (n2 - n) > this._outputEnd) {
            this._flushBuffer();
        }
        final int outputTail = this._outputTail;
        final byte[] outputBuffer = this._outputBuffer;
        final int[] outputEscapes = this._outputEscapes;
        int writeGenericEscape = outputTail;
        int n3;
        for (int i = n; i < n2; i = n3) {
            n3 = i + 1;
            final char c = array[i];
            if (c <= '\u007f') {
                if (outputEscapes[c] == 0) {
                    final int n4 = writeGenericEscape + 1;
                    outputBuffer[writeGenericEscape] = (byte)c;
                    writeGenericEscape = n4;
                }
                else {
                    final int n5 = outputEscapes[c];
                    if (n5 > 0) {
                        final int n6 = writeGenericEscape + 1;
                        outputBuffer[writeGenericEscape] = 92;
                        writeGenericEscape = n6 + 1;
                        outputBuffer[n6] = (byte)n5;
                    }
                    else {
                        writeGenericEscape = this._writeGenericEscape(c, writeGenericEscape);
                    }
                }
            }
            else {
                int outputMultiByteChar;
                if (c <= '\u07ff') {
                    final int n7 = writeGenericEscape + 1;
                    outputBuffer[writeGenericEscape] = (byte)('\u00c0' | c >> 6);
                    final int n8 = n7 + 1;
                    outputBuffer[n7] = (byte)('\u0080' | (c & '?'));
                    outputMultiByteChar = n8;
                }
                else {
                    outputMultiByteChar = this._outputMultiByteChar(c, writeGenericEscape);
                }
                writeGenericEscape = outputMultiByteChar;
            }
        }
        this._outputTail = writeGenericEscape;
    }
    
    private final void _writeStringSegmentASCII2(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        if (this._outputTail + 6 * (n2 - n) > this._outputEnd) {
            this._flushBuffer();
        }
        final int outputTail = this._outputTail;
        final byte[] outputBuffer = this._outputBuffer;
        final int[] outputEscapes = this._outputEscapes;
        final int maximumNonEscapedChar = this._maximumNonEscapedChar;
        int outputTail2 = outputTail;
        int n3;
        for (int i = n; i < n2; i = n3) {
            n3 = i + 1;
            final char c = array[i];
            if (c <= '\u007f') {
                if (outputEscapes[c] == 0) {
                    final int n4 = outputTail2 + 1;
                    outputBuffer[outputTail2] = (byte)c;
                    outputTail2 = n4;
                }
                else {
                    final int n5 = outputEscapes[c];
                    if (n5 > 0) {
                        final int n6 = outputTail2 + 1;
                        outputBuffer[outputTail2] = 92;
                        outputTail2 = n6 + 1;
                        outputBuffer[n6] = (byte)n5;
                    }
                    else {
                        outputTail2 = this._writeGenericEscape(c, outputTail2);
                    }
                }
            }
            else if (c > maximumNonEscapedChar) {
                outputTail2 = this._writeGenericEscape(c, outputTail2);
            }
            else {
                int outputMultiByteChar;
                if (c <= '\u07ff') {
                    final int n7 = outputTail2 + 1;
                    outputBuffer[outputTail2] = (byte)('\u00c0' | c >> 6);
                    final int n8 = n7 + 1;
                    outputBuffer[n7] = (byte)('\u0080' | (c & '?'));
                    outputMultiByteChar = n8;
                }
                else {
                    outputMultiByteChar = this._outputMultiByteChar(c, outputTail2);
                }
                outputTail2 = outputMultiByteChar;
            }
        }
        this._outputTail = outputTail2;
    }
    
    private final void _writeStringSegments(final String s) throws IOException, JsonGenerationException {
        int i = s.length();
        int srcBegin = 0;
        final char[] charBuffer = this._charBuffer;
        while (i > 0) {
            final int min = Math.min(this._outputMaxContiguous, i);
            s.getChars(srcBegin, srcBegin + min, charBuffer, 0);
            if (min + this._outputTail > this._outputEnd) {
                this._flushBuffer();
            }
            this._writeStringSegment(charBuffer, 0, min);
            srcBegin += min;
            i -= min;
        }
    }
    
    private final void _writeStringSegments(final char[] array, int n, int i) throws IOException, JsonGenerationException {
        do {
            final int min = Math.min(this._outputMaxContiguous, i);
            if (min + this._outputTail > this._outputEnd) {
                this._flushBuffer();
            }
            this._writeStringSegment(array, n, min);
            n += min;
            i -= min;
        } while (i > 0);
    }
    
    private final void _writeUTF8Segment(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        final int[] outputEscapes = this._outputEscapes;
        int n4;
        for (int n3 = n + n2, i = n; i < n3; i = n4) {
            n4 = i + 1;
            final byte b = array[i];
            if (b >= 0 && outputEscapes[b] != 0) {
                this._writeUTF8Segment2(array, n, n2);
                return;
            }
        }
        if (n2 + this._outputTail > this._outputEnd) {
            this._flushBuffer();
        }
        System.arraycopy(array, n, this._outputBuffer, this._outputTail, n2);
        this._outputTail += n2;
    }
    
    private final void _writeUTF8Segment2(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        int n3 = this._outputTail;
        if (n3 + n2 * 6 > this._outputEnd) {
            this._flushBuffer();
            n3 = this._outputTail;
        }
        final byte[] outputBuffer = this._outputBuffer;
        final int[] outputEscapes = this._outputEscapes;
        final int n4 = n2 + n;
        int outputTail = n3;
        int n5;
        for (int i = n; i < n4; i = n5) {
            n5 = i + 1;
            final byte b = array[i];
            if (b < 0 || outputEscapes[b] == 0) {
                final int n6 = outputTail + 1;
                outputBuffer[outputTail] = b;
                outputTail = n6;
            }
            else {
                final int n7 = outputEscapes[b];
                int writeGenericEscape;
                if (n7 > 0) {
                    final int n8 = outputTail + 1;
                    outputBuffer[outputTail] = 92;
                    final int n9 = n8 + 1;
                    outputBuffer[n8] = (byte)n7;
                    writeGenericEscape = n9;
                }
                else {
                    writeGenericEscape = this._writeGenericEscape(b, outputTail);
                }
                outputTail = writeGenericEscape;
            }
        }
        this._outputTail = outputTail;
    }
    
    private final void _writeUTF8Segments(final byte[] array, int n, int i) throws IOException, JsonGenerationException {
        do {
            final int min = Math.min(this._outputMaxContiguous, i);
            this._writeUTF8Segment(array, n, min);
            n += min;
            i -= min;
        } while (i > 0);
    }
    
    protected final int _decodeSurrogate(final int i, final int j) throws IOException {
        if (j < 56320 || j > 57343) {
            this._reportError("Incomplete surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(j));
        }
        return 65536 + (i - 55296 << 10) + (j - 56320);
    }
    
    protected final void _flushBuffer() throws IOException {
        final int outputTail = this._outputTail;
        if (outputTail > 0) {
            this._outputTail = 0;
            this._outputStream.write(this._outputBuffer, 0, outputTail);
        }
    }
    
    protected final void _outputSurrogates(final int n, final int n2) throws IOException {
        final int decodeSurrogate = this._decodeSurrogate(n, n2);
        if (4 + this._outputTail > this._outputEnd) {
            this._flushBuffer();
        }
        final byte[] outputBuffer = this._outputBuffer;
        outputBuffer[this._outputTail++] = (byte)(0xF0 | decodeSurrogate >> 18);
        outputBuffer[this._outputTail++] = (byte)(0x80 | (0x3F & decodeSurrogate >> 12));
        outputBuffer[this._outputTail++] = (byte)(0x80 | (0x3F & decodeSurrogate >> 6));
        outputBuffer[this._outputTail++] = (byte)(0x80 | (decodeSurrogate & 0x3F));
    }
    
    @Override
    protected void _releaseBuffers() {
        final byte[] outputBuffer = this._outputBuffer;
        if (outputBuffer != null && this._bufferRecyclable) {
            this._outputBuffer = null;
            this._ioContext.releaseWriteEncodingBuffer(outputBuffer);
        }
        final char[] charBuffer = this._charBuffer;
        if (charBuffer != null) {
            this._charBuffer = null;
            this._ioContext.releaseConcatBuffer(charBuffer);
        }
    }
    
    protected final void _verifyPrettyValueWrite(final String s, final int n) throws IOException, JsonGenerationException {
        switch (n) {
            default: {
                this._cantHappen();
                break;
            }
            case 1: {
                this._cfgPrettyPrinter.writeArrayValueSeparator(this);
            }
            case 2: {
                this._cfgPrettyPrinter.writeObjectFieldValueSeparator(this);
            }
            case 3: {
                this._cfgPrettyPrinter.writeRootValueSeparator(this);
            }
            case 0: {
                if (this._writeContext.inArray()) {
                    this._cfgPrettyPrinter.beforeArrayValues(this);
                    return;
                }
                if (this._writeContext.inObject()) {
                    this._cfgPrettyPrinter.beforeObjectEntries(this);
                    return;
                }
                break;
            }
        }
    }
    
    @Override
    protected final void _verifyValueWrite(final String str) throws IOException, JsonGenerationException {
        final int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            this._reportError("Can not " + str + ", expecting field name");
        }
        if (this._cfgPrettyPrinter == null) {
            byte b = 0;
            switch (writeValue) {
                default: {
                    return;
                }
                case 1: {
                    b = 44;
                    break;
                }
                case 2: {
                    b = 58;
                    break;
                }
                case 3: {
                    b = 32;
                    break;
                }
            }
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail] = b;
            ++this._outputTail;
            return;
        }
        this._verifyPrettyValueWrite(str, writeValue);
    }
    
    protected void _writeBinary(final Base64Variant base64Variant, final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        final int n3 = n2 - 3;
        final int n4 = this._outputEnd - 6;
        int n5 = base64Variant.getMaxLineLength() >> 2;
        int i;
        int n10;
        for (i = n; i <= n3; i = n10) {
            if (this._outputTail > n4) {
                this._flushBuffer();
            }
            final int n6 = i + 1;
            final int n7 = array[i] << 8;
            final int n8 = n6 + 1;
            final int n9 = (n7 | (0xFF & array[n6])) << 8;
            n10 = n8 + 1;
            this._outputTail = base64Variant.encodeBase64Chunk(n9 | (0xFF & array[n8]), this._outputBuffer, this._outputTail);
            if (--n5 <= 0) {
                this._outputBuffer[this._outputTail++] = 92;
                this._outputBuffer[this._outputTail++] = 110;
                n5 = base64Variant.getMaxLineLength() >> 2;
            }
        }
        final int n11 = n2 - i;
        if (n11 > 0) {
            if (this._outputTail > n4) {
                this._flushBuffer();
            }
            final int n12 = i + 1;
            int n13 = array[i] << 16;
            if (n11 == 2) {
                n13 |= (0xFF & array[n12]) << 8;
            }
            this._outputTail = base64Variant.encodeBase64Partial(n13, n11, this._outputBuffer, this._outputTail);
        }
    }
    
    protected final void _writeFieldName(final SerializableString serializableString) throws IOException, JsonGenerationException {
        final byte[] quotedUTF8 = serializableString.asQuotedUTF8();
        if (!this.isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            this._writeBytes(quotedUTF8);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        final int length = quotedUTF8.length;
        if (1 + (length + this._outputTail) < this._outputEnd) {
            System.arraycopy(quotedUTF8, 0, this._outputBuffer, this._outputTail, length);
            this._outputTail += length;
            this._outputBuffer[this._outputTail++] = 34;
            return;
        }
        this._writeBytes(quotedUTF8);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    protected final void _writeFieldName(final String s) throws IOException, JsonGenerationException {
        if (!this.isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            this._writeStringSegments(s);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        final int length = s.length();
        if (length <= this._charBufferLength) {
            s.getChars(0, length, this._charBuffer, 0);
            if (length <= this._outputMaxContiguous) {
                if (length + this._outputTail > this._outputEnd) {
                    this._flushBuffer();
                }
                this._writeStringSegment(this._charBuffer, 0, length);
            }
            else {
                this._writeStringSegments(this._charBuffer, 0, length);
            }
        }
        else {
            this._writeStringSegments(s);
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    protected final void _writePPFieldName(final SerializableString serializableString, final boolean b) throws IOException, JsonGenerationException {
        if (b) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        }
        else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        final boolean enabled = this.isEnabled(Feature.QUOTE_FIELD_NAMES);
        if (enabled) {
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = 34;
        }
        this._writeBytes(serializableString.asQuotedUTF8());
        if (enabled) {
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = 34;
        }
    }
    
    protected final void _writePPFieldName(final String s, final boolean b) throws IOException, JsonGenerationException {
        if (b) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        }
        else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this.isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = 34;
            final int length = s.length();
            if (length <= this._charBufferLength) {
                s.getChars(0, length, this._charBuffer, 0);
                if (length <= this._outputMaxContiguous) {
                    if (length + this._outputTail > this._outputEnd) {
                        this._flushBuffer();
                    }
                    this._writeStringSegment(this._charBuffer, 0, length);
                }
                else {
                    this._writeStringSegments(this._charBuffer, 0, length);
                }
            }
            else {
                this._writeStringSegments(s);
            }
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = 34;
            return;
        }
        this._writeStringSegments(s);
    }
    
    @Override
    public void close() throws IOException {
        super.close();
        if (this._outputBuffer != null && this.isEnabled(Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                final JsonWriteContext outputContext = this.getOutputContext();
                if (outputContext.inArray()) {
                    this.writeEndArray();
                }
                else {
                    if (!outputContext.inObject()) {
                        break;
                    }
                    this.writeEndObject();
                }
            }
        }
        this._flushBuffer();
        if (this._outputStream != null) {
            if (this._ioContext.isResourceManaged() || this.isEnabled(Feature.AUTO_CLOSE_TARGET)) {
                this._outputStream.close();
            }
            else if (this.isEnabled(Feature.FLUSH_PASSED_TO_STREAM)) {
                this._outputStream.flush();
            }
        }
        this._releaseBuffers();
    }
    
    @Override
    public final void flush() throws IOException {
        this._flushBuffer();
        if (this._outputStream != null && this.isEnabled(Feature.FLUSH_PASSED_TO_STREAM)) {
            this._outputStream.flush();
        }
    }
    
    @Override
    public CharacterEscapes getCharacterEscapes() {
        return this._characterEscapes;
    }
    
    @Override
    public int getHighestEscapedChar() {
        return this._maximumNonEscapedChar;
    }
    
    @Override
    public Object getOutputTarget() {
        return this._outputStream;
    }
    
    @Override
    public JsonGenerator setCharacterEscapes(final CharacterEscapes characterEscapes) {
        this._characterEscapes = characterEscapes;
        if (characterEscapes == null) {
            this._outputEscapes = Utf8Generator.sOutputEscapes;
            return this;
        }
        this._outputEscapes = characterEscapes.getEscapeCodesForAscii();
        return this;
    }
    
    @Override
    public JsonGenerator setHighestNonEscapedChar(final int n) {
        int maximumNonEscapedChar;
        if (n < 0) {
            maximumNonEscapedChar = 0;
        }
        else {
            maximumNonEscapedChar = n;
        }
        this._maximumNonEscapedChar = maximumNonEscapedChar;
        return this;
    }
    
    @Override
    public void writeBinary(final Base64Variant base64Variant, final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write binary value");
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this._writeBinary(base64Variant, array, n, n + n2);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write boolean value");
        if (5 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        byte[] array;
        if (b) {
            array = Utf8Generator.TRUE_BYTES;
        }
        else {
            array = Utf8Generator.FALSE_BYTES;
        }
        final int length = array.length;
        System.arraycopy(array, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }
    
    @Override
    public final void writeEndArray() throws IOException, JsonGenerationException {
        if (!this._writeContext.inArray()) {
            this._reportError("Current context not an ARRAY but " + this._writeContext.getTypeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        }
        else {
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = 93;
        }
        this._writeContext = this._writeContext.getParent();
    }
    
    @Override
    public final void writeEndObject() throws IOException, JsonGenerationException {
        if (!this._writeContext.inObject()) {
            this._reportError("Current context not an object but " + this._writeContext.getTypeDesc());
        }
        this._writeContext = this._writeContext.getParent();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 125;
    }
    
    @Override
    public final void writeFieldName(final SerializableString serializableString) throws IOException, JsonGenerationException {
        final int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            this._reportError("Can not write a field name, expecting a value");
        }
        if (this._cfgPrettyPrinter != null) {
            this._writePPFieldName(serializableString, writeFieldName == 1);
            return;
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = 44;
        }
        this._writeFieldName(serializableString);
    }
    
    @Override
    public final void writeFieldName(final SerializedString serializedString) throws IOException, JsonGenerationException {
        final int writeFieldName = this._writeContext.writeFieldName(serializedString.getValue());
        if (writeFieldName == 4) {
            this._reportError("Can not write a field name, expecting a value");
        }
        if (this._cfgPrettyPrinter != null) {
            this._writePPFieldName(serializedString, writeFieldName == 1);
            return;
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = 44;
        }
        this._writeFieldName(serializedString);
    }
    
    @Override
    public final void writeFieldName(final String s) throws IOException, JsonGenerationException {
        final int writeFieldName = this._writeContext.writeFieldName(s);
        if (writeFieldName == 4) {
            this._reportError("Can not write a field name, expecting a value");
        }
        if (this._cfgPrettyPrinter != null) {
            this._writePPFieldName(s, writeFieldName == 1);
            return;
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = 44;
        }
        this._writeFieldName(s);
    }
    
    @Override
    public void writeNull() throws IOException, JsonGenerationException {
        this._verifyValueWrite("write null value");
        this._writeNull();
    }
    
    @Override
    public void writeNumber(final double n) throws IOException, JsonGenerationException {
        if (this._cfgNumbersAsStrings || ((Double.isNaN(n) || Double.isInfinite(n)) && this.isEnabled(Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            this.writeString(String.valueOf(n));
            return;
        }
        this._verifyValueWrite("write number");
        this.writeRaw(String.valueOf(n));
    }
    
    @Override
    public void writeNumber(final float n) throws IOException, JsonGenerationException {
        if (this._cfgNumbersAsStrings || ((Float.isNaN(n) || Float.isInfinite(n)) && this.isEnabled(Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            this.writeString(String.valueOf(n));
            return;
        }
        this._verifyValueWrite("write number");
        this.writeRaw(String.valueOf(n));
    }
    
    @Override
    public void writeNumber(final int n) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write number");
        if (11 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            this._writeQuotedInt(n);
            return;
        }
        this._outputTail = NumberOutput.outputInt(n, this._outputBuffer, this._outputTail);
    }
    
    @Override
    public void writeNumber(final long n) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write number");
        if (this._cfgNumbersAsStrings) {
            this._writeQuotedLong(n);
            return;
        }
        if (21 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(n, this._outputBuffer, this._outputTail);
    }
    
    @Override
    public void writeNumber(final String s) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write number");
        if (this._cfgNumbersAsStrings) {
            this._writeQuotedRaw(s);
            return;
        }
        this.writeRaw(s);
    }
    
    @Override
    public void writeNumber(final BigDecimal bigDecimal) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write number");
        if (bigDecimal == null) {
            this._writeNull();
            return;
        }
        if (this._cfgNumbersAsStrings) {
            this._writeQuotedRaw(bigDecimal);
            return;
        }
        this.writeRaw(bigDecimal.toString());
    }
    
    @Override
    public void writeNumber(final BigInteger bigInteger) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write number");
        if (bigInteger == null) {
            this._writeNull();
            return;
        }
        if (this._cfgNumbersAsStrings) {
            this._writeQuotedRaw(bigInteger);
            return;
        }
        this.writeRaw(bigInteger.toString());
    }
    
    @Override
    public void writeRaw(final char c) throws IOException, JsonGenerationException {
        if (3 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        final byte[] outputBuffer = this._outputBuffer;
        if (c <= '\u007f') {
            outputBuffer[this._outputTail++] = (byte)c;
            return;
        }
        if (c < '\u0800') {
            outputBuffer[this._outputTail++] = (byte)('\u00c0' | c >> 6);
            outputBuffer[this._outputTail++] = (byte)('\u0080' | (c & '?'));
            return;
        }
        this._outputRawMultiByteChar(c, null, 0, 0);
    }
    
    @Override
    public void writeRaw(final String s) throws IOException, JsonGenerationException {
        int srcBegin = 0;
        int n;
        for (int i = s.length(); i > 0; i -= n) {
            final char[] charBuffer = this._charBuffer;
            final int length = charBuffer.length;
            if (i < length) {
                n = i;
            }
            else {
                n = length;
            }
            s.getChars(srcBegin, srcBegin + n, charBuffer, 0);
            this.writeRaw(charBuffer, 0, n);
            srcBegin += n;
        }
    }
    
    @Override
    public void writeRaw(final String s, int srcBegin, int i) throws IOException, JsonGenerationException {
        while (i > 0) {
            final char[] charBuffer = this._charBuffer;
            final int length = charBuffer.length;
            int n;
            if (i < length) {
                n = i;
            }
            else {
                n = length;
            }
            s.getChars(srcBegin, srcBegin + n, charBuffer, 0);
            this.writeRaw(charBuffer, 0, n);
            srcBegin += n;
            i -= n;
        }
    }
    
    @Override
    public final void writeRaw(final char[] array, int i, final int n) throws IOException, JsonGenerationException {
        final int n2 = n + (n + n);
        Label_0042: {
            if (n2 + this._outputTail <= this._outputEnd) {
                break Label_0042;
            }
            if (this._outputEnd >= n2) {
                this._flushBuffer();
                break Label_0042;
            }
            this._writeSegmentedRaw(array, i, n);
            return;
        }
        final int n3 = n + i;
    Label_0047:
        while (i < n3) {
            do {
                final char c = array[i];
                if (c > '\u007f') {
                    final int n4 = i + 1;
                    final char c2 = array[i];
                    if (c2 < '\u0800') {
                        this._outputBuffer[this._outputTail++] = (byte)('\u00c0' | c2 >> 6);
                        this._outputBuffer[this._outputTail++] = (byte)('\u0080' | (c2 & '?'));
                    }
                    else {
                        this._outputRawMultiByteChar(c2, array, n4, n3);
                    }
                    i = n4;
                    continue Label_0047;
                }
                this._outputBuffer[this._outputTail++] = (byte)c;
            } while (++i < n3);
        }
    }
    
    @Override
    public void writeRawUTF8String(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this._writeBytes(array, n, n2);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    @Override
    public final void writeStartArray() throws IOException, JsonGenerationException {
        this._verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 91;
    }
    
    @Override
    public final void writeStartObject() throws IOException, JsonGenerationException {
        this._verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 123;
    }
    
    @Override
    public final void writeString(final SerializableString serializableString) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this._writeBytes(serializableString.asQuotedUTF8());
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    @Override
    public void writeString(final String s) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write text value");
        if (s == null) {
            this._writeNull();
            return;
        }
        final int length = s.length();
        if (length > this._charBufferLength) {
            this._writeLongString(s);
            return;
        }
        s.getChars(0, length, this._charBuffer, 0);
        if (length > this._outputMaxContiguous) {
            this._writeLongString(this._charBuffer, 0, length);
            return;
        }
        if (length + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        this._writeStringSegment(this._charBuffer, 0, length);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    @Override
    public void writeString(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        if (n2 <= this._outputMaxContiguous) {
            if (n2 + this._outputTail > this._outputEnd) {
                this._flushBuffer();
            }
            this._writeStringSegment(array, n, n2);
        }
        else {
            this._writeStringSegments(array, n, n2);
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
    
    @Override
    public final void writeStringField(final String s, final String s2) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeString(s2);
    }
    
    @Override
    public void writeUTF8String(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
        if (n2 <= this._outputMaxContiguous) {
            this._writeUTF8Segment(array, n, n2);
        }
        else {
            this._writeUTF8Segments(array, n, n2);
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = 34;
    }
}
