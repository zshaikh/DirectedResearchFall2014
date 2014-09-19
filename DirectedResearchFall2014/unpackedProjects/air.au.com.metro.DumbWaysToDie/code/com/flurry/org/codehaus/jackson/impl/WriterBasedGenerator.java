package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.math.*;

public final class WriterBasedGenerator extends JsonGeneratorBase
{
    protected static final char[] HEX_CHARS;
    protected static final int SHORT_WRITE = 32;
    protected static final int[] sOutputEscapes;
    protected CharacterEscapes _characterEscapes;
    protected SerializableString _currentEscape;
    protected char[] _entityBuffer;
    protected final IOContext _ioContext;
    protected int _maximumNonEscapedChar;
    protected char[] _outputBuffer;
    protected int _outputEnd;
    protected int[] _outputEscapes;
    protected int _outputHead;
    protected int _outputTail;
    protected final Writer _writer;
    
    static {
        HEX_CHARS = CharTypes.copyHexChars();
        sOutputEscapes = CharTypes.get7BitOutputEscapes();
    }
    
    public WriterBasedGenerator(final IOContext ioContext, final int n, final ObjectCodec objectCodec, final Writer writer) {
        super(n, objectCodec);
        this._outputEscapes = WriterBasedGenerator.sOutputEscapes;
        this._outputHead = 0;
        this._outputTail = 0;
        this._ioContext = ioContext;
        this._writer = writer;
        this._outputBuffer = ioContext.allocConcatBuffer();
        this._outputEnd = this._outputBuffer.length;
        if (this.isEnabled(Feature.ESCAPE_NON_ASCII)) {
            this.setHighestNonEscapedChar(127);
        }
    }
    
    private char[] _allocateEntityBuffer() {
        return this._entityBuffer = new char[] { '\\', '\0', '\\', 'u', '0', '0', '\0', '\0', '\\', 'u', '\0', '\0', '\0', '\0' };
    }
    
