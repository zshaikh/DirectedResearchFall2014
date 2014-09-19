package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.sym.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.util.*;
import java.io.*;

public final class ReaderBasedParser extends JsonParserBase
{
    protected char[] _inputBuffer;
    protected ObjectCodec _objectCodec;
    protected Reader _reader;
    protected final CharsToNameCanonicalizer _symbols;
    protected boolean _tokenIncomplete;
    
    public ReaderBasedParser(final IOContext ioContext, final int n, final Reader reader, final ObjectCodec objectCodec, final CharsToNameCanonicalizer symbols) {
        super(ioContext, n);
        this._tokenIncomplete = false;
        this._reader = reader;
        this._inputBuffer = ioContext.allocTokenBuffer();
        this._objectCodec = objectCodec;
        this._symbols = symbols;
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
    
    private String _parseFieldName2(final int n, int n2, final int n3) throws IOException, JsonParseException {
        this._textBuffer.resetWithShared(this._inputBuffer, n, this._inputPtr - n);
        char[] array = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOF(": was expecting closing '" + (char)n3 + "' for name");
            }
            final int n4;
            int decodeEscaped = n4 = this._inputBuffer[this._inputPtr++];
            if (n4 <= 92) {
                if (n4 == 92) {
                    decodeEscaped = this._decodeEscaped();
                }
                else if (n4 <= n3) {
                    if (n4 == n3) {
                        break;
                    }
                    if (n4 < 32) {
                        this._throwUnquotedSpace(n4, "name");
                    }
                }
            }
            n2 = n4 + n2 * 31;
            final int n5 = currentSegmentSize + 1;
            array[currentSegmentSize] = (char)decodeEscaped;
            if (n5 >= array.length) {
                array = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            else {
                currentSegmentSize = n5;
            }
        }
        this._textBuffer.setCurrentLength(currentSegmentSize);
        final TextBuffer textBuffer = this._textBuffer;
        return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), n2);
    }
    
    private String _parseUnusualFieldName2(final int n, int n2, final int[] array) throws IOException, JsonParseException {
        this._textBuffer.resetWithShared(this._inputBuffer, n, this._inputPtr - n);
        char[] array2 = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        final int length = array.length;
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final char ch = this._inputBuffer[this._inputPtr];
            if (ch <= length) {
                if (array[ch] != 0) {
                    break;
                }
            }
            else if (!Character.isJavaIdentifierPart(ch)) {
                break;
            }
            ++this._inputPtr;
            n2 = ch + n2 * 31;
            final int n3 = currentSegmentSize + 1;
            array2[currentSegmentSize] = ch;
            if (n3 >= array2.length) {
                array2 = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            else {
                currentSegmentSize = n3;
            }
        }
        this._textBuffer.setCurrentLength(currentSegmentSize);
        final TextBuffer textBuffer = this._textBuffer;
        return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), n2);
    }
    
    private final void _skipCComment() throws IOException, JsonParseException {
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final char c = this._inputBuffer[this._inputPtr++];
            if (c <= '*') {
                if (c == '*') {
                    if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                        break;
                    }
                    if (this._inputBuffer[this._inputPtr] == '/') {
                        ++this._inputPtr;
                        return;
                    }
                    continue;
                }
                else {
                    if (c >= ' ') {
                        continue;
                    }
                    if (c == '\n') {
                        this._skipLF();
                    }
                    else if (c == '\r') {
                        this._skipCR();
                    }
                    else {
                        if (c == '\t') {
                            continue;
                        }
                        this._throwInvalidSpace(c);
                    }
                }
            }
        }
        this._reportInvalidEOF(" in a comment");
    }
    
    private final void _skipComment() throws IOException, JsonParseException {
        if (!this.isEnabled(Feature.ALLOW_COMMENTS)) {
            this._reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            this._reportInvalidEOF(" in a comment");
        }
        final char c = this._inputBuffer[this._inputPtr++];
        if (c == '/') {
            this._skipCppComment();
            return;
        }
        if (c == '*') {
            this._skipCComment();
            return;
        }
        this._reportUnexpectedChar(c, "was expecting either '*' or '/' for a comment");
    }
    
    private final void _skipCppComment() throws IOException, JsonParseException {
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final char c = this._inputBuffer[this._inputPtr++];
            if (c < ' ') {
                if (c == '\n') {
                    this._skipLF();
                    break;
                }
                if (c == '\r') {
                    this._skipCR();
                    return;
                }
                if (c == '\t') {
                    continue;
                }
                this._throwInvalidSpace(c);
            }
        }
    }
    
    private final int _skipWS() throws IOException, JsonParseException {
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final char c = this._inputBuffer[this._inputPtr++];
            if (c > ' ') {
                if (c != '/') {
                    return c;
                }
                this._skipComment();
            }
            else {
                if (c == ' ') {
                    continue;
                }
                if (c == '\n') {
                    this._skipLF();
                }
                else if (c == '\r') {
                    this._skipCR();
                }
                else {
                    if (c == '\t') {
                        continue;
                    }
                    this._throwInvalidSpace(c);
                }
            }
        }
        throw this._constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
    }
    
    private final int _skipWSOrEnd() throws IOException, JsonParseException {
        while (this._inputPtr < this._inputEnd || this.loadMore()) {
            final char c = this._inputBuffer[this._inputPtr++];
            if (c > ' ') {
                if (c != '/') {
                    return c;
                }
                this._skipComment();
            }
            else {
                if (c == ' ') {
                    continue;
                }
                if (c == '\n') {
                    this._skipLF();
                }
                else if (c == '\r') {
                    this._skipCR();
                }
                else {
                    if (c == '\t') {
                        continue;
                    }
                    this._throwInvalidSpace(c);
                }
            }
        }
        this._handleEOF();
        return -1;
    }
    
    private final char _verifyNoLeadingZeroes() throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            return '0';
        }
        char c = this._inputBuffer[this._inputPtr];
        if (c < '0' || c > '9') {
            return '0';
        }
        if (!this.isEnabled(Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            this.reportInvalidNumber("Leading zeroes not allowed");
        }
        ++this._inputPtr;
        if (c == '0') {
            while (this._inputPtr < this._inputEnd || this.loadMore()) {
                c = this._inputBuffer[this._inputPtr];
                if (c < '0' || c > '9') {
                    return '0';
                }
                ++this._inputPtr;
                if (c != '0') {
                    break;
                }
            }
        }
        return c;
    }
    
    private final JsonToken parseNumberText2(final boolean b) throws IOException, JsonParseException {
        char[] array = this._textBuffer.emptyAndGetCurrentSegment();
        int n = 0;
        if (b) {
            final int n2 = 0 + 1;
            array[0] = '-';
            n = n2;
        }
        int n3 = 0;
        char c;
        if (this._inputPtr < this._inputEnd) {
            c = this._inputBuffer[this._inputPtr++];
        }
        else {
            c = this.getNextChar("No digit following minus sign");
        }
        if (c == '0') {
            c = this._verifyNoLeadingZeroes();
        }
        while (true) {
            while (c >= '0' && c <= '9') {
                ++n3;
                if (n >= array.length) {
                    array = this._textBuffer.finishCurrentSegment();
                    n = 0;
                }
                final int n4 = n + 1;
                array[n] = c;
                if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                    c = '\0';
                    int n5 = 1;
                    if (n3 == 0) {
                        this.reportInvalidNumber("Missing integer part (next char " + JsonParserMinimalBase._getCharDesc(c) + ")");
                    }
                    int n6 = 0;
                    int currentLength = 0;
                    Label_0241: {
                        if (c == '.') {
                            currentLength = n4 + 1;
                            array[n4] = c;
                            while (true) {
                                while (this._inputPtr < this._inputEnd || this.loadMore()) {
                                    c = this._inputBuffer[this._inputPtr++];
                                    if (c >= '0' && c <= '9') {
                                        ++n6;
                                        if (currentLength >= array.length) {
                                            array = this._textBuffer.finishCurrentSegment();
                                            currentLength = 0;
                                        }
                                        final int n7 = currentLength + 1;
                                        array[currentLength] = c;
                                        currentLength = n7;
                                    }
                                    else {
                                        if (n6 == 0) {
                                            this.reportUnexpectedNumberChar(c, "Decimal point not followed by a digit");
                                        }
                                        break Label_0241;
                                    }
                                }
                                n5 = 1;
                                continue;
                            }
                        }
                        currentLength = n4;
                        n6 = 0;
                    }
                    int n8 = 0;
                    Label_0501: {
                        if (c != 'e') {
                            n8 = 0;
                            if (c != 'E') {
                                break Label_0501;
                            }
                        }
                        if (currentLength >= array.length) {
                            array = this._textBuffer.finishCurrentSegment();
                            currentLength = 0;
                        }
                        final int n9 = currentLength + 1;
                        array[currentLength] = c;
                        char c2;
                        if (this._inputPtr < this._inputEnd) {
                            c2 = this._inputBuffer[this._inputPtr++];
                        }
                        else {
                            c2 = this.getNextChar("expected a digit for number exponent");
                        }
                        if (c2 == '-' || c2 == '+') {
                            int n10;
                            if (n9 >= array.length) {
                                array = this._textBuffer.finishCurrentSegment();
                                n10 = 0;
                            }
                            else {
                                n10 = n9;
                            }
                            final int n11 = n10 + 1;
                            array[n10] = c2;
                            if (this._inputPtr < this._inputEnd) {
                                c2 = this._inputBuffer[this._inputPtr++];
                            }
                            else {
                                c2 = this.getNextChar("expected a digit for number exponent");
                            }
                            currentLength = n11;
                        }
                        else {
                            currentLength = n9;
                            n8 = 0;
                        }
                        while (c2 <= '9' && c2 >= '0') {
                            ++n8;
                            if (currentLength >= array.length) {
                                array = this._textBuffer.finishCurrentSegment();
                                currentLength = 0;
                            }
                            final int n12 = currentLength + 1;
                            array[currentLength] = c2;
                            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                                n5 = 1;
                                currentLength = n12;
                                break;
                            }
                            c2 = this._inputBuffer[this._inputPtr++];
                            currentLength = n12;
                        }
                        if (n8 == 0) {
                            this.reportUnexpectedNumberChar(c2, "Exponent indicator not followed by a digit");
                        }
                    }
                    if (n5 == 0) {
                        --this._inputPtr;
                    }
                    this._textBuffer.setCurrentLength(currentLength);
                    return this.reset(b, n3, n6, n8);
                }
                c = this._inputBuffer[this._inputPtr++];
                n = n4;
            }
            final int n4 = n;
            int n5 = 0;
            continue;
        }
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
    
    protected byte[] _decodeBase64(final Base64Variant base64Variant) throws IOException, JsonParseException {
        final ByteArrayBuilder getByteArrayBuilder = this._getByteArrayBuilder();
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                this.loadMoreGuaranteed();
            }
            final char c = this._inputBuffer[this._inputPtr++];
            if (c > ' ') {
                int n = base64Variant.decodeBase64Char(c);
                if (n < 0) {
                    if (c == '\"') {
                        return getByteArrayBuilder.toByteArray();
                    }
                    n = this._decodeBase64Escape(base64Variant, c, 0);
                    if (n < 0) {
                        continue;
                    }
                }
                final int n2 = n;
                if (this._inputPtr >= this._inputEnd) {
                    this.loadMoreGuaranteed();
                }
                final char c2 = this._inputBuffer[this._inputPtr++];
                int n3 = base64Variant.decodeBase64Char(c2);
                if (n3 < 0) {
                    n3 = this._decodeBase64Escape(base64Variant, c2, 1);
                }
                final int n4 = n3 | n2 << 6;
                if (this._inputPtr >= this._inputEnd) {
                    this.loadMoreGuaranteed();
                }
                final char c3 = this._inputBuffer[this._inputPtr++];
                int n5 = base64Variant.decodeBase64Char(c3);
                if (n5 < 0) {
                    if (n5 != -2) {
                        if (c3 == '\"' && !base64Variant.usesPadding()) {
                            getByteArrayBuilder.append(n4 >> 4);
                            return getByteArrayBuilder.toByteArray();
                        }
                        n5 = this._decodeBase64Escape(base64Variant, c3, 2);
                    }
                    if (n5 == -2) {
                        if (this._inputPtr >= this._inputEnd) {
                            this.loadMoreGuaranteed();
                        }
                        final char c4 = this._inputBuffer[this._inputPtr++];
                        if (!base64Variant.usesPaddingChar(c4)) {
                            throw this.reportInvalidBase64Char(base64Variant, c4, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        getByteArrayBuilder.append(n4 >> 4);
                        continue;
                    }
                }
                final int n6 = n5 | n4 << 6;
                if (this._inputPtr >= this._inputEnd) {
                    this.loadMoreGuaranteed();
                }
                final char c5 = this._inputBuffer[this._inputPtr++];
                int n7 = base64Variant.decodeBase64Char(c5);
                if (n7 < 0) {
                    if (n7 != -2) {
                        if (c5 == '\"' && !base64Variant.usesPadding()) {
                            getByteArrayBuilder.appendTwoBytes(n6 >> 2);
                            return getByteArrayBuilder.toByteArray();
                        }
                        n7 = this._decodeBase64Escape(base64Variant, c5, 3);
                    }
                    if (n7 == -2) {
                        getByteArrayBuilder.appendTwoBytes(n6 >> 2);
                        continue;
                    }
                }
                getByteArrayBuilder.appendThreeBytes(n7 | n6 << 6);
            }
        }
    }
    
    @Override
    protected final char _decodeEscaped() throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            this._reportInvalidEOF(" in character escape sequence");
        }
        final char c = this._inputBuffer[this._inputPtr++];
        switch (c) {
            default: {
                return this._handleUnrecognizedCharacterEscape(c);
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
                return c;
            }
            case 117: {
                int n = 0;
                for (int i = 0; i < 4; ++i) {
                    if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                        this._reportInvalidEOF(" in character escape sequence");
                    }
                    final char c2 = this._inputBuffer[this._inputPtr++];
                    final int charToHex = CharTypes.charToHex(c2);
                    if (charToHex < 0) {
                        this._reportUnexpectedChar(c2, "expected a hex-digit for character escape sequence");
                    }
                    n = (charToHex | n << 4);
                }
                return (char)n;
            }
        }
    }
    
    @Override
    protected void _finishString() throws IOException, JsonParseException {
        int inputPtr = this._inputPtr;
        final int inputEnd = this._inputEnd;
        if (inputPtr < inputEnd) {
            final int[] inputCodeLatin1 = CharTypes.getInputCodeLatin1();
            final int length = inputCodeLatin1.length;
            do {
                final char c = this._inputBuffer[inputPtr];
                if (c < length && inputCodeLatin1[c] != 0) {
                    if (c == '\"') {
                        this._textBuffer.resetWithShared(this._inputBuffer, this._inputPtr, inputPtr - this._inputPtr);
                        this._inputPtr = inputPtr + 1;
                        return;
                    }
                    break;
                }
            } while (++inputPtr < inputEnd);
        }
        this._textBuffer.resetWithCopy(this._inputBuffer, this._inputPtr, inputPtr - this._inputPtr);
        this._inputPtr = inputPtr;
        this._finishString2();
    }
    
    protected void _finishString2() throws IOException, JsonParseException {
        char[] array = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOF(": was expecting closing quote for a string value");
            }
            final int n;
            int decodeEscaped = n = this._inputBuffer[this._inputPtr++];
            if (n <= 92) {
                if (n == 92) {
                    decodeEscaped = this._decodeEscaped();
                }
                else if (n <= 34) {
                    if (n == 34) {
                        break;
                    }
                    if (n < 32) {
                        this._throwUnquotedSpace(n, "string value");
                    }
                }
            }
            if (currentSegmentSize >= array.length) {
                array = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            final int n2 = currentSegmentSize + 1;
            array[currentSegmentSize] = (char)decodeEscaped;
            currentSegmentSize = n2;
        }
        this._textBuffer.setCurrentLength(currentSegmentSize);
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
    
    protected final JsonToken _handleApostropheValue() throws IOException, JsonParseException {
        char[] array = this._textBuffer.emptyAndGetCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOF(": was expecting closing quote for a string value");
            }
            final int n;
            int decodeEscaped = n = this._inputBuffer[this._inputPtr++];
            if (n <= 92) {
                if (n == 92) {
                    decodeEscaped = this._decodeEscaped();
                }
                else if (n <= 39) {
                    if (n == 39) {
                        break;
                    }
                    if (n < 32) {
                        this._throwUnquotedSpace(n, "string value");
                    }
                }
            }
            if (currentSegmentSize >= array.length) {
                array = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            final int n2 = currentSegmentSize + 1;
            array[currentSegmentSize] = (char)decodeEscaped;
            currentSegmentSize = n2;
        }
        this._textBuffer.setCurrentLength(currentSegmentSize);
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
    
    protected final JsonToken _handleUnexpectedValue(final int n) throws IOException, JsonParseException {
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
                return this._handleInvalidNumberStart(this._inputBuffer[this._inputPtr++], false);
            }
        }
        this._reportUnexpectedChar(n, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }
    
    protected final String _handleUnusualFieldName(final int n) throws IOException, JsonParseException {
        if (n == 39 && this.isEnabled(Feature.ALLOW_SINGLE_QUOTES)) {
            return this._parseApostropheFieldName();
        }
        if (!this.isEnabled(Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            this._reportUnexpectedChar(n, "was expecting double-quote to start field name");
        }
        final int[] inputCodeLatin1JsNames = CharTypes.getInputCodeLatin1JsNames();
        final int length = inputCodeLatin1JsNames.length;
        int javaIdentifierPart;
        if (n < length) {
            if (inputCodeLatin1JsNames[n] == 0 && (n < 48 || n > 57)) {
                javaIdentifierPart = 1;
            }
            else {
                javaIdentifierPart = 0;
            }
        }
        else {
            javaIdentifierPart = (Character.isJavaIdentifierPart((char)n) ? 1 : 0);
        }
        if (javaIdentifierPart == 0) {
            this._reportUnexpectedChar(n, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int inputPtr = this._inputPtr;
        final int inputEnd = this._inputEnd;
        int n2 = 0;
        if (inputPtr < inputEnd) {
            do {
                final char ch = this._inputBuffer[inputPtr];
                if (ch < length) {
                    if (inputCodeLatin1JsNames[ch] != 0) {
                        final int n3 = this._inputPtr - 1;
                        this._inputPtr = inputPtr;
                        return this._symbols.findSymbol(this._inputBuffer, n3, inputPtr - n3, n2);
                    }
                }
                else if (!Character.isJavaIdentifierPart(ch)) {
                    final int n4 = this._inputPtr - 1;
                    this._inputPtr = inputPtr;
                    return this._symbols.findSymbol(this._inputBuffer, n4, inputPtr - n4, n2);
                }
                n2 = ch + n2 * 31;
            } while (++inputPtr < inputEnd);
        }
        final int n5 = this._inputPtr - 1;
        this._inputPtr = inputPtr;
        return this._parseUnusualFieldName2(n5, n2, inputCodeLatin1JsNames);
    }
    
    protected final void _matchToken(final String s, int endIndex) throws IOException, JsonParseException {
        do {
            if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
                this._reportInvalidEOFInValue();
            }
            if (this._inputBuffer[this._inputPtr] != s.charAt(endIndex)) {
                this._reportInvalidToken(s.substring(0, endIndex), "'null', 'true', 'false' or NaN");
            }
            ++this._inputPtr;
        } while (++endIndex < s.length());
        if (this._inputPtr < this._inputEnd || this.loadMore()) {
            final char ch = this._inputBuffer[this._inputPtr];
            if (ch >= '0' && ch != ']' && ch != '}' && Character.isJavaIdentifierPart(ch)) {
                ++this._inputPtr;
                this._reportInvalidToken(s.substring(0, endIndex), "'null', 'true', 'false' or NaN");
            }
        }
    }
    
    protected final String _parseApostropheFieldName() throws IOException, JsonParseException {
        int inputPtr = this._inputPtr;
        final int inputEnd = this._inputEnd;
        int n = 0;
        if (inputPtr < inputEnd) {
            final int[] inputCodeLatin1 = CharTypes.getInputCodeLatin1();
            final int length = inputCodeLatin1.length;
            do {
                final char c = this._inputBuffer[inputPtr];
                if (c == '\'') {
                    final int inputPtr2 = this._inputPtr;
                    this._inputPtr = inputPtr + 1;
                    return this._symbols.findSymbol(this._inputBuffer, inputPtr2, inputPtr - inputPtr2, n);
                }
                if (c < length && inputCodeLatin1[c] != 0) {
                    break;
                }
                n = c + n * 31;
            } while (++inputPtr < inputEnd);
        }
        final int inputPtr3 = this._inputPtr;
        this._inputPtr = inputPtr;
        return this._parseFieldName2(inputPtr3, n, 39);
    }
    
    protected final String _parseFieldName(final int n) throws IOException, JsonParseException {
        if (n != 34) {
            return this._handleUnusualFieldName(n);
        }
        int inputPtr = this._inputPtr;
        final int inputEnd = this._inputEnd;
        int n2 = 0;
        if (inputPtr < inputEnd) {
            final int[] inputCodeLatin1 = CharTypes.getInputCodeLatin1();
            final int length = inputCodeLatin1.length;
            do {
                final char c = this._inputBuffer[inputPtr];
                if (c < length && inputCodeLatin1[c] != 0) {
                    if (c == '\"') {
                        final int inputPtr2 = this._inputPtr;
                        this._inputPtr = inputPtr + 1;
                        return this._symbols.findSymbol(this._inputBuffer, inputPtr2, inputPtr - inputPtr2, n2);
                    }
                    break;
                }
                else {
                    n2 = c + n2 * 31;
                }
            } while (++inputPtr < inputEnd);
        }
        final int inputPtr3 = this._inputPtr;
        this._inputPtr = inputPtr;
        return this._parseFieldName2(inputPtr3, n2, 34);
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
    
    protected final void _skipCR() throws IOException {
        if ((this._inputPtr < this._inputEnd || this.loadMore()) && this._inputBuffer[this._inputPtr] == '\n') {
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
        int inputPtr = this._inputPtr;
        int n = this._inputEnd;
        final char[] inputBuffer = this._inputBuffer;
        int inputPtr2;
        while (true) {
            if (inputPtr >= n) {
                this._inputPtr = inputPtr;
                if (!this.loadMore()) {
                    this._reportInvalidEOF(": was expecting closing quote for a string value");
                }
                inputPtr = this._inputPtr;
                n = this._inputEnd;
            }
            inputPtr2 = inputPtr + 1;
            final char c = inputBuffer[inputPtr];
            if (c <= '\\') {
                if (c == '\\') {
                    this._inputPtr = inputPtr2;
                    this._decodeEscaped();
                    inputPtr = this._inputPtr;
                    n = this._inputEnd;
                    continue;
                }
                if (c <= '\"') {
                    if (c == '\"') {
                        break;
                    }
                    if (c < ' ') {
                        this._inputPtr = inputPtr2;
                        this._throwUnquotedSpace(c, "string value");
                    }
                }
            }
            inputPtr = inputPtr2;
        }
        this._inputPtr = inputPtr2;
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
        return this._reader;
    }
    
    protected char getNextChar(final String s) throws IOException, JsonParseException {
        if (this._inputPtr >= this._inputEnd && !this.loadMore()) {
            this._reportInvalidEOF(s);
        }
        return this._inputBuffer[this._inputPtr++];
    }
    
    @Override
    public final String getText() throws IOException, JsonParseException {
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
        final boolean inObject = this._parsingContext.inObject();
        if (inObject) {
            this._parsingContext.setCurrentName(this._parseFieldName(n));
            this._currToken = JsonToken.FIELD_NAME;
            final int skipWS = this._skipWS();
            if (skipWS != 58) {
                this._reportUnexpectedChar(skipWS, "was expecting a colon to separate field name and value");
            }
            n = this._skipWS();
        }
        JsonToken jsonToken = null;
        switch (n) {
            default: {
                jsonToken = this._handleUnexpectedValue(n);
                break;
            }
            case 34: {
                this._tokenIncomplete = true;
                jsonToken = JsonToken.VALUE_STRING;
                break;
            }
            case 91: {
                if (!inObject) {
                    this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                }
                jsonToken = JsonToken.START_ARRAY;
                break;
            }
            case 123: {
                if (!inObject) {
                    this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                }
                jsonToken = JsonToken.START_OBJECT;
                break;
            }
            case 93:
            case 125: {
                this._reportUnexpectedChar(n, "expected a value");
            }
            case 116: {
                this._matchToken("true", 1);
                jsonToken = JsonToken.VALUE_TRUE;
                break;
            }
            case 102: {
                this._matchToken("false", 1);
                jsonToken = JsonToken.VALUE_FALSE;
                break;
            }
            case 110: {
                this._matchToken("null", 1);
                jsonToken = JsonToken.VALUE_NULL;
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
                jsonToken = this.parseNumberText(n);
                break;
            }
        }
        if (inObject) {
            this._nextToken = jsonToken;
            return this._currToken;
        }
        return this._currToken = jsonToken;
    }
    
    protected final JsonToken parseNumberText(int n) throws IOException, JsonParseException {
        final boolean b = n == 45;
        int i = this._inputPtr;
        final int n2 = i - 1;
        final int inputEnd = this._inputEnd;
    Label_0036:
        while (true) {
            Label_0107: {
                if (!b) {
                    break Label_0107;
                }
                if (i < this._inputEnd) {
                    final char[] inputBuffer = this._inputBuffer;
                    final int inputPtr = i + 1;
                    n = inputBuffer[i];
                    if (n > 57 || n < 48) {
                        this._inputPtr = inputPtr;
                        return this._handleInvalidNumberStart(n, true);
                    }
                    i = inputPtr;
                    break Label_0107;
                }
                int inputPtr2;
                if (b) {
                    inputPtr2 = n2 + 1;
                }
                else {
                    inputPtr2 = n2;
                }
                this._inputPtr = inputPtr2;
                return this.parseNumberText2(b);
            }
            if (n != 48) {
                int n3 = 1;
                while (i < this._inputEnd) {
                    final char[] inputBuffer2 = this._inputBuffer;
                    int j = i + 1;
                    char c = inputBuffer2[i];
                    if (c < '0' || c > '9') {
                        int n4 = 0;
                        Label_0237: {
                            if (c == '.') {
                                while (j < inputEnd) {
                                    final char[] inputBuffer3 = this._inputBuffer;
                                    final int n5 = j + 1;
                                    c = inputBuffer3[j];
                                    if (c < '0' || c > '9') {
                                        if (n4 == 0) {
                                            this.reportUnexpectedNumberChar(c, "Decimal point not followed by a digit");
                                        }
                                        j = n5;
                                        break Label_0237;
                                    }
                                    ++n4;
                                    j = n5;
                                }
                                break;
                            }
                        }
                        int n6 = 0;
                        Label_0409: {
                            if (c != 'e') {
                                n6 = 0;
                                if (c != 'E') {
                                    break Label_0409;
                                }
                            }
                            if (j >= inputEnd) {
                                break;
                            }
                            final char[] inputBuffer4 = this._inputBuffer;
                            final int n7 = j + 1;
                            char c2 = inputBuffer4[j];
                            if (c2 == '-' || c2 == '+') {
                                if (n7 >= inputEnd) {
                                    break;
                                }
                                final char[] inputBuffer5 = this._inputBuffer;
                                j = n7 + 1;
                                c2 = inputBuffer5[n7];
                            }
                            else {
                                j = n7;
                                n6 = 0;
                            }
                            while (c2 <= '9' && c2 >= '0') {
                                ++n6;
                                if (j >= inputEnd) {
                                    continue Label_0036;
                                }
                                final char[] inputBuffer6 = this._inputBuffer;
                                final int n8 = j + 1;
                                c2 = inputBuffer6[j];
                                j = n8;
                            }
                            if (n6 == 0) {
                                this.reportUnexpectedNumberChar(c2, "Exponent indicator not followed by a digit");
                            }
                        }
                        final int inputPtr3 = -1 + j;
                        this._inputPtr = inputPtr3;
                        this._textBuffer.resetWithShared(this._inputBuffer, n2, inputPtr3 - n2);
                        return this.reset(b, n3, n4, n6);
                    }
                    ++n3;
                    i = j;
                }
            }
            continue Label_0036;
        }
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
    
    @Override
    public void setCodec(final ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }
}
