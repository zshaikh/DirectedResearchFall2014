package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.sym.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;

public final class Utf8StreamParser extends JsonParserBase
{
    static final byte BYTE_LF = 10;
    private static final int[] sInputCodesLatin1;
    private static final int[] sInputCodesUtf8;
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer;
    protected final BytesToNameCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    
    static {
        sInputCodesUtf8 = CharTypes.getInputCodeUtf8();
        sInputCodesLatin1 = CharTypes.getInputCodeLatin1();
    }
    
    public Utf8StreamParser(final IOContext ioContext, final int n, final InputStream inputStream, final ObjectCodec objectCodec, final BytesToNameCanonicalizer symbols, final byte[] inputBuffer, final int inputPtr, final int inputEnd, final boolean bufferRecyclable) {
        super(ioContext, n);
        this._quadBuffer = new int[16];
        this._tokenIncomplete = false;
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = symbols;
        this._inputBuffer = inputBuffer;
        this._inputPtr = inputPtr;
        this._inputEnd = inputEnd;
        this._bufferRecyclable = bufferRecyclable;
        if (!Feature.CANONICALIZE_FIELD_NAMES.enabledIn(n)) {
            this._throwInternal();
        }
    }
    
    private final int _decodeUtf8_2(final int n) throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b = this._inputBuffer[this._inputPtr++];
        if ((b & 0xC0) != 0x80) {
            this._reportInvalidOther(b & 0xFF, this._inputPtr);
        }
        return (n & 0x1F) << 6 | (b & 0x3F);
    }
    
    private final int _decodeUtf8_3(final int n) throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final int n2 = n & 0xF;
        final byte b = this._inputBuffer[this._inputPtr++];
        if ((b & 0xC0) != 0x80) {
            this._reportInvalidOther(b & 0xFF, this._inputPtr);
        }
        final int n3 = n2 << 6 | (b & 0x3F);
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b2 = this._inputBuffer[this._inputPtr++];
        if ((b2 & 0xC0) != 0x80) {
            this._reportInvalidOther(b2 & 0xFF, this._inputPtr);
        }
        return n3 << 6 | (b2 & 0x3F);
    }
    
    private final int _decodeUtf8_3fast(final int n) throws IOException, JsonParseException {
        final int n2 = n & 0xF;
        final byte b = this._inputBuffer[this._inputPtr++];
        if ((b & 0xC0) != 0x80) {
            this._reportInvalidOther(b & 0xFF, this._inputPtr);
        }
        final int n3 = n2 << 6 | (b & 0x3F);
        final byte b2 = this._inputBuffer[this._inputPtr++];
        if ((b2 & 0xC0) != 0x80) {
            this._reportInvalidOther(b2 & 0xFF, this._inputPtr);
        }
        return n3 << 6 | (b2 & 0x3F);
    }
    
    private final int _decodeUtf8_4(final int n) throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b = this._inputBuffer[this._inputPtr++];
        if ((b & 0xC0) != 0x80) {
            this._reportInvalidOther(b & 0xFF, this._inputPtr);
        }
        final int n2 = (n & 0x7) << 6 | (b & 0x3F);
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b2 = this._inputBuffer[this._inputPtr++];
        if ((b2 & 0xC0) != 0x80) {
            this._reportInvalidOther(b2 & 0xFF, this._inputPtr);
        }
        final int n3 = n2 << 6 | (b2 & 0x3F);
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b3 = this._inputBuffer[this._inputPtr++];
        if ((b3 & 0xC0) != 0x80) {
            this._reportInvalidOther(b3 & 0xFF, this._inputPtr);
        }
        return (n3 << 6 | (b3 & 0x3F)) - 65536;
    }
    
    private final void _finishString2(char[] array, int n) throws IOException, JsonParseException {
        final int[] sInputCodesUtf8 = Utf8StreamParser.sInputCodesUtf8;
        final byte[] inputBuffer = this._inputBuffer;
        int currentLength = 0;
    Block_5:
        while (true) {
            int n2 = this._inputPtr;
            if (n2 >= this._inputEnd) {
                this.loadMoreGuaranteed();
                n2 = this._inputPtr;
            }
            if (n >= array.length) {
                array = this._textBuffer.finishCurrentSegment();
                n = 0;
            }
            final int min = Math.min(this._inputEnd, n2 + (array.length - n));
            int i = n2;
            currentLength = n;
            while (i < min) {
                final int inputPtr = i + 1;
                int n3 = 0xFF & inputBuffer[i];
                if (sInputCodesUtf8[n3] != 0) {
                    this._inputPtr = inputPtr;
                    if (n3 == 34) {
                        break Block_5;
                    }
                    int n4 = 0;
                    switch (sInputCodesUtf8[n3]) {
                        default: {
                            if (n3 < 32) {
                                this._throwUnquotedSpace(n3, "string value");
                                n4 = currentLength;
                                break;
                            }
                            this._reportInvalidChar(n3);
                            n4 = currentLength;
                            break;
                        }
                        case 1: {
                            n3 = this._decodeEscaped();
                            n4 = currentLength;
                            break;
                        }
                        case 2: {
                            n3 = this._decodeUtf8_2(n3);
                            n4 = currentLength;
                            break;
                        }
                        case 3: {
                            if (this._inputEnd - this._inputPtr >= 2) {
                                n3 = this._decodeUtf8_3fast(n3);
                                n4 = currentLength;
                                break;
                            }
                            n3 = this._decodeUtf8_3(n3);
                            n4 = currentLength;
                            break;
                        }
                        case 4: {
                            final int decodeUtf8_4 = this._decodeUtf8_4(n3);
                            n4 = currentLength + 1;
                            array[currentLength] = (char)(0xD800 | decodeUtf8_4 >> 10);
                            if (n4 >= array.length) {
                                array = this._textBuffer.finishCurrentSegment();
                                n4 = 0;
                            }
                            n3 = (0xDC00 | (decodeUtf8_4 & 0x3FF));
                            break;
                        }
                    }
                    if (n4 >= array.length) {
                        array = this._textBuffer.finishCurrentSegment();
                        n4 = 0;
                    }
                    final int n5 = n4 + 1;
                    array[n4] = (char)n3;
                    n = n5;
                    continue Block_5;
                }
                else {
                    final int n6 = currentLength + 1;
                    array[currentLength] = (char)n3;
                    i = inputPtr;
                    currentLength = n6;
                }
            }
            this._inputPtr = i;
            n = currentLength;
        }
        this._textBuffer.setCurrentLength(currentLength);
    }
    
    private final void _isNextTokenNameNo(final int n) throws IOException, JsonParseException {
        this._parsingContext.setCurrentName(this._parseFieldName(n).getName());
        this._currToken = JsonToken.FIELD_NAME;
        final int skipWS = this._skipWS();
        if (skipWS != 58) {
            this._reportUnexpectedChar(skipWS, "was expecting a colon to separate field name and value");
        }
        final int skipWS2 = this._skipWS();
        if (skipWS2 == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return;
        }
        JsonToken nextToken = null;
        switch (skipWS2) {
            default: {
                nextToken = this._handleUnexpectedValue(skipWS2);
                break;
            }
            case 91: {
                nextToken = JsonToken.START_ARRAY;
                break;
            }
            case 123: {
                nextToken = JsonToken.START_OBJECT;
                break;
            }
            case 93:
            case 125: {
                this._reportUnexpectedChar(skipWS2, "expected a value");
            }
            case 116: {
                this._matchToken("true", 1);
                nextToken = JsonToken.VALUE_TRUE;
                break;
            }
            case 102: {
                this._matchToken("false", 1);
                nextToken = JsonToken.VALUE_FALSE;
                break;
            }
            case 110: {
                this._matchToken("null", 1);
                nextToken = JsonToken.VALUE_NULL;
                break;
            }
            case 45:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57: {
                nextToken = this.parseNumberText(skipWS2);
                break;
            }
        }
        this._nextToken = nextToken;
    }
    
    private final void _isNextTokenNameYes() throws IOException, JsonParseException {
        int n;
        if (this._inputPtr < this._inputEnd && this._inputBuffer[this._inputPtr] == 58) {
            ++this._inputPtr;
            final byte b = this._inputBuffer[this._inputPtr++];
            if (b == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return;
            }
            if (b == 123) {
                this._nextToken = JsonToken.START_OBJECT;
                return;
            }
            if (b == 91) {
                this._nextToken = JsonToken.START_ARRAY;
                return;
            }
            n = (b & 0xFF);
            if (n <= 32 || n == 47) {
                --this._inputPtr;
                n = this._skipWS();
            }
        }
        else {
            n = this._skipColon();
        }
        switch (n) {
            default: {
                this._nextToken = this._handleUnexpectedValue(n);
            }
            case 34: {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
            }
            case 91: {
                this._nextToken = JsonToken.START_ARRAY;
            }
            case 123: {
                this._nextToken = JsonToken.START_OBJECT;
            }
            case 93:
            case 125: {
                this._reportUnexpectedChar(n, "expected a value");
            }
            case 116: {
                this._matchToken("true", 1);
                this._nextToken = JsonToken.VALUE_TRUE;
            }
            case 102: {
                this._matchToken("false", 1);
                this._nextToken = JsonToken.VALUE_FALSE;
            }
            case 110: {
                this._matchToken("null", 1);
                this._nextToken = JsonToken.VALUE_NULL;
            }
            case 45:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57: {
                this._nextToken = this.parseNumberText(n);
            }
        }
    }
    
    private final JsonToken _nextAfterName() {
        this._nameCopied = false;
        final JsonToken nextToken = this._nextToken;
        this._nextToken = null;
        if (nextToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        }
        else if (nextToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        return this._currToken = nextToken;
    }
    
    private final JsonToken _nextTokenNotInObject(final int n) throws IOException, JsonParseException {
        if (n == 34) {
            this._tokenIncomplete = true;
            return this._currToken = JsonToken.VALUE_STRING;
        }
        switch (n) {
            default: {
                return this._currToken = this._handleUnexpectedValue(n);
            }
            case 91: {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                return this._currToken = JsonToken.START_ARRAY;
            }
            case 123: {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                return this._currToken = JsonToken.START_OBJECT;
            }
            case 93:
            case 125: {
                this._reportUnexpectedChar(n, "expected a value");
            }
            case 116: {
                this._matchToken("true", 1);
                return this._currToken = JsonToken.VALUE_TRUE;
            }
            case 102: {
                this._matchToken("false", 1);
                return this._currToken = JsonToken.VALUE_FALSE;
            }
            case 110: {
                this._matchToken("null", 1);
                return this._currToken = JsonToken.VALUE_NULL;
            }
            case 45:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57: {
                return this._currToken = this.parseNumberText(n);
            }
        }
    }
    
    private final JsonToken _parseFloatText(char[] array, int currentLength, int n, final boolean b, final int n2) throws IOException, JsonParseException {
        int n3 = 0;
        int n4 = 0;
        Label_0058: {
            if (n == 46) {
                final int n5 = currentLength + 1;
                array[currentLength] = (char)n;
                currentLength = n5;
                while (true) {
                    while (this._inputPtr < this._inputEnd || this.loadMore()) {
                        n = (0xFF & this._inputBuffer[this._inputPtr++]);
                        n3 = 0;
                        if (n >= 48) {
                            n3 = 0;
                            if (n <= 57) {
                                ++n4;
                                if (currentLength >= array.length) {
                                    array = this._textBuffer.finishCurrentSegment();
                                    currentLength = 0;
                                }
                                final int n6 = currentLength + 1;
                                array[currentLength] = (char)n;
                                currentLength = n6;
                                continue;
                            }
                        }
                        if (n4 == 0) {
                            this.reportUnexpectedNumberChar(n, "Decimal point not followed by a digit");
                        }
                        break Label_0058;
                    }
                    n3 = 1;
                    continue;
                }
            }
        }
        int n7 = 0;
        Label_0323: {
            if (n != 101) {
                n7 = 0;
                if (n != 69) {
                    break Label_0323;
                }
            }
            if (currentLength >= array.length) {
                array = this._textBuffer.finishCurrentSegment();
                currentLength = 0;
            }
            final int n8 = currentLength + 1;
            array[currentLength] = (char)n;
            if (this._inputPtr >= this._inputEnd) {
                this.loadMoreGuaranteed();
            }
            int n9 = 0xFF & this._inputBuffer[this._inputPtr++];
            if (n9 == 45 || n9 == 43) {
                int n10;
                if (n8 >= array.length) {
                    array = this._textBuffer.finishCurrentSegment();
                    n10 = 0;
                }
                else {
                    n10 = n8;
                }
                final int n11 = n10 + 1;
                array[n10] = (char)n9;
                if (this._inputPtr >= this._inputEnd) {
                    this.loadMoreGuaranteed();
                }
                n9 = (0xFF & this._inputBuffer[this._inputPtr++]);
                currentLength = n11;
            }
            else {
                currentLength = n8;
                n7 = 0;
            }
            while (n9 <= 57 && n9 >= 48) {
                ++n7;
                if (currentLength >= array.length) {
                    array = this._textBuffer.finishCurrentSegment();
                    currentLength = 0;
                }
                final int n12 = currentLength + 1;
                array[currentLength] = (char)n9;
                if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                    n3 = 1;
                    currentLength = n12;
                    break;
                }
                n9 = (0xFF & this._inputBuffer[this._inputPtr++]);
                currentLength = n12;
            }
            if (n7 == 0) {
                this.reportUnexpectedNumberChar(n9, "Exponent indicator not followed by a digit");
            }
        }
        if (n3 == 0) {
            --this._inputPtr;
        }
        this._textBuffer.setCurrentLength(currentLength);
        return this.resetFloat(b, n2, n4, n7);
    }
    
    private final JsonToken _parserNumber2(char[] finishCurrentSegment, int n, final boolean b, int n2) throws IOException, JsonParseException {
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final int n3 = 0xFF & this._inputBuffer[this._inputPtr++];
            if (n3 > 57 || n3 < 48) {
                if (n3 == 46 || n3 == 101 || n3 == 69) {
                    return this._parseFloatText(finishCurrentSegment, n, n3, b, n2);
                }
                --this._inputPtr;
                this._textBuffer.setCurrentLength(n);
                return this.resetInt(b, n2);
            }
            else {
                if (n >= finishCurrentSegment.length) {
                    finishCurrentSegment = this._textBuffer.finishCurrentSegment();
                    n = 0;
                }
                final int n4 = n + 1;
                finishCurrentSegment[n] = (char)n3;
                ++n2;
                n = n4;
            }
        }
        this._textBuffer.setCurrentLength(n);
        return this.resetInt(b, n2);
    }
    
    private final void _skipCComment() throws IOException, JsonParseException {
        final int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final int n = 0xFF & this._inputBuffer[this._inputPtr++];
            final int n2 = inputCodeComment[n];
            if (n2 != 0) {
                switch (n2) {
                    default: {
                        this._reportInvalidChar(n);
                        continue;
                    }
                    case 42: {
                        if (this._inputBuffer[this._inputPtr] == 47) {
                            ++this._inputPtr;
                            return;
                        }
                        continue;
                    }
                    case 10: {
                        this._skipLF();
                        continue;
                    }
                    case 13: {
                        this._skipCR();
                        continue;
                    }
                    case 2: {
                        this._skipUtf8_2(n);
                        continue;
                    }
                    case 3: {
                        this._skipUtf8_3(n);
                        continue;
                    }
                    case 4: {
                        this._skipUtf8_4(n);
                        continue;
                    }
                }
            }
        }
        this._reportInvalidEOF(" in a comment");
    }
    
    private final int _skipColon() throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b = this._inputBuffer[this._inputPtr++];
        Label_0230: {
            if (b == 58) {
                if (this._inputPtr < this._inputEnd) {
                    final int n = 0xFF & this._inputBuffer[this._inputPtr];
                    if (n > 32 && n != 47) {
                        ++this._inputPtr;
                        return n;
                    }
                }
            }
            else {
                final int n2 = b & 0xFF;
                while (true) {
                    switch (n2) {
                        default: {
                            if (n2 < 32) {
                                this._throwInvalidSpace(n2);
                            }
                            if (this._inputPtr >= this._inputEnd) {
                                this.loadMoreGuaranteed();
                            }
                            final int n3 = 0xFF & this._inputBuffer[this._inputPtr++];
                            if (n3 != 58) {
                                this._reportUnexpectedChar(n3, "was expecting a colon to separate field name and value");
                                break Label_0230;
                            }
                            break Label_0230;
                        }
                        case 9:
                        case 13:
                        case 32: {
                            this._skipCR();
                            continue;
                        }
                        case 10: {
                            this._skipLF();
                            continue;
                        }
                        case 47: {
                            this._skipComment();
                            continue;
                        }
                    }
                }
            }
        }
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final int n4 = 0xFF & this._inputBuffer[this._inputPtr++];
            if (n4 > 32) {
                if (n4 != 47) {
                    return n4;
                }
                this._skipComment();
            }
            else {
                if (n4 == 32) {
                    continue;
                }
                if (n4 == 10) {
                    this._skipLF();
                }
                else if (n4 == 13) {
                    this._skipCR();
                }
                else {
                    if (n4 == 9) {
                        continue;
                    }
                    this._throwInvalidSpace(n4);
                }
            }
        }
        throw this._constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
    }
    
    private final void _skipComment() throws IOException, JsonParseException {
        if (!this.isEnabled(Feature.ALLOW_COMMENTS)) {
            this._reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            this._reportInvalidEOF(" in a comment");
        }
        final int n = 0xFF & this._inputBuffer[this._inputPtr++];
        if (n == 47) {
            this._skipCppComment();
            return;
        }
        if (n == 42) {
            this._skipCComment();
            return;
        }
        this._reportUnexpectedChar(n, "was expecting either '*' or '/' for a comment");
    }
    
    private final void _skipCppComment() throws IOException, JsonParseException {
        final int[] inputCodeComment = CharTypes.getInputCodeComment();
    Label_0133:
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final int n = 0xFF & this._inputBuffer[this._inputPtr++];
            final int n2 = inputCodeComment[n];
            if (n2 != 0) {
                switch (n2) {
                    case 4: {
                        this._skipUtf8_4(n);
                        continue;
                    }
                    case 3: {
                        this._skipUtf8_3(n);
                        continue;
                    }
                    case 2: {
                        this._skipUtf8_2(n);
                    }
                    case 42: {
                        continue;
                    }
                    default: {
                        this._reportInvalidChar(n);
                        continue;
                    }
                    case 10: {
                        this._skipLF();
                        break Label_0133;
                    }
                    case 13: {
                        this._skipCR();
                        return;
                    }
                }
            }
        }
    }
    
    private final void _skipUtf8_2(final int n) throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b = this._inputBuffer[this._inputPtr++];
        if ((b & 0xC0) != 0x80) {
            this._reportInvalidOther(b & 0xFF, this._inputPtr);
        }
    }
    
    private final void _skipUtf8_3(final int n) throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b = this._inputBuffer[this._inputPtr++];
        if ((b & 0xC0) != 0x80) {
            this._reportInvalidOther(b & 0xFF, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b2 = this._inputBuffer[this._inputPtr++];
        if ((b2 & 0xC0) != 0x80) {
            this._reportInvalidOther(b2 & 0xFF, this._inputPtr);
        }
    }
    
    private final void _skipUtf8_4(final int n) throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b = this._inputBuffer[this._inputPtr++];
        if ((b & 0xC0) != 0x80) {
            this._reportInvalidOther(b & 0xFF, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b2 = this._inputBuffer[this._inputPtr++];
        if ((b2 & 0xC0) != 0x80) {
            this._reportInvalidOther(b2 & 0xFF, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        final byte b3 = this._inputBuffer[this._inputPtr++];
        if ((b3 & 0xC0) != 0x80) {
            this._reportInvalidOther(b3 & 0xFF, this._inputPtr);
        }
    }
    
    private final int _skipWS() throws IOException, JsonParseException {
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final int n = 0xFF & this._inputBuffer[this._inputPtr++];
            if (n > 32) {
                if (n != 47) {
                    return n;
                }
                this._skipComment();
            }
            else {
                if (n == 32) {
                    continue;
                }
                if (n == 10) {
                    this._skipLF();
                }
                else if (n == 13) {
                    this._skipCR();
                }
                else {
                    if (n == 9) {
                        continue;
                    }
                    this._throwInvalidSpace(n);
                }
            }
        }
        throw this._constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
    }
    
    private final int _skipWSOrEnd() throws IOException, JsonParseException {
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final int n = 0xFF & this._inputBuffer[this._inputPtr++];
            if (n > 32) {
                if (n != 47) {
                    return n;
                }
                this._skipComment();
            }
            else {
                if (n == 32) {
                    continue;
                }
                if (n == 10) {
                    this._skipLF();
                }
                else if (n == 13) {
                    this._skipCR();
                }
                else {
                    if (n == 9) {
                        continue;
                    }
                    this._throwInvalidSpace(n);
                }
            }
        }
        this._handleEOF();
        return -1;
    }
    
    private final int _verifyNoLeadingZeroes() throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            return 48;
        }
        int n = 0xFF & this._inputBuffer[this._inputPtr];
        if (n < 48 || n > 57) {
            return 48;
        }
        if (!this.isEnabled(Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            this.reportInvalidNumber("Leading zeroes not allowed");
        }
        ++this._inputPtr;
        if (n == 48) {
            while (this._inputPtr < this._inputEnd || this.loadMore()) {
                n = (0xFF & this._inputBuffer[this._inputPtr]);
                if (n < 48 || n > 57) {
                    return 48;
                }
                ++this._inputPtr;
                if (n != 48) {
                    break;
                }
            }
        }
        return n;
    }
    
    private final Name addName(final int[] array, final int n, final int n2) throws JsonParseException {
        final int n3 = n2 + ((n << 2) - 4);
        int n4;
        if (n2 < 4) {
            n4 = array[n - 1];
            array[n - 1] = n4 << (4 - n2 << 3);
        }
        else {
            n4 = 0;
        }
        char[] value = this._textBuffer.emptyAndGetCurrentSegment();
        int i = 0;
        int count = 0;
    Label_0356_Outer:
        while (i < n3) {
            int n5 = 0xFF & array[i >> 2] >> (3 - (i & 0x3) << 3);
            ++i;
            while (true) {
                Label_0500: {
                    if (n5 <= 127) {
                        break Label_0500;
                    }
                    int n6;
                    int n7;
                    if ((n5 & 0xE0) == 0xC0) {
                        n6 = (n5 & 0x1F);
                        n7 = 1;
                    }
                    else if ((n5 & 0xF0) == 0xE0) {
                        n6 = (n5 & 0xF);
                        n7 = 2;
                    }
                    else if ((n5 & 0xF8) == 0xF0) {
                        n6 = (n5 & 0x7);
                        n7 = 3;
                    }
                    else {
                        this._reportInvalidInitial(n5);
                        n6 = (n7 = 1);
                    }
                    if (i + n7 > n3) {
                        this._reportInvalidEOF(" in field name");
                    }
                    final int n8 = array[i >> 2] >> (3 - (i & 0x3) << 3);
                    ++i;
                    if ((n8 & 0xC0) != 0x80) {
                        this._reportInvalidOther(n8);
                    }
                    n5 = (n6 << 6 | (n8 & 0x3F));
                    if (n7 > 1) {
                        final int n9 = array[i >> 2] >> (3 - (i & 0x3) << 3);
                        ++i;
                        if ((n9 & 0xC0) != 0x80) {
                            this._reportInvalidOther(n9);
                        }
                        n5 = (n5 << 6 | (n9 & 0x3F));
                        if (n7 > 2) {
                            final int n10 = array[i >> 2] >> (3 - (i & 0x3) << 3);
                            ++i;
                            if ((n10 & 0xC0) != 0x80) {
                                this._reportInvalidOther(n10 & 0xFF);
                            }
                            n5 = (n5 << 6 | (n10 & 0x3F));
                        }
                    }
                    if (n7 <= 2) {
                        break Label_0500;
                    }
                    final int n11 = n5 - 65536;
                    if (count >= value.length) {
                        value = this._textBuffer.expandCurrentSegment();
                    }
                    final int n12 = count + 1;
                    value[count] = (char)(55296 + (n11 >> 10));
                    n5 = (0xDC00 | (n11 & 0x3FF));
                    if (n12 >= value.length) {
                        value = this._textBuffer.expandCurrentSegment();
                    }
                    count = n12 + 1;
                    value[n12] = (char)n5;
                    continue Label_0356_Outer;
                }
                final int n12 = count;
                continue;
            }
        }
        final String s = new String(value, 0, count);
        if (n2 < 4) {
            array[n - 1] = n4;
        }
        return this._symbols.addName(s, array, n);
    }
    
    private final Name findName(final int n, final int n2) throws JsonParseException {
        final Name name = this._symbols.findName(n);
        if (name != null) {
            return name;
        }
        this._quadBuffer[0] = n;
        return this.addName(this._quadBuffer, 1, n2);
    }
    
    private final Name findName(final int n, final int n2, final int n3) throws JsonParseException {
        final Name name = this._symbols.findName(n, n2);
        if (name != null) {
            return name;
        }
        this._quadBuffer[0] = n;
        this._quadBuffer[1] = n2;
        return this.addName(this._quadBuffer, 2, n3);
    }
    
    private final Name findName(int[] growArrayBy, final int n, final int n2, final int n3) throws JsonParseException {
        if (n >= growArrayBy.length) {
            growArrayBy = growArrayBy(growArrayBy, growArrayBy.length);
            this._quadBuffer = growArrayBy;
        }
        final int n4 = n + 1;
        growArrayBy[n] = n2;
        final Name name = this._symbols.findName(growArrayBy, n4);
        if (name == null) {
            return this.addName(growArrayBy, n4, n3);
        }
        return name;
    }
    
    public static int[] growArrayBy(final int[] array, final int n) {
        if (array == null) {
            return new int[n];
        }
        final int length = array.length;
        final int[] array2 = new int[length + n];
        System.arraycopy(array, 0, array2, 0, length);
        return array2;
    }
    
    private int nextByte() throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd) {
            this.loadMoreGuaranteed();
        }
        return 0xFF & this._inputBuffer[this._inputPtr++];
    }
    
    private final Name parseFieldName(final int n, final int n2, final int n3) throws IOException, JsonParseException {
        return this.parseEscapedFieldName(this._quadBuffer, 0, n, n2, n3);
    }
    
    private final Name parseFieldName(final int n, final int n2, final int n3, final int n4) throws IOException, JsonParseException {
        this._quadBuffer[0] = n;
        return this.parseEscapedFieldName(this._quadBuffer, 1, n2, n3, n4);
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
    
    protected byte[] _decodeBase64(final Base64Variant base64Variant) throws IOException, JsonParseException {
        final ByteArrayBuilder getByteArrayBuilder = this._getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                this.loadMoreGuaranteed();
            }
            final int n = 0xFF & this._inputBuffer[this._inputPtr++];
            if (n > 32) {
                int n2 = base64Variant.decodeBase64Char(n);
                if (n2 < 0) {
                    if (n == 34) {
                        return getByteArrayBuilder.toByteArray();
                    }
                    n2 = this._decodeBase64Escape(base64Variant, n, 0);
                    if (n2 < 0) {
                        continue;
                    }
                }
                final int n3 = n2;
                if (this._inputPtr >= this._inputEnd) {
                    this.loadMoreGuaranteed();
                }
                final int n4 = 0xFF & this._inputBuffer[this._inputPtr++];
                int n5 = base64Variant.decodeBase64Char(n4);
                if (n5 < 0) {
                    n5 = this._decodeBase64Escape(base64Variant, n4, 1);
                }
                final int n6 = n5 | n3 << 6;
                if (this._inputPtr >= this._inputEnd) {
                    this.loadMoreGuaranteed();
                }
                final int n7 = 0xFF & this._inputBuffer[this._inputPtr++];
                int n8 = base64Variant.decodeBase64Char(n7);
                if (n8 < 0) {
                    if (n8 != -2) {
                        if (n7 == 34 && !base64Variant.usesPadding()) {
                            getByteArrayBuilder.append(n6 >> 4);
                            return getByteArrayBuilder.toByteArray();
                        }
                        n8 = this._decodeBase64Escape(base64Variant, n7, 2);
                    }
                    if (n8 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            this.loadMoreGuaranteed();
                        }
                        final int n9 = 0xFF & this._inputBuffer[this._inputPtr++];
                        if (!base64Variant.usesPaddingChar(n9)) {
                            throw this.reportInvalidBase64Char(base64Variant, n9, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        getByteArrayBuilder.append(n6 >> 4);
                        continue;
                    }
                }
                final int n10 = n8 | n6 << 6;
                if (this._inputPtr >= this._inputEnd) {
                    this.loadMoreGuaranteed();
                }
                final int n11 = 0xFF & this._inputBuffer[this._inputPtr++];
                int n12 = base64Variant.decodeBase64Char(n11);
                if (n12 < 0) {
                    if (n12 != -2) {
                        if (n11 == 34 && !base64Variant.usesPadding()) {
                            getByteArrayBuilder.appendTwoBytes(n10 >> 2);
                            return getByteArrayBuilder.toByteArray();
                        }
                        n12 = this._decodeBase64Escape(base64Variant, n11, 3);
                    }
                    if (n12 == -2) {
                        getByteArrayBuilder.appendTwoBytes(n10 >> 2);
                        continue;
                    }
                }
                getByteArrayBuilder.appendThreeBytes(n12 | n10 << 6);
            }
        }
    }
    
    protected int _decodeCharForError(final int n) throws IOException, JsonParseException {
        int n2 = n;
        if (n2 < 0) {
            int n3;
            if ((n2 & 0xE0) == 0xC0) {
                n2 &= 0x1F;
                n3 = 1;
            }
            else if ((n2 & 0xF0) == 0xE0) {
                n2 &= 0xF;
                n3 = 2;
            }
            else if ((n2 & 0xF8) == 0xF0) {
                n2 &= 0x7;
                n3 = 3;
            }
            else {
                this._reportInvalidInitial(n2 & 0xFF);
                n3 = 1;
            }
            final int nextByte = this.nextByte();
            if ((nextByte & 0xC0) != 0x80) {
                this._reportInvalidOther(nextByte & 0xFF);
            }
            n2 = (n2 << 6 | (nextByte & 0x3F));
            if (n3 > 1) {
                final int nextByte2 = this.nextByte();
                if ((nextByte2 & 0xC0) != 0x80) {
                    this._reportInvalidOther(nextByte2 & 0xFF);
                }
                n2 = (n2 << 6 | (nextByte2 & 0x3F));
                if (n3 > 2) {
                    final int nextByte3 = this.nextByte();
                    if ((nextByte3 & 0xC0) != 0x80) {
                        this._reportInvalidOther(nextByte3 & 0xFF);
                    }
                    n2 = (n2 << 6 | (nextByte3 & 0x3F));
                }
            }
        }
        return n2;
    }
    
    @Override
    protected final char _decodeEscaped() throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            this._reportInvalidEOF(" in character escape sequence");
        }
        final byte b = this._inputBuffer[this._inputPtr++];
        switch (b) {
            default: {
                return this._handleUnrecognizedCharacterEscape((char)this._decodeCharForError(b));
            }
            case 98: {
                return '\b';
            }
            case 116: {
                return '\t';
            }
            case 110: {
                return '\n';
            }
            case 102: {
                return '\f';
            }
            case 114: {
                return '\r';
            }
            case 34:
            case 47:
            case 92: {
                return (char)b;
            }
            case 117: {
                int n = 0;
                for (int i = 0; i < 4; ++i) {
                    if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                        this._reportInvalidEOF(" in character escape sequence");
                    }
                    final byte b2 = this._inputBuffer[this._inputPtr++];
                    final int charToHex = CharTypes.charToHex(b2);
                    if (charToHex < 0) {
                        this._reportUnexpectedChar(b2, "expected a hex-digit for character escape sequence");
                    }
                    n = (charToHex | n << 4);
                }
                return (char)n;
            }
        }
    }
    
    @Override
    protected void _finishString() throws IOException, JsonParseException {
        int i = this._inputPtr;
        if (i >= this._inputEnd) {
            this.loadMoreGuaranteed();
            i = this._inputPtr;
        }
        final char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        final int[] sInputCodesUtf8 = Utf8StreamParser.sInputCodesUtf8;
        final int min = Math.min(this._inputEnd, i + emptyAndGetCurrentSegment.length);
        final byte[] inputBuffer = this._inputBuffer;
        int currentLength = 0;
        while (i < min) {
            final int n = 0xFF & inputBuffer[i];
            if (sInputCodesUtf8[n] != 0) {
                if (n == 34) {
                    this._inputPtr = i + 1;
                    this._textBuffer.setCurrentLength(currentLength);
                    return;
                }
                break;
            }
            else {
                ++i;
                final int n2 = currentLength + 1;
                emptyAndGetCurrentSegment[currentLength] = (char)n;
                currentLength = n2;
            }
        }
        this._inputPtr = i;
        this._finishString2(emptyAndGetCurrentSegment, currentLength);
    }
    
    protected final String _getText2(final JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (jsonToken) {
            default: {
                return jsonToken.asString();
            }
            case FIELD_NAME: {
                return this._parsingContext.getCurrentName();
            }
            case VALUE_STRING:
            case VALUE_NUMBER_INT:
            case VALUE_NUMBER_FLOAT: {
                return this._textBuffer.contentsAsString();
            }
        }
    }
    
    protected JsonToken _handleApostropheValue() throws IOException, JsonParseException {
        int currentLength = 0;
        char[] array = this._textBuffer.emptyAndGetCurrentSegment();
        final int[] sInputCodesUtf8 = Utf8StreamParser.sInputCodesUtf8;
        final byte[] inputBuffer = this._inputBuffer;
    Block_6:
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                this.loadMoreGuaranteed();
            }
            if (currentLength >= array.length) {
                array = this._textBuffer.finishCurrentSegment();
                currentLength = 0;
            }
            int inputEnd = this._inputEnd;
            final int n = this._inputPtr + (array.length - currentLength);
            if (n < inputEnd) {
                inputEnd = n;
            }
            while (this._inputPtr < inputEnd) {
                int n2 = 0xFF & inputBuffer[this._inputPtr++];
                if (n2 == 39 || sInputCodesUtf8[n2] != 0) {
                    if (n2 == 39) {
                        break Block_6;
                    }
                    switch (sInputCodesUtf8[n2]) {
                        default: {
                            if (n2 < 32) {
                                this._throwUnquotedSpace(n2, "string value");
                            }
                            this._reportInvalidChar(n2);
                            break;
                        }
                        case 1: {
                            if (n2 != 34) {
                                n2 = this._decodeEscaped();
                                break;
                            }
                            break;
                        }
                        case 2: {
                            n2 = this._decodeUtf8_2(n2);
                            break;
                        }
                        case 3: {
                            if (this._inputEnd - this._inputPtr >= 2) {
                                n2 = this._decodeUtf8_3fast(n2);
                                break;
                            }
                            n2 = this._decodeUtf8_3(n2);
                            break;
                        }
                        case 4: {
                            final int decodeUtf8_4 = this._decodeUtf8_4(n2);
                            final int n3 = currentLength + 1;
                            array[currentLength] = (char)(0xD800 | decodeUtf8_4 >> 10);
                            if (n3 >= array.length) {
                                array = this._textBuffer.finishCurrentSegment();
                                currentLength = 0;
                            }
                            else {
                                currentLength = n3;
                            }
                            n2 = (0xDC00 | (decodeUtf8_4 & 0x3FF));
                            break;
                        }
                    }
                    if (currentLength >= array.length) {
                        array = this._textBuffer.finishCurrentSegment();
                        currentLength = 0;
                    }
                    final int n4 = currentLength + 1;
                    array[currentLength] = (char)n2;
                    currentLength = n4;
                    break;
                }
                else {
                    final int n5 = currentLength + 1;
                    array[currentLength] = (char)n2;
                    currentLength = n5;
                }
            }
        }
        this._textBuffer.setCurrentLength(currentLength);
        return JsonToken.VALUE_STRING;
    }
    
    protected JsonToken _handleInvalidNumberStart(int n, final boolean b) throws IOException, JsonParseException {
        if (n == 73) {
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOFInValue();
            }
            n = this._inputBuffer[this._inputPtr++];
            if (n == 78) {
                String str;
                if (b) {
                    str = "-INF";
                }
                else {
                    str = "+INF";
                }
                this._matchToken(str, 3);
                if (this.isEnabled(Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    double n2;
                    if (b) {
                        n2 = Double.NEGATIVE_INFINITY;
                    }
                    else {
                        n2 = Double.POSITIVE_INFINITY;
                    }
                    return this.resetAsNaN(str, n2);
                }
                this._reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            }
            else if (n == 110) {
                String str2;
                if (b) {
                    str2 = "-Infinity";
                }
                else {
                    str2 = "+Infinity";
                }
                this._matchToken(str2, 3);
                if (this.isEnabled(Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    double n3;
                    if (b) {
                        n3 = Double.NEGATIVE_INFINITY;
                    }
                    else {
                        n3 = Double.POSITIVE_INFINITY;
                    }
                    return this.resetAsNaN(str2, n3);
                }
                this._reportError("Non-standard token '" + str2 + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            }
        }
        this.reportUnexpectedNumberChar(n, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }
    
    protected JsonToken _handleUnexpectedValue(final int n) throws IOException, JsonParseException {
        switch (n) {
            case 39: {
                if (this.isEnabled(Feature.ALLOW_SINGLE_QUOTES)) {
                    return this._handleApostropheValue();
                }
                break;
            }
            case 78: {
                this._matchToken("NaN", 1);
                if (this.isEnabled(Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    return this.resetAsNaN("NaN", Double.NaN);
                }
                this._reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                break;
            }
            case 43: {
                if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                    this._reportInvalidEOFInValue();
                }
                return this._handleInvalidNumberStart(0xFF & this._inputBuffer[this._inputPtr++], false);
            }
        }
        this._reportUnexpectedChar(n, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }
    
    protected final Name _handleUnusualFieldName(int n) throws IOException, JsonParseException {
        if (n == 39 && this.isEnabled(Feature.ALLOW_SINGLE_QUOTES)) {
            return this._parseApostropheFieldName();
        }
        if (!this.isEnabled(Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            this._reportUnexpectedChar(n, "was expecting double-quote to start field name");
        }
        final int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        if (inputCodeUtf8JsNames[n] != 0) {
            this._reportUnexpectedChar(n, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int[] array = this._quadBuffer;
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        int n5;
        while (true) {
            if (n3 < 4) {
                ++n3;
                n2 = (n | n2 << 8);
                n5 = n4;
            }
            else {
                if (n4 >= array.length) {
                    array = growArrayBy(array, array.length);
                    this._quadBuffer = array;
                }
                n5 = n4 + 1;
                array[n4] = n2;
                n2 = n;
                n3 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOF(" in field name");
            }
            n = (0xFF & this._inputBuffer[this._inputPtr]);
            if (inputCodeUtf8JsNames[n] != 0) {
                break;
            }
            ++this._inputPtr;
            n4 = n5;
        }
        if (n3 > 0) {
            if (n5 >= array.length) {
                array = growArrayBy(array, array.length);
                this._quadBuffer = array;
            }
            final int n6 = n5 + 1;
            array[n5] = n2;
            n5 = n6;
        }
        Name name = this._symbols.findName(array, n5);
        if (name == null) {
            name = this.addName(array, n5, n3);
        }
        return name;
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
    
    protected final void _matchToken(final String s, int endIndex) throws IOException, JsonParseException {
        do {
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOF(" in a value");
            }
            if (this._inputBuffer[this._inputPtr] != s.charAt(endIndex)) {
                this._reportInvalidToken(s.substring(0, endIndex), "'null', 'true', 'false' or NaN");
            }
            ++this._inputPtr;
        } while (++endIndex < s.length());
        if (this._inputPtr < this._inputEnd || this.loadMore()) {
            final int n = 0xFF & this._inputBuffer[this._inputPtr];
            if (n >= 48 && n != 93 && n != 125 && Character.isJavaIdentifierPart((char)this._decodeCharForError(n))) {
                ++this._inputPtr;
                this._reportInvalidToken(s.substring(0, endIndex), "'null', 'true', 'false' or NaN");
            }
        }
    }
    
    protected final Name _parseApostropheFieldName() throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            this._reportInvalidEOF(": was expecting closing ''' for name");
        }
        int i = 0xFF & this._inputBuffer[this._inputPtr++];
        if (i == 39) {
            return BytesToNameCanonicalizer.getEmptyName();
        }
        int[] array = this._quadBuffer;
        int n = 0;
        int n2 = 0;
        final int[] sInputCodesLatin1 = Utf8StreamParser.sInputCodesLatin1;
        int n3 = 0;
        while (i != 39) {
            if (i != 34 && sInputCodesLatin1[i] != 0) {
                if (i != 92) {
                    this._throwUnquotedSpace(i, "name");
                }
                else {
                    i = this._decodeEscaped();
                }
                if (i > 127) {
                    if (n2 >= 4) {
                        if (n3 >= array.length) {
                            array = growArrayBy(array, array.length);
                            this._quadBuffer = array;
                        }
                        final int n4 = n3 + 1;
                        array[n3] = n;
                        n = 0;
                        n2 = 0;
                        n3 = n4;
                    }
                    int n5;
                    if (i < 2048) {
                        n = (n << 8 | (0xC0 | i >> 6));
                        ++n2;
                        n5 = n3;
                    }
                    else {
                        int n6 = n << 8 | (0xE0 | i >> 12);
                        int n7 = n2 + 1;
                        if (n7 >= 4) {
                            if (n3 >= array.length) {
                                array = growArrayBy(array, array.length);
                                this._quadBuffer = array;
                            }
                            n5 = n3 + 1;
                            array[n3] = n6;
                            n6 = 0;
                            n7 = 0;
                        }
                        else {
                            n5 = n3;
                        }
                        n = (n6 << 8 | (0x80 | (0x3F & i >> 6)));
                        n2 = n7 + 1;
                    }
                    i = (0x80 | (i & 0x3F));
                    n3 = n5;
                }
            }
            int n8;
            if (n2 < 4) {
                ++n2;
                n = (i | n << 8);
                n8 = n3;
            }
            else {
                if (n3 >= array.length) {
                    array = growArrayBy(array, array.length);
                    this._quadBuffer = array;
                }
                n8 = n3 + 1;
                array[n3] = n;
                n = i;
                n2 = 1;
            }
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOF(" in field name");
            }
            i = (0xFF & this._inputBuffer[this._inputPtr++]);
            n3 = n8;
        }
        int n9;
        if (n2 > 0) {
            if (n3 >= array.length) {
                array = growArrayBy(array, array.length);
                this._quadBuffer = array;
            }
            n9 = n3 + 1;
            array[n3] = n;
        }
        else {
            n9 = n3;
        }
        Name name = this._symbols.findName(array, n9);
        if (name == null) {
            name = this.addName(array, n9, n2);
        }
        return name;
    }
    
    protected final Name _parseFieldName(final int n) throws IOException, JsonParseException {
        if (n != 34) {
            return this._handleUnusualFieldName(n);
        }
        if (9 + this._inputPtr > this._inputEnd) {
            return this.slowParseFieldName();
        }
        final byte[] inputBuffer = this._inputBuffer;
        final int[] sInputCodesLatin1 = Utf8StreamParser.sInputCodesLatin1;
        final int n2 = 0xFF & inputBuffer[this._inputPtr++];
        if (sInputCodesLatin1[n2] == 0) {
            final int n3 = 0xFF & inputBuffer[this._inputPtr++];
            if (sInputCodesLatin1[n3] == 0) {
                final int n4 = n3 | n2 << 8;
                final int n5 = 0xFF & inputBuffer[this._inputPtr++];
                if (sInputCodesLatin1[n5] == 0) {
                    final int n6 = n5 | n4 << 8;
                    final int n7 = 0xFF & inputBuffer[this._inputPtr++];
                    if (sInputCodesLatin1[n7] == 0) {
                        final int quad1 = n7 | n6 << 8;
                        final int n8 = 0xFF & inputBuffer[this._inputPtr++];
                        if (sInputCodesLatin1[n8] == 0) {
                            this._quad1 = quad1;
                            return this.parseMediumFieldName(n8, sInputCodesLatin1);
                        }
                        if (n8 == 34) {
                            return this.findName(quad1, 4);
                        }
                        return this.parseFieldName(quad1, n8, 4);
                    }
                    else {
                        if (n7 == 34) {
                            return this.findName(n6, 3);
                        }
                        return this.parseFieldName(n6, n7, 3);
                    }
                }
                else {
                    if (n5 == 34) {
                        return this.findName(n4, 2);
                    }
                    return this.parseFieldName(n4, n5, 2);
                }
            }
            else {
                if (n3 == 34) {
                    return this.findName(n2, 1);
                }
                return this.parseFieldName(n2, n3, 1);
            }
        }
        else {
            if (n2 == 34) {
                return BytesToNameCanonicalizer.getEmptyName();
            }
            return this.parseFieldName(0, n2, 0);
        }
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
    
    protected void _reportInvalidChar(final int n) throws JsonParseException {
        if (n < 32) {
            this._throwInvalidSpace(n);
        }
        this._reportInvalidInitial(n);
    }
    
    protected void _reportInvalidInitial(final int i) throws JsonParseException {
        this._reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }
    
    protected void _reportInvalidOther(final int i) throws JsonParseException {
        this._reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }
    
    protected void _reportInvalidOther(final int n, final int inputPtr) throws JsonParseException {
        this._inputPtr = inputPtr;
        this._reportInvalidOther(n);
    }
    
    protected void _reportInvalidToken(final String str, final String str2) throws IOException, JsonParseException {
        final StringBuilder sb = new StringBuilder(str);
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final char c = (char)this._decodeCharForError(this._inputBuffer[this._inputPtr++]);
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            ++this._inputPtr;
            sb.append(c);
        }
        this._reportError("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }
    
    protected final void _skipCR() throws IOException {
        if ((this._inputPtr < this._inputEnd || this.loadMore()) && this._inputBuffer[this._inputPtr] == 10) {
            ++this._inputPtr;
        }
        ++this._currInputRow;
        this._currInputRowStart = this._inputPtr;
    }
    
    protected final void _skipLF() throws IOException {
        ++this._currInputRow;
        this._currInputRowStart = this._inputPtr;
    }
    
    protected void _skipString() throws IOException, JsonParseException {
        this._tokenIncomplete = false;
        final int[] sInputCodesUtf8 = Utf8StreamParser.sInputCodesUtf8;
        final byte[] inputBuffer = this._inputBuffer;
    Label_0051_Outer:
        while (true) {
            int inputPtr = this._inputPtr;
            int n = this._inputEnd;
            while (true) {
                Label_0198: {
                    if (inputPtr < n) {
                        break Label_0198;
                    }
                    this.loadMoreGuaranteed();
                    final int inputPtr2 = this._inputPtr;
                    n = this._inputEnd;
                    final int inputPtr3 = inputPtr2;
                    if (inputPtr3 >= n) {
                        this._inputPtr = inputPtr3;
                        continue Label_0051_Outer;
                    }
                    inputPtr = inputPtr3 + 1;
                    final int n2 = 0xFF & inputBuffer[inputPtr3];
                    if (sInputCodesUtf8[n2] != 0) {
                        this._inputPtr = inputPtr;
                        if (n2 == 34) {
                            break;
                        }
                        switch (sInputCodesUtf8[n2]) {
                            default: {
                                if (n2 < 32) {
                                    this._throwUnquotedSpace(n2, "string value");
                                    continue Label_0051_Outer;
                                }
                                this._reportInvalidChar(n2);
                                continue Label_0051_Outer;
                            }
                            case 1: {
                                this._decodeEscaped();
                                continue Label_0051_Outer;
                            }
                            case 2: {
                                this._skipUtf8_2(n2);
                                continue Label_0051_Outer;
                            }
                            case 3: {
                                this._skipUtf8_3(n2);
                                continue Label_0051_Outer;
                            }
                            case 4: {
                                this._skipUtf8_4(n2);
                                continue Label_0051_Outer;
                            }
                        }
                    }
                }
                final int inputPtr3 = inputPtr;
                continue;
            }
        }
    }
    
    @Override
    public void close() throws IOException {
        super.close();
        this._symbols.release();
    }
    
    @Override
    public byte[] getBinaryValue(final Base64Variant obj) throws IOException, JsonParseException {
        if (this._currToken != JsonToken.VALUE_STRING && (this._currToken != JsonToken.VALUE_EMBEDDED_OBJECT || this._binaryValue == null)) {
            this._reportError("Current token (" + this._currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        }
        while (true) {
            Label_0125: {
                if (!this._tokenIncomplete) {
                    break Label_0125;
                }
                try {
                    this._binaryValue = this._decodeBase64(obj);
                    this._tokenIncomplete = false;
                    return this._binaryValue;
                }
                catch (IllegalArgumentException ex) {
                    throw this._constructError("Failed to decode VALUE_STRING as base64 (" + obj + "): " + ex.getMessage());
                }
            }
            if (this._binaryValue == null) {
                final ByteArrayBuilder getByteArrayBuilder = this._getByteArrayBuilder();
                this._decodeBase64(this.getText(), getByteArrayBuilder, obj);
                this._binaryValue = getByteArrayBuilder.toByteArray();
                continue;
            }
            continue;
        }
    }
    
    @Override
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }
    
    @Override
    public Object getInputSource() {
        return this._inputStream;
    }
    
    @Override
    public String getText() throws IOException, JsonParseException {
        final JsonToken currToken = this._currToken;
        if (currToken == JsonToken.VALUE_STRING) {
            if (this._tokenIncomplete) {
                this._tokenIncomplete = false;
                this._finishString();
            }
            return this._textBuffer.contentsAsString();
        }
        return this._getText2(currToken);
    }
    
    @Override
    public char[] getTextCharacters() throws IOException, JsonParseException {
        if (this._currToken == null) {
            return null;
        }
        switch (this._currToken) {
            default: {
                return this._currToken.asCharArray();
            }
            case FIELD_NAME: {
                if (!this._nameCopied) {
                    final String currentName = this._parsingContext.getCurrentName();
                    final int length = currentName.length();
                    if (this._nameCopyBuffer == null) {
                        this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(length);
                    }
                    else if (this._nameCopyBuffer.length < length) {
                        this._nameCopyBuffer = new char[length];
                    }
                    currentName.getChars(0, length, this._nameCopyBuffer, 0);
                    this._nameCopied = true;
                }
                return this._nameCopyBuffer;
            }
            case VALUE_STRING: {
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    this._finishString();
                    return this._textBuffer.getTextBuffer();
                }
                return this._textBuffer.getTextBuffer();
            }
            case VALUE_NUMBER_INT:
            case VALUE_NUMBER_FLOAT: {
                return this._textBuffer.getTextBuffer();
            }
        }
    }
    
    @Override
    public int getTextLength() throws IOException, JsonParseException {
        if (this._currToken == null) {
            return 0;
        }
        switch (this._currToken) {
            default: {
                return this._currToken.asCharArray().length;
            }
            case FIELD_NAME: {
                return this._parsingContext.getCurrentName().length();
            }
            case VALUE_STRING: {
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    this._finishString();
                    return this._textBuffer.size();
                }
                return this._textBuffer.size();
            }
            case VALUE_NUMBER_INT:
            case VALUE_NUMBER_FLOAT: {
                return this._textBuffer.size();
            }
        }
    }
    
    @Override
    public int getTextOffset() throws IOException, JsonParseException {
        if (this._currToken != null) {
            switch (this._currToken) {
                case FIELD_NAME: {
                    return 0;
                }
                case VALUE_STRING: {
                    if (this._tokenIncomplete) {
                        this._tokenIncomplete = false;
                        this._finishString();
                        return this._textBuffer.getTextOffset();
                    }
                    return this._textBuffer.getTextOffset();
                }
                case VALUE_NUMBER_INT:
                case VALUE_NUMBER_FLOAT: {
                    return this._textBuffer.getTextOffset();
                }
            }
        }
        return 0;
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
    public Boolean nextBooleanValue() throws IOException, JsonParseException {
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            final JsonToken nextToken = this._nextToken;
            this._nextToken = null;
            if ((this._currToken = nextToken) == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (nextToken == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            if (nextToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            }
            else if (nextToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            }
            return null;
        }
        else {
            switch (this.nextToken()) {
                default: {
                    return null;
                }
                case VALUE_TRUE: {
                    return Boolean.TRUE;
                }
                case VALUE_FALSE: {
                    return Boolean.FALSE;
                }
            }
        }
    }
    
    @Override
    public boolean nextFieldName(final SerializableString serializableString) throws IOException, JsonParseException {
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nextAfterName();
            return false;
        }
        if (this._tokenIncomplete) {
            this._skipString();
        }
        int n = this._skipWSOrEnd();
        if (n < 0) {
            this.close();
            this._currToken = null;
            return false;
        }
        this._tokenInputTotal = this._currInputProcessed + this._inputPtr - 1L;
        this._tokenInputRow = this._currInputRow;
        this._tokenInputCol = this._inputPtr - this._currInputRowStart - 1;
        this._binaryValue = null;
        if (n == 93) {
            if (!this._parsingContext.inArray()) {
                this._reportMismatchedEndMarker(n, '}');
            }
            this._parsingContext = this._parsingContext.getParent();
            this._currToken = JsonToken.END_ARRAY;
            return false;
        }
        if (n == 125) {
            if (!this._parsingContext.inObject()) {
                this._reportMismatchedEndMarker(n, ']');
            }
            this._parsingContext = this._parsingContext.getParent();
            this._currToken = JsonToken.END_OBJECT;
            return false;
        }
        if (this._parsingContext.expectComma()) {
            if (n != 44) {
                this._reportUnexpectedChar(n, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
            }
            n = this._skipWS();
        }
        if (!this._parsingContext.inObject()) {
            this._nextTokenNotInObject(n);
            return false;
        }
        Label_0378: {
            if (n == 34) {
                final byte[] quotedUTF8 = serializableString.asQuotedUTF8();
                final int length = quotedUTF8.length;
                if (length + this._inputPtr < this._inputEnd) {
                    final int n2 = length + this._inputPtr;
                    if (this._inputBuffer[n2] == 34) {
                        int i = 0;
                        final int inputPtr = this._inputPtr;
                        while (i != length) {
                            if (quotedUTF8[i] != this._inputBuffer[inputPtr + i]) {
                                break Label_0378;
                            }
                            ++i;
                        }
                        this._inputPtr = n2 + 1;
                        this._parsingContext.setCurrentName(serializableString.getValue());
                        this._currToken = JsonToken.FIELD_NAME;
                        this._isNextTokenNameYes();
                        return true;
                    }
                }
            }
        }
        this._isNextTokenNameNo(n);
        return false;
    }
    
    @Override
    public int nextIntValue(final int n) throws IOException, JsonParseException {
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            final JsonToken nextToken = this._nextToken;
            this._nextToken = null;
            if ((this._currToken = nextToken) == JsonToken.VALUE_NUMBER_INT) {
                return this.getIntValue();
            }
            if (nextToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            }
            else if (nextToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            }
            return n;
        }
        else {
            if (this.nextToken() == JsonToken.VALUE_NUMBER_INT) {
                return this.getIntValue();
            }
            return n;
        }
    }
    
    @Override
    public long nextLongValue(final long n) throws IOException, JsonParseException {
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            final JsonToken nextToken = this._nextToken;
            this._nextToken = null;
            if ((this._currToken = nextToken) == JsonToken.VALUE_NUMBER_INT) {
                return this.getLongValue();
            }
            if (nextToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            }
            else if (nextToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            }
            return n;
        }
        else {
            if (this.nextToken() == JsonToken.VALUE_NUMBER_INT) {
                return this.getLongValue();
            }
            return n;
        }
    }
    
    @Override
    public String nextTextValue() throws IOException, JsonParseException {
        if (this._currToken == JsonToken.FIELD_NAME) {
            this._nameCopied = false;
            final JsonToken nextToken = this._nextToken;
            this._nextToken = null;
            if ((this._currToken = nextToken) == JsonToken.VALUE_STRING) {
                if (this._tokenIncomplete) {
                    this._tokenIncomplete = false;
                    this._finishString();
                }
                return this._textBuffer.contentsAsString();
            }
            if (nextToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
            }
            else if (nextToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
            }
            return null;
        }
        else {
            if (this.nextToken() == JsonToken.VALUE_STRING) {
                return this.getText();
            }
            return null;
        }
    }
    
    @Override
    public JsonToken nextToken() throws IOException, JsonParseException {
        this._numTypesValid = 0;
        if (this._currToken == JsonToken.FIELD_NAME) {
            return this._nextAfterName();
        }
        if (this._tokenIncomplete) {
            this._skipString();
        }
        int n = this._skipWSOrEnd();
        if (n < 0) {
            this.close();
            return this._currToken = null;
        }
        this._tokenInputTotal = this._currInputProcessed + this._inputPtr - 1L;
        this._tokenInputRow = this._currInputRow;
        this._tokenInputCol = this._inputPtr - this._currInputRowStart - 1;
        this._binaryValue = null;
        if (n == 93) {
            if (!this._parsingContext.inArray()) {
                this._reportMismatchedEndMarker(n, '}');
            }
            this._parsingContext = this._parsingContext.getParent();
            return this._currToken = JsonToken.END_ARRAY;
        }
        if (n == 125) {
            if (!this._parsingContext.inObject()) {
                this._reportMismatchedEndMarker(n, ']');
            }
            this._parsingContext = this._parsingContext.getParent();
            return this._currToken = JsonToken.END_OBJECT;
        }
        if (this._parsingContext.expectComma()) {
            if (n != 44) {
                this._reportUnexpectedChar(n, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
            }
            n = this._skipWS();
        }
        if (!this._parsingContext.inObject()) {
            return this._nextTokenNotInObject(n);
        }
        this._parsingContext.setCurrentName(this._parseFieldName(n).getName());
        this._currToken = JsonToken.FIELD_NAME;
        final int skipWS = this._skipWS();
        if (skipWS != 58) {
            this._reportUnexpectedChar(skipWS, "was expecting a colon to separate field name and value");
        }
        final int skipWS2 = this._skipWS();
        if (skipWS2 == 34) {
            this._tokenIncomplete = true;
            this._nextToken = JsonToken.VALUE_STRING;
            return this._currToken;
        }
        JsonToken nextToken = null;
        switch (skipWS2) {
            default: {
                nextToken = this._handleUnexpectedValue(skipWS2);
                break;
            }
            case 91: {
                nextToken = JsonToken.START_ARRAY;
                break;
            }
            case 123: {
                nextToken = JsonToken.START_OBJECT;
                break;
            }
            case 93:
            case 125: {
                this._reportUnexpectedChar(skipWS2, "expected a value");
            }
            case 116: {
                this._matchToken("true", 1);
                nextToken = JsonToken.VALUE_TRUE;
                break;
            }
            case 102: {
                this._matchToken("false", 1);
                nextToken = JsonToken.VALUE_FALSE;
                break;
            }
            case 110: {
                this._matchToken("null", 1);
                nextToken = JsonToken.VALUE_NULL;
                break;
            }
            case 45:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57: {
                nextToken = this.parseNumberText(skipWS2);
                break;
            }
        }
        this._nextToken = nextToken;
        return this._currToken;
    }
    
    protected Name parseEscapedFieldName(int[] array, int n, int n2, int decodeEscaped, int n3) throws IOException, JsonParseException {
        final int[] sInputCodesLatin1 = Utf8StreamParser.sInputCodesLatin1;
    Label_0190_Outer:
        while (true) {
            while (true) {
                Label_0422: {
                    if (sInputCodesLatin1[decodeEscaped] == 0) {
                        break Label_0422;
                    }
                    if (decodeEscaped == 34) {
                        break;
                    }
                    if (decodeEscaped != 92) {
                        this._throwUnquotedSpace(decodeEscaped, "name");
                    }
                    else {
                        decodeEscaped = this._decodeEscaped();
                    }
                    if (decodeEscaped <= 127) {
                        break Label_0422;
                    }
                    int n4;
                    if (n3 >= 4) {
                        if (n >= array.length) {
                            array = growArrayBy(array, array.length);
                            this._quadBuffer = array;
                        }
                        n4 = n + 1;
                        array[n] = n2;
                        n2 = 0;
                        n3 = 0;
                    }
                    else {
                        n4 = n;
                    }
                    int n5;
                    if (decodeEscaped < 2048) {
                        n2 = (n2 << 8 | (0xC0 | decodeEscaped >> 6));
                        ++n3;
                        n5 = n4;
                    }
                    else {
                        int n6 = n2 << 8 | (0xE0 | decodeEscaped >> 12);
                        int n7 = n3 + 1;
                        if (n7 >= 4) {
                            if (n4 >= array.length) {
                                array = growArrayBy(array, array.length);
                                this._quadBuffer = array;
                            }
                            n5 = n4 + 1;
                            array[n4] = n6;
                            n6 = 0;
                            n7 = 0;
                        }
                        else {
                            n5 = n4;
                        }
                        n2 = (n6 << 8 | (0x80 | (0x3F & decodeEscaped >> 6)));
                        n3 = n7 + 1;
                    }
                    decodeEscaped = (0x80 | (decodeEscaped & 0x3F));
                    final int n8 = n5;
                    if (n3 < 4) {
                        ++n3;
                        n2 = (decodeEscaped | n2 << 8);
                        n = n8;
                    }
                    else {
                        if (n8 >= array.length) {
                            array = growArrayBy(array, array.length);
                            this._quadBuffer = array;
                        }
                        n = n8 + 1;
                        array[n8] = n2;
                        n2 = decodeEscaped;
                        n3 = 1;
                    }
                    if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                        this._reportInvalidEOF(" in field name");
                    }
                    decodeEscaped = (0xFF & this._inputBuffer[this._inputPtr++]);
                    continue Label_0190_Outer;
                }
                final int n8 = n;
                continue;
            }
        }
        if (n3 > 0) {
            if (n >= array.length) {
                array = growArrayBy(array, array.length);
                this._quadBuffer = array;
            }
            final int n9 = n + 1;
            array[n] = n2;
            n = n9;
        }
        Name name = this._symbols.findName(array, n);
        if (name == null) {
            name = this.addName(array, n, n3);
        }
        return name;
    }
    
    protected Name parseLongFieldName(int n) throws IOException, JsonParseException {
        final int[] sInputCodesLatin1 = Utf8StreamParser.sInputCodesLatin1;
        int n2 = 2;
        while (this._inputEnd - this._inputPtr >= 4) {
            final int n3 = 0xFF & this._inputBuffer[this._inputPtr++];
            if (sInputCodesLatin1[n3] != 0) {
                if (n3 == 34) {
                    return this.findName(this._quadBuffer, n2, n, 1);
                }
                return this.parseEscapedFieldName(this._quadBuffer, n2, n, n3, 1);
            }
            else {
                final int n4 = n3 | n << 8;
                final int n5 = 0xFF & this._inputBuffer[this._inputPtr++];
                if (sInputCodesLatin1[n5] != 0) {
                    if (n5 == 34) {
                        return this.findName(this._quadBuffer, n2, n4, 2);
                    }
                    return this.parseEscapedFieldName(this._quadBuffer, n2, n4, n5, 2);
                }
                else {
                    final int n6 = n5 | n4 << 8;
                    final int n7 = 0xFF & this._inputBuffer[this._inputPtr++];
                    if (sInputCodesLatin1[n7] != 0) {
                        if (n7 == 34) {
                            return this.findName(this._quadBuffer, n2, n6, 3);
                        }
                        return this.parseEscapedFieldName(this._quadBuffer, n2, n6, n7, 3);
                    }
                    else {
                        final int n8 = n7 | n6 << 8;
                        final int n9 = 0xFF & this._inputBuffer[this._inputPtr++];
                        if (sInputCodesLatin1[n9] != 0) {
                            if (n9 == 34) {
                                return this.findName(this._quadBuffer, n2, n8, 4);
                            }
                            return this.parseEscapedFieldName(this._quadBuffer, n2, n8, n9, 4);
                        }
                        else {
                            if (n2 >= this._quadBuffer.length) {
                                this._quadBuffer = growArrayBy(this._quadBuffer, n2);
                            }
                            final int[] quadBuffer = this._quadBuffer;
                            final int n10 = n2 + 1;
                            quadBuffer[n2] = n8;
                            n = n9;
                            n2 = n10;
                        }
                    }
                }
            }
        }
        return this.parseEscapedFieldName(this._quadBuffer, n2, 0, n, 0);
    }
    
    protected final Name parseMediumFieldName(final int n, final int[] array) throws IOException, JsonParseException {
        final int n2 = 0xFF & this._inputBuffer[this._inputPtr++];
        if (array[n2] != 0) {
            if (n2 == 34) {
                return this.findName(this._quad1, n, 1);
            }
            return this.parseFieldName(this._quad1, n, n2, 1);
        }
        else {
            final int n3 = n2 | n << 8;
            final int n4 = 0xFF & this._inputBuffer[this._inputPtr++];
            if (array[n4] != 0) {
                if (n4 == 34) {
                    return this.findName(this._quad1, n3, 2);
                }
                return this.parseFieldName(this._quad1, n3, n4, 2);
            }
            else {
                final int n5 = n4 | n3 << 8;
                final int n6 = 0xFF & this._inputBuffer[this._inputPtr++];
                if (array[n6] != 0) {
                    if (n6 == 34) {
                        return this.findName(this._quad1, n5, 3);
                    }
                    return this.parseFieldName(this._quad1, n5, n6, 3);
                }
                else {
                    final int n7 = n6 | n5 << 8;
                    final int n8 = 0xFF & this._inputBuffer[this._inputPtr++];
                    if (array[n8] == 0) {
                        this._quadBuffer[0] = this._quad1;
                        this._quadBuffer[1] = n7;
                        return this.parseLongFieldName(n8);
                    }
                    if (n8 == 34) {
                        return this.findName(this._quad1, n7, 4);
                    }
                    return this.parseFieldName(this._quad1, n7, n8, 4);
                }
            }
        }
    }
    
    protected final JsonToken parseNumberText(int verifyNoLeadingZeroes) throws IOException, JsonParseException {
        final char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        final boolean b = verifyNoLeadingZeroes == 45;
        int n;
        if (b) {
            n = 0 + 1;
            emptyAndGetCurrentSegment[0] = '-';
            if (this._inputPtr >= this._inputEnd) {
                this.loadMoreGuaranteed();
            }
            verifyNoLeadingZeroes = (0xFF & this._inputBuffer[this._inputPtr++]);
            if (verifyNoLeadingZeroes < 48 || verifyNoLeadingZeroes > 57) {
                return this._handleInvalidNumberStart(verifyNoLeadingZeroes, true);
            }
        }
        else {
            n = 0;
        }
        if (verifyNoLeadingZeroes == 48) {
            verifyNoLeadingZeroes = this._verifyNoLeadingZeroes();
        }
        int currentLength = n + 1;
        emptyAndGetCurrentSegment[n] = (char)verifyNoLeadingZeroes;
        int n2 = 1;
        int inputEnd = this._inputPtr + emptyAndGetCurrentSegment.length;
        if (inputEnd > this._inputEnd) {
            inputEnd = this._inputEnd;
        }
        while (this._inputPtr < inputEnd) {
            final int n3 = 0xFF & this._inputBuffer[this._inputPtr++];
            if (n3 < 48 || n3 > 57) {
                if (n3 == 46 || n3 == 101 || n3 == 69) {
                    return this._parseFloatText(emptyAndGetCurrentSegment, currentLength, n3, b, n2);
                }
                --this._inputPtr;
                this._textBuffer.setCurrentLength(currentLength);
                return this.resetInt(b, n2);
            }
            else {
                ++n2;
                final int n4 = currentLength + 1;
                emptyAndGetCurrentSegment[currentLength] = (char)n3;
                currentLength = n4;
            }
        }
        return this._parserNumber2(emptyAndGetCurrentSegment, currentLength, b, n2);
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
    
    @Override
    public void setCodec(final ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }
    
    protected Name slowParseFieldName() throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            this._reportInvalidEOF(": was expecting closing '\"' for name");
        }
        final int n = 0xFF & this._inputBuffer[this._inputPtr++];
        if (n == 34) {
            return BytesToNameCanonicalizer.getEmptyName();
        }
        return this.parseEscapedFieldName(this._quadBuffer, 0, 0, n, 0);
    }
}