    private final void _appendCharacterEscape(char c, final int n) throws IOException, JsonGenerationException {
        if (n >= 0) {
            if (2 + this._outputTail > this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = '\\';
            this._outputBuffer[this._outputTail++] = (char)n;
            return;
        }
        if (n != -2) {
            if (2 + this._outputTail > this._outputEnd) {
                this._flushBuffer();
            }
            final int outputTail = this._outputTail;
            final char[] outputBuffer = this._outputBuffer;
            final int n2 = outputTail + 1;
            outputBuffer[outputTail] = '\\';
            final int n3 = n2 + 1;
            outputBuffer[n2] = 'u';
            int n5;
            if (c > '\u00ff') {
                final char c2 = (char)('\u00ff' & c >> 8);
                final int n4 = n3 + 1;
                outputBuffer[n3] = WriterBasedGenerator.HEX_CHARS[c2 >> 4];
                n5 = n4 + 1;
                outputBuffer[n4] = WriterBasedGenerator.HEX_CHARS[c2 & '\u000f'];
                c &= '\u00ff';
            }
            else {
                final int n6 = n3 + 1;
                outputBuffer[n3] = '0';
                n5 = n6 + 1;
                outputBuffer[n6] = '0';
            }
            final int outputTail2 = n5 + 1;
            outputBuffer[n5] = WriterBasedGenerator.HEX_CHARS[c >> 4];
            outputBuffer[outputTail2] = WriterBasedGenerator.HEX_CHARS[c & '\u000f'];
            this._outputTail = outputTail2;
            return;
        }
        String str;
        if (this._currentEscape == null) {
            str = this._characterEscapes.getEscapeSequence(c).getValue();
        }
        else {
            str = this._currentEscape.getValue();
            this._currentEscape = null;
        }
        final int length = str.length();
        if (length + this._outputTail > this._outputEnd) {
            this._flushBuffer();
            if (length > this._outputEnd) {
                this._writer.write(str);
                return;
            }
        }
        str.getChars(0, length, this._outputBuffer, this._outputTail);
        this._outputTail += length;
    }
    
    private final int _prependOrWriteCharacterEscape(final char[] dst, int dstBegin, final int n, char c, final int n2) throws IOException, JsonGenerationException {
        if (n2 >= 0) {
            if (dstBegin > 1 && dstBegin < n) {
                dstBegin -= 2;
                dst[dstBegin] = '\\';
                dst[dstBegin + 1] = (char)n2;
            }
            else {
                char[] array = this._entityBuffer;
                if (array == null) {
                    array = this._allocateEntityBuffer();
                }
                array[1] = (char)n2;
                this._writer.write(array, 0, 2);
            }
            return dstBegin;
        }
        if (n2 != -2) {
            if (dstBegin > 5 && dstBegin < n) {
                final int n3 = dstBegin - 6;
                final int n4 = n3 + 1;
                dst[n3] = '\\';
                final int n5 = n4 + 1;
                dst[n4] = 'u';
                int n7;
                if (c > '\u00ff') {
                    final char c2 = (char)('\u00ff' & c >> 8);
                    final int n6 = n5 + 1;
                    dst[n5] = WriterBasedGenerator.HEX_CHARS[c2 >> 4];
                    n7 = n6 + 1;
                    dst[n6] = WriterBasedGenerator.HEX_CHARS[c2 & '\u000f'];
                    c &= '\u00ff';
                }
                else {
                    final int n8 = n5 + 1;
                    dst[n5] = '0';
                    n7 = n8 + 1;
                    dst[n8] = '0';
                }
                final int n9 = n7 + 1;
                dst[n7] = WriterBasedGenerator.HEX_CHARS[c >> 4];
                dst[n9] = WriterBasedGenerator.HEX_CHARS[c & '\u000f'];
                dstBegin = n9 - 5;
            }
            else {
                char[] array2 = this._entityBuffer;
                if (array2 == null) {
                    array2 = this._allocateEntityBuffer();
                }
                this._outputHead = this._outputTail;
                if (c > '\u00ff') {
                    final char c3 = (char)('\u00ff' & c >> 8);
                    final char c4 = (char)(c & '\u00ff');
                    array2[10] = WriterBasedGenerator.HEX_CHARS[c3 >> 4];
                    array2[11] = WriterBasedGenerator.HEX_CHARS[c3 & '\u000f'];
                    array2[12] = WriterBasedGenerator.HEX_CHARS[c4 >> 4];
                    array2[13] = WriterBasedGenerator.HEX_CHARS[c4 & '\u000f'];
                    this._writer.write(array2, 8, 6);
                }
                else {
                    array2[6] = WriterBasedGenerator.HEX_CHARS[c >> 4];
                    array2[7] = WriterBasedGenerator.HEX_CHARS[c & '\u000f'];
                    this._writer.write(array2, 2, 6);
                }
            }
            return dstBegin;
        }
        String str;
        if (this._currentEscape == null) {
            str = this._characterEscapes.getEscapeSequence(c).getValue();
        }
        else {
            str = this._currentEscape.getValue();
            this._currentEscape = null;
        }
        final int length = str.length();
        if (dstBegin >= length && dstBegin < n) {
            dstBegin -= length;
            str.getChars(0, length, dst, dstBegin);
        }
        else {
            this._writer.write(str);
        }
        return dstBegin;
    }
    
    private final void _prependOrWriteCharacterEscape(char c, final int n) throws IOException, JsonGenerationException {
        if (n >= 0) {
            if (this._outputTail >= 2) {
                final int outputHead = this._outputTail - 2;
                this._outputHead = outputHead;
                final char[] outputBuffer = this._outputBuffer;
                final int n2 = outputHead + 1;
                outputBuffer[outputHead] = '\\';
                this._outputBuffer[n2] = (char)n;
                return;
            }
            char[] array = this._entityBuffer;
            if (array == null) {
                array = this._allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            array[1] = (char)n;
            this._writer.write(array, 0, 2);
        }
        else if (n != -2) {
            if (this._outputTail >= 6) {
                final char[] outputBuffer2 = this._outputBuffer;
                final int outputHead2 = this._outputTail - 6;
                outputBuffer2[this._outputHead = outputHead2] = '\\';
                final int n3 = outputHead2 + 1;
                outputBuffer2[n3] = 'u';
                int n5;
                if (c > '\u00ff') {
                    final char c2 = (char)('\u00ff' & c >> 8);
                    final int n4 = n3 + 1;
                    outputBuffer2[n4] = WriterBasedGenerator.HEX_CHARS[c2 >> 4];
                    n5 = n4 + 1;
                    outputBuffer2[n5] = WriterBasedGenerator.HEX_CHARS[c2 & '\u000f'];
                    c &= '\u00ff';
                }
                else {
                    final int n6 = n3 + 1;
                    outputBuffer2[n6] = '0';
                    n5 = n6 + 1;
                    outputBuffer2[n5] = '0';
                }
                final int n7 = n5 + 1;
                outputBuffer2[n7] = WriterBasedGenerator.HEX_CHARS[c >> 4];
                outputBuffer2[n7 + 1] = WriterBasedGenerator.HEX_CHARS[c & '\u000f'];
                return;
            }
            char[] array2 = this._entityBuffer;
            if (array2 == null) {
                array2 = this._allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > '\u00ff') {
                final char c3 = (char)('\u00ff' & c >> 8);
                final char c4 = (char)(c & '\u00ff');
                array2[10] = WriterBasedGenerator.HEX_CHARS[c3 >> 4];
                array2[11] = WriterBasedGenerator.HEX_CHARS[c3 & '\u000f'];
                array2[12] = WriterBasedGenerator.HEX_CHARS[c4 >> 4];
                array2[13] = WriterBasedGenerator.HEX_CHARS[c4 & '\u000f'];
                this._writer.write(array2, 8, 6);
                return;
            }
            array2[6] = WriterBasedGenerator.HEX_CHARS[c >> 4];
            array2[7] = WriterBasedGenerator.HEX_CHARS[c & '\u000f'];
            this._writer.write(array2, 2, 6);
        }
        else {
            String str;
            if (this._currentEscape == null) {
                str = this._characterEscapes.getEscapeSequence(c).getValue();
            }
            else {
                str = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            final int length = str.length();
            if (this._outputTail >= length) {
                final int n8 = this._outputTail - length;
                this._outputHead = n8;
                str.getChars(0, length, this._outputBuffer, n8);
                return;
            }
            this._outputHead = this._outputTail;
            this._writer.write(str);
        }
    }
    
    private void _writeLongString(final String s) throws IOException, JsonGenerationException {
        this._flushBuffer();
        final int length = s.length();
        int srcBegin = 0;
        do {
            final int outputEnd = this._outputEnd;
            int n;
            if (srcBegin + outputEnd > length) {
                n = length - srcBegin;
            }
            else {
                n = outputEnd;
            }
            s.getChars(srcBegin, srcBegin + n, this._outputBuffer, 0);
            if (this._characterEscapes != null) {
                this._writeSegmentCustom(n);
            }
            else if (this._maximumNonEscapedChar != 0) {
                this._writeSegmentASCII(n, this._maximumNonEscapedChar);
            }
            else {
                this._writeSegment(n);
            }
            srcBegin += n;
        } while (srcBegin < length);
    }
    
    private final void _writeNull() throws IOException {
        if (4 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        final int outputTail = this._outputTail;
        final char[] outputBuffer = this._outputBuffer;
        outputBuffer[outputTail] = 'n';
        final int n = outputTail + 1;
        outputBuffer[n] = 'u';
        final int n2 = n + 1;
        outputBuffer[n2] = 'l';
        final int n3 = n2 + 1;
        outputBuffer[n3] = 'l';
        this._outputTail = n3 + 1;
    }
    
    private final void _writeQuotedInt(final int n) throws IOException {
        if (13 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
        this._outputTail = NumberOutput.outputInt(n, this._outputBuffer, this._outputTail);
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    private final void _writeQuotedLong(final long n) throws IOException {
        if (23 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
        this._outputTail = NumberOutput.outputLong(n, this._outputBuffer, this._outputTail);
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    private final void _writeQuotedRaw(final Object o) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
        this.writeRaw(o.toString());
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    private final void _writeSegment(final int n) throws IOException, JsonGenerationException {
        final int[] outputEscapes = this._outputEscapes;
        final int length = outputEscapes.length;
        int i = 0;
        int prependOrWriteCharacterEscape = 0;
        while (i < n) {
            char c;
            do {
                c = this._outputBuffer[i];
            } while ((c >= length || outputEscapes[c] == 0) && ++i < n);
            final int n2 = i - prependOrWriteCharacterEscape;
            if (n2 > 0) {
                this._writer.write(this._outputBuffer, prependOrWriteCharacterEscape, n2);
                if (i >= n) {
                    break;
                }
            }
            ++i;
            prependOrWriteCharacterEscape = this._prependOrWriteCharacterEscape(this._outputBuffer, i, n, c, outputEscapes[c]);
        }
    }
    
    private final void _writeSegmentASCII(final int n, final int n2) throws IOException, JsonGenerationException {
        final int[] outputEscapes = this._outputEscapes;
        final int min = Math.min(outputEscapes.length, 1 + this._maximumNonEscapedChar);
        int i = 0;
        int n3 = 0;
        int prependOrWriteCharacterEscape = 0;
    Label_0060_Outer:
        while (i < n) {
            while (true) {
                do {
                    final char c = this._outputBuffer[i];
                    if (c < min) {
                        n3 = outputEscapes[c];
                        if (n3 == 0) {
                            continue Label_0060_Outer;
                        }
                    }
                    else {
                        if (c <= n2) {
                            continue Label_0060_Outer;
                        }
                        n3 = -1;
                    }
                    final int n4 = i - prependOrWriteCharacterEscape;
                    if (n4 > 0) {
                        this._writer.write(this._outputBuffer, prependOrWriteCharacterEscape, n4);
                        if (i >= n) {
                            break Label_0060_Outer;
                        }
                    }
                    ++i;
                    prependOrWriteCharacterEscape = this._prependOrWriteCharacterEscape(this._outputBuffer, i, n, c, n3);
                    continue Label_0060_Outer;
                } while (++i < n);
                continue;
            }
        }
    }
    
    private final void _writeSegmentCustom(final int n) throws IOException, JsonGenerationException {
        final int[] outputEscapes = this._outputEscapes;
        int maximumNonEscapedChar;
        if (this._maximumNonEscapedChar < 1) {
            maximumNonEscapedChar = 65535;
        }
        else {
            maximumNonEscapedChar = this._maximumNonEscapedChar;
        }
        final int min = Math.min(outputEscapes.length, 1 + this._maximumNonEscapedChar);
        final CharacterEscapes characterEscapes = this._characterEscapes;
        int i = 0;
        int n2 = 0;
        int prependOrWriteCharacterEscape = 0;
    Label_0077_Outer:
        while (i < n) {
            while (true) {
                do {
                    final char c = this._outputBuffer[i];
                    if (c < min) {
                        n2 = outputEscapes[c];
                        if (n2 == 0) {
                            continue Label_0077_Outer;
                        }
                    }
                    else if (c > maximumNonEscapedChar) {
                        n2 = -1;
                    }
                    else {
                        if ((this._currentEscape = characterEscapes.getEscapeSequence(c)) == null) {
                            continue Label_0077_Outer;
                        }
                        n2 = -2;
                    }
                    final int n3 = i - prependOrWriteCharacterEscape;
                    if (n3 > 0) {
                        this._writer.write(this._outputBuffer, prependOrWriteCharacterEscape, n3);
                        if (i >= n) {
                            break Label_0077_Outer;
                        }
                    }
                    ++i;
                    prependOrWriteCharacterEscape = this._prependOrWriteCharacterEscape(this._outputBuffer, i, n, c, n2);
                    continue Label_0077_Outer;
                } while (++i < n);
                continue;
            }
        }
    }
    
    private void _writeString(final String s) throws IOException, JsonGenerationException {
        final int length = s.length();
        if (length > this._outputEnd) {
            this._writeLongString(s);
            return;
        }
        if (length + this._outputTail > this._outputEnd) {
            this._flushBuffer();
        }
        s.getChars(0, length, this._outputBuffer, this._outputTail);
        if (this._characterEscapes != null) {
            this._writeStringCustom(length);
            return;
        }
        if (this._maximumNonEscapedChar != 0) {
            this._writeStringASCII(length, this._maximumNonEscapedChar);
            return;
        }
        this._writeString2(length);
    }
    
    private final void _writeString(final char[] array, int i, final int n) throws IOException, JsonGenerationException {
        if (this._characterEscapes != null) {
            this._writeStringCustom(array, i, n);
        }
        else {
            if (this._maximumNonEscapedChar != 0) {
                this._writeStringASCII(array, i, n, this._maximumNonEscapedChar);
                return;
            }
            final int n2 = n + i;
            final int[] outputEscapes = this._outputEscapes;
            final int length = outputEscapes.length;
        Label_0050:
            while (i < n2) {
                final int n3 = i;
                while (true) {
                    do {
                        final char c = array[i];
                        if (c < length && outputEscapes[c] != 0) {
                            final int n4 = i;
                            final int n5 = n4 - n3;
                            if (n5 < 32) {
                                if (n5 + this._outputTail > this._outputEnd) {
                                    this._flushBuffer();
                                }
                                if (n5 > 0) {
                                    System.arraycopy(array, n3, this._outputBuffer, this._outputTail, n5);
                                    this._outputTail += n5;
                                }
                            }
                            else {
                                this._flushBuffer();
                                this._writer.write(array, n3, n5);
                            }
                            if (n4 >= n2) {
                                return;
                            }
                            i = n4 + 1;
                            final char c2 = array[n4];
                            this._appendCharacterEscape(c2, outputEscapes[c2]);
                            continue Label_0050;
                        }
                    } while (++i < n2);
                    final int n4 = i;
                    continue;
                }
            }
        }
    }
    
    private void _writeString2(final int n) throws IOException, JsonGenerationException {
        final int n2 = n + this._outputTail;
        final int[] outputEscapes = this._outputEscapes;
        final int length = outputEscapes.length;
    Label_0016:
        while (this._outputTail < n2) {
            do {
                final char c = this._outputBuffer[this._outputTail];
                if (c < length && outputEscapes[c] != 0) {
                    final int n3 = this._outputTail - this._outputHead;
                    if (n3 > 0) {
                        this._writer.write(this._outputBuffer, this._outputHead, n3);
                    }
                    final char c2 = this._outputBuffer[this._outputTail++];
                    this._prependOrWriteCharacterEscape(c2, outputEscapes[c2]);
                    continue Label_0016;
                }
            } while (++this._outputTail < n2);
            break;
        }
    }
    
    private void _writeStringASCII(final int n, final int n2) throws IOException, JsonGenerationException {
        final int n3 = n + this._outputTail;
        final int[] outputEscapes = this._outputEscapes;
        final int min = Math.min(outputEscapes.length, 1 + this._maximumNonEscapedChar);
    Label_0027:
        while (this._outputTail < n3) {
            do {
                final char c = this._outputBuffer[this._outputTail];
                int n4;
                if (c < min) {
                    n4 = outputEscapes[c];
                    if (n4 == 0) {
                        continue;
                    }
                }
                else {
                    if (c <= n2) {
                        continue;
                    }
                    n4 = -1;
                }
                final int n5 = this._outputTail - this._outputHead;
                if (n5 > 0) {
                    this._writer.write(this._outputBuffer, this._outputHead, n5);
                }
                ++this._outputTail;
                this._prependOrWriteCharacterEscape(c, n4);
                continue Label_0027;
            } while (++this._outputTail < n3);
            break;
        }
    }
    
    private final void _writeStringASCII(final char[] array, int i, final int n, final int n2) throws IOException, JsonGenerationException {
        final int n3 = n + i;
        final int[] outputEscapes = this._outputEscapes;
        final int min = Math.min(outputEscapes.length, n2 + 1);
        int n4 = 0;
    Label_0059_Outer:
        while (i < n3) {
            final int n5 = i;
            while (true) {
                do {
                    final char c = array[i];
                    if (c < min) {
                        n4 = outputEscapes[c];
                        if (n4 == 0) {
                            continue Label_0059_Outer;
                        }
                    }
                    else {
                        if (c <= n2) {
                            continue Label_0059_Outer;
                        }
                        n4 = -1;
                    }
                    final int n6 = i - n5;
                    if (n6 < 32) {
                        if (n6 + this._outputTail > this._outputEnd) {
                            this._flushBuffer();
                        }
                        if (n6 > 0) {
                            System.arraycopy(array, n5, this._outputBuffer, this._outputTail, n6);
                            this._outputTail += n6;
                        }
                    }
                    else {
                        this._flushBuffer();
                        this._writer.write(array, n5, n6);
                    }
                    if (i >= n3) {
                        break Label_0059_Outer;
                    }
                    ++i;
                    this._appendCharacterEscape(c, n4);
                    continue Label_0059_Outer;
                } while (++i < n3);
                continue;
            }
        }
    }
    
    private void _writeStringCustom(final int n) throws IOException, JsonGenerationException {
        final int n2 = n + this._outputTail;
        final int[] outputEscapes = this._outputEscapes;
        int maximumNonEscapedChar;
        if (this._maximumNonEscapedChar < 1) {
            maximumNonEscapedChar = 65535;
        }
        else {
            maximumNonEscapedChar = this._maximumNonEscapedChar;
        }
        final int min = Math.min(outputEscapes.length, maximumNonEscapedChar + '\u0001');
        final CharacterEscapes characterEscapes = this._characterEscapes;
    Label_0041:
        while (this._outputTail < n2) {
            do {
                final char c = this._outputBuffer[this._outputTail];
                int n3;
                if (c < min) {
                    n3 = outputEscapes[c];
                    if (n3 == 0) {
                        continue;
                    }
                }
                else if (c > maximumNonEscapedChar) {
                    n3 = -1;
                }
                else {
                    if ((this._currentEscape = characterEscapes.getEscapeSequence(c)) == null) {
                        continue;
                    }
                    n3 = -2;
                }
                final int n4 = this._outputTail - this._outputHead;
                if (n4 > 0) {
                    this._writer.write(this._outputBuffer, this._outputHead, n4);
                }
                ++this._outputTail;
                this._prependOrWriteCharacterEscape(c, n3);
                continue Label_0041;
            } while (++this._outputTail < n2);
            break;
        }
    }
    
    private final void _writeStringCustom(final char[] array, int i, final int n) throws IOException, JsonGenerationException {
        final int n2 = n + i;
        final int[] outputEscapes = this._outputEscapes;
        int maximumNonEscapedChar;
        if (this._maximumNonEscapedChar < 1) {
            maximumNonEscapedChar = 65535;
        }
        else {
            maximumNonEscapedChar = this._maximumNonEscapedChar;
        }
        final int min = Math.min(outputEscapes.length, maximumNonEscapedChar + '\u0001');
        final CharacterEscapes characterEscapes = this._characterEscapes;
        int n3 = 0;
    Label_0077_Outer:
        while (i < n2) {
            final int n4 = i;
            while (true) {
                do {
                    final char c = array[i];
                    if (c < min) {
                        n3 = outputEscapes[c];
                        if (n3 == 0) {
                            continue Label_0077_Outer;
                        }
                    }
                    else if (c > maximumNonEscapedChar) {
                        n3 = -1;
                    }
                    else {
                        if ((this._currentEscape = characterEscapes.getEscapeSequence(c)) == null) {
                            continue Label_0077_Outer;
                        }
                        n3 = -2;
                    }
                    final int n5 = i - n4;
                    if (n5 < 32) {
                        if (n5 + this._outputTail > this._outputEnd) {
                            this._flushBuffer();
                        }
                        if (n5 > 0) {
                            System.arraycopy(array, n4, this._outputBuffer, this._outputTail, n5);
                            this._outputTail += n5;
                        }
                    }
                    else {
                        this._flushBuffer();
                        this._writer.write(array, n4, n5);
                    }
                    if (i >= n2) {
                        break Label_0077_Outer;
                    }
                    ++i;
                    this._appendCharacterEscape(c, n3);
                    continue Label_0077_Outer;
                } while (++i < n2);
                continue;
            }
        }
    }
    
    private void writeRawLong(final String s) throws IOException, JsonGenerationException {
        final int srcEnd = this._outputEnd - this._outputTail;
        s.getChars(0, srcEnd, this._outputBuffer, this._outputTail);
        this._outputTail += srcEnd;
        this._flushBuffer();
        int n = srcEnd;
        int i;
        int outputEnd;
        for (i = s.length() - srcEnd; i > this._outputEnd; i -= outputEnd) {
            outputEnd = this._outputEnd;
            s.getChars(n, n + outputEnd, this._outputBuffer, 0);
            this._outputHead = 0;
            this._outputTail = outputEnd;
            this._flushBuffer();
            n += outputEnd;
        }
        s.getChars(n, n + i, this._outputBuffer, 0);
        this._outputHead = 0;
        this._outputTail = i;
    }
    
    protected final void _flushBuffer() throws IOException {
        final int n = this._outputTail - this._outputHead;
        if (n > 0) {
            final int outputHead = this._outputHead;
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, outputHead, n);
        }
    }
    
    @Override
    protected void _releaseBuffers() {
        final char[] outputBuffer = this._outputBuffer;
        if (outputBuffer != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(outputBuffer);
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
            char c = '\0';
            switch (writeValue) {
                default: {
                    return;
                }
                case 1: {
                    c = ',';
                    break;
                }
                case 2: {
                    c = ':';
                    break;
                }
                case 3: {
                    c = ' ';
                    break;
                }
            }
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail] = c;
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
                this._outputBuffer[this._outputTail++] = '\\';
                this._outputBuffer[this._outputTail++] = 'n';
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
    
    public void _writeFieldName(final SerializableString serializableString, final boolean b) throws IOException, JsonGenerationException {
        if (this._cfgPrettyPrinter != null) {
            this._writePPFieldName(serializableString, b);
            return;
        }
        if (1 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        if (b) {
            this._outputBuffer[this._outputTail++] = ',';
        }
        final char[] quotedChars = serializableString.asQuotedChars();
        if (!this.isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            this.writeRaw(quotedChars, 0, quotedChars.length);
            return;
        }
        this._outputBuffer[this._outputTail++] = '\"';
        final int length = quotedChars.length;
        if (1 + (length + this._outputTail) >= this._outputEnd) {
            this.writeRaw(quotedChars, 0, length);
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = '\"';
            return;
        }
        System.arraycopy(quotedChars, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    protected void _writeFieldName(final String s, final boolean b) throws IOException, JsonGenerationException {
        if (this._cfgPrettyPrinter != null) {
            this._writePPFieldName(s, b);
            return;
        }
        if (1 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        if (b) {
            this._outputBuffer[this._outputTail++] = ',';
        }
        if (!this.isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            this._writeString(s);
            return;
        }
        this._outputBuffer[this._outputTail++] = '\"';
        this._writeString(s);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    protected final void _writePPFieldName(final SerializableString serializableString, final boolean b) throws IOException, JsonGenerationException {
        if (b) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        }
        else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        final char[] quotedChars = serializableString.asQuotedChars();
        if (this.isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = '\"';
            this.writeRaw(quotedChars, 0, quotedChars.length);
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = '\"';
            return;
        }
        this.writeRaw(quotedChars, 0, quotedChars.length);
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
            this._outputBuffer[this._outputTail++] = '\"';
            this._writeString(s);
            if (this._outputTail >= this._outputEnd) {
                this._flushBuffer();
            }
            this._outputBuffer[this._outputTail++] = '\"';
            return;
        }
        this._writeString(s);
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
        if (this._writer != null) {
            if (this._ioContext.isResourceManaged() || this.isEnabled(Feature.AUTO_CLOSE_TARGET)) {
                this._writer.close();
            }
            else if (this.isEnabled(Feature.FLUSH_PASSED_TO_STREAM)) {
                this._writer.flush();
            }
        }
        this._releaseBuffers();
    }
    
    @Override
    public final void flush() throws IOException {
        this._flushBuffer();
        if (this._writer != null && this.isEnabled(Feature.FLUSH_PASSED_TO_STREAM)) {
            this._writer.flush();
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
        return this._writer;
    }
    
    @Override
    public JsonGenerator setCharacterEscapes(final CharacterEscapes characterEscapes) {
        this._characterEscapes = characterEscapes;
        if (characterEscapes == null) {
            this._outputEscapes = WriterBasedGenerator.sOutputEscapes;
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
        this._outputBuffer[this._outputTail++] = '\"';
        this._writeBinary(base64Variant, array, n, n + n2);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write boolean value");
        if (5 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        final int outputTail = this._outputTail;
        final char[] outputBuffer = this._outputBuffer;
        int n3;
        if (b) {
            outputBuffer[outputTail] = 't';
            final int n = outputTail + 1;
            outputBuffer[n] = 'r';
            final int n2 = n + 1;
            outputBuffer[n2] = 'u';
            n3 = n2 + 1;
            outputBuffer[n3] = 'e';
        }
        else {
            outputBuffer[outputTail] = 'f';
            final int n4 = outputTail + 1;
            outputBuffer[n4] = 'a';
            final int n5 = n4 + 1;
            outputBuffer[n5] = 'l';
            final int n6 = n5 + 1;
            outputBuffer[n6] = 's';
            n3 = n6 + 1;
            outputBuffer[n3] = 'e';
        }
        this._outputTail = n3 + 1;
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
            this._outputBuffer[this._outputTail++] = ']';
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
        this._outputBuffer[this._outputTail++] = '}';
    }
    
    @Override
    public final void writeFieldName(final SerializableString serializableString) throws IOException, JsonGenerationException {
        final int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            this._reportError("Can not write a field name, expecting a value");
        }
        this._writeFieldName(serializableString, writeFieldName == 1);
    }
    
    @Override
    public final void writeFieldName(final SerializedString serializedString) throws IOException, JsonGenerationException {
        final int writeFieldName = this._writeContext.writeFieldName(serializedString.getValue());
        if (writeFieldName == 4) {
            this._reportError("Can not write a field name, expecting a value");
        }
        this._writeFieldName(serializedString, writeFieldName == 1);
    }
    
    @Override
    public final void writeFieldName(final String s) throws IOException, JsonGenerationException {
        final int writeFieldName = this._writeContext.writeFieldName(s);
        if (writeFieldName == 4) {
            this._reportError("Can not write a field name, expecting a value");
        }
        this._writeFieldName(s, writeFieldName == 1);
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
        if (this._cfgNumbersAsStrings) {
            this._writeQuotedInt(n);
            return;
        }
        if (11 + this._outputTail >= this._outputEnd) {
            this._flushBuffer();
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
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = c;
    }
    
    @Override
    public void writeRaw(final String s) throws IOException, JsonGenerationException {
        final int length = s.length();
        int n = this._outputEnd - this._outputTail;
        if (n == 0) {
            this._flushBuffer();
            n = this._outputEnd - this._outputTail;
        }
        if (n >= length) {
            s.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
            return;
        }
        this.writeRawLong(s);
    }
    
    @Override
    public void writeRaw(final String s, final int n, final int n2) throws IOException, JsonGenerationException {
        int n3 = this._outputEnd - this._outputTail;
        if (n3 < n2) {
            this._flushBuffer();
            n3 = this._outputEnd - this._outputTail;
        }
        if (n3 >= n2) {
            s.getChars(n, n + n2, this._outputBuffer, this._outputTail);
            this._outputTail += n2;
            return;
        }
        this.writeRawLong(s.substring(n, n + n2));
    }
    
    @Override
    public void writeRaw(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        if (n2 < 32) {
            if (n2 > this._outputEnd - this._outputTail) {
                this._flushBuffer();
            }
            System.arraycopy(array, n, this._outputBuffer, this._outputTail, n2);
            this._outputTail += n2;
            return;
        }
        this._flushBuffer();
        this._writer.write(array, n, n2);
    }
    
    @Override
    public void writeRawUTF8String(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
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
        this._outputBuffer[this._outputTail++] = '[';
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
        this._outputBuffer[this._outputTail++] = '{';
    }
    
    @Override
    public final void writeString(final SerializableString serializableString) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
        final char[] quotedChars = serializableString.asQuotedChars();
        final int length = quotedChars.length;
        if (length < 32) {
            if (length > this._outputEnd - this._outputTail) {
                this._flushBuffer();
            }
            System.arraycopy(quotedChars, 0, this._outputBuffer, this._outputTail, length);
            this._outputTail += length;
        }
        else {
            this._flushBuffer();
            this._writer.write(quotedChars, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    @Override
    public void writeString(final String s) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write text value");
        if (s == null) {
            this._writeNull();
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
        this._writeString(s);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    @Override
    public void writeString(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write text value");
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
        this._writeString(array, n, n2);
        if (this._outputTail >= this._outputEnd) {
            this._flushBuffer();
        }
        this._outputBuffer[this._outputTail++] = '\"';
    }
    
    @Override
    public final void writeStringField(final String s, final String s2) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeString(s2);
    }
    
    @Override
    public void writeUTF8String(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
}
