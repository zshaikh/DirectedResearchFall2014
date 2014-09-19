package com.flurry.org.codehaus.jackson.impl;

import java.math.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.util.*;

public abstract class JsonParserBase extends JsonParserMinimalBase
{
    static final BigDecimal BD_MAX_INT;
    static final BigDecimal BD_MAX_LONG;
    static final BigDecimal BD_MIN_INT;
    static final BigDecimal BD_MIN_LONG;
    protected static final char CHAR_NULL = '\0';
    protected static final int INT_0 = 48;
    protected static final int INT_1 = 49;
    protected static final int INT_2 = 50;
    protected static final int INT_3 = 51;
    protected static final int INT_4 = 52;
    protected static final int INT_5 = 53;
    protected static final int INT_6 = 54;
    protected static final int INT_7 = 55;
    protected static final int INT_8 = 56;
    protected static final int INT_9 = 57;
    protected static final int INT_DECIMAL_POINT = 46;
    protected static final int INT_E = 69;
    protected static final int INT_MINUS = 45;
    protected static final int INT_PLUS = 43;
    protected static final int INT_e = 101;
    static final double MAX_INT_D = 2.147483647E9;
    static final long MAX_INT_L = 2147483647L;
    static final double MAX_LONG_D = 9.223372036854776E18;
    static final double MIN_INT_D = -2.147483648E9;
    static final long MIN_INT_L = -2147483648L;
    static final double MIN_LONG_D = -9.223372036854776E18;
    protected static final int NR_BIGDECIMAL = 16;
    protected static final int NR_BIGINT = 4;
    protected static final int NR_DOUBLE = 8;
    protected static final int NR_INT = 1;
    protected static final int NR_LONG = 2;
    protected static final int NR_UNKNOWN;
    protected byte[] _binaryValue;
    protected ByteArrayBuilder _byteArrayBuilder;
    protected boolean _closed;
    protected long _currInputProcessed;
    protected int _currInputRow;
    protected int _currInputRowStart;
    protected int _expLength;
    protected int _fractLength;
    protected int _inputEnd;
    protected int _inputPtr;
    protected int _intLength;
    protected final IOContext _ioContext;
    protected boolean _nameCopied;
    protected char[] _nameCopyBuffer;
    protected JsonToken _nextToken;
    protected int _numTypesValid;
    protected BigDecimal _numberBigDecimal;
    protected BigInteger _numberBigInt;
    protected double _numberDouble;
    protected int _numberInt;
    protected long _numberLong;
    protected boolean _numberNegative;
    protected JsonReadContext _parsingContext;
    protected final TextBuffer _textBuffer;
    protected int _tokenInputCol;
    protected int _tokenInputRow;
    protected long _tokenInputTotal;
    
    static {
        BD_MIN_LONG = new BigDecimal(Long.MIN_VALUE);
        BD_MAX_LONG = new BigDecimal(Long.MAX_VALUE);
        BD_MIN_INT = new BigDecimal(Long.MIN_VALUE);
        BD_MAX_INT = new BigDecimal(Long.MAX_VALUE);
    }
    
    protected JsonParserBase(final IOContext ioContext, final int features) {
        super();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._currInputProcessed = 0L;
        this._currInputRow = 1;
        this._currInputRowStart = 0;
        this._tokenInputTotal = 0L;
        this._tokenInputRow = 1;
        this._tokenInputCol = 0;
        this._nameCopyBuffer = null;
        this._nameCopied = false;
        this._byteArrayBuilder = null;
        this._numTypesValid = 0;
        this._features = features;
        this._ioContext = ioContext;
        this._textBuffer = ioContext.constructTextBuffer();
        this._parsingContext = JsonReadContext.createRootContext();
    }
    
    private final void _parseSlowFloatValue(final int n) throws IOException, JsonParseException {
        Label_0024: {
            if (n != 16) {
                break Label_0024;
            }
            try {
                this._numberBigDecimal = this._textBuffer.contentsAsDecimal();
                this._numTypesValid = 16;
                return;
                this._numberDouble = this._textBuffer.contentsAsDouble();
                this._numTypesValid = 8;
            }
            catch (NumberFormatException ex) {
                this._wrapError("Malformed numeric value '" + this._textBuffer.contentsAsString() + "'", ex);
            }
        }
    }
    
    private final void _parseSlowIntValue(final int n, final char[] array, final int n2, final int n3) throws IOException, JsonParseException {
        final String contentsAsString = this._textBuffer.contentsAsString();
        try {
            if (NumberInput.inLongRange(array, n2, n3, this._numberNegative)) {
                this._numberLong = Long.parseLong(contentsAsString);
                this._numTypesValid = 2;
                return;
            }
            this._numberBigInt = new BigInteger(contentsAsString);
            this._numTypesValid = 4;
        }
        catch (NumberFormatException ex) {
            this._wrapError("Malformed numeric value '" + contentsAsString + "'", ex);
        }
    }
    
    protected abstract void _closeInput() throws IOException;
    
    protected final int _decodeBase64Escape(final Base64Variant base64Variant, final char c, final int n) throws IOException, JsonParseException {
        if (c != '\\') {
            throw this.reportInvalidBase64Char(base64Variant, c, n);
        }
        final char decodeEscaped = this._decodeEscaped();
        if (decodeEscaped <= ' ' && n == 0) {
            return -1;
        }
        final int decodeBase64Char = base64Variant.decodeBase64Char(decodeEscaped);
        if (decodeBase64Char < 0) {
            throw this.reportInvalidBase64Char(base64Variant, decodeEscaped, n);
        }
        return decodeBase64Char;
    }
    
    protected final int _decodeBase64Escape(final Base64Variant base64Variant, final int n, final int n2) throws IOException, JsonParseException {
        if (n != 92) {
            throw this.reportInvalidBase64Char(base64Variant, n, n2);
        }
        final char decodeEscaped = this._decodeEscaped();
        if (decodeEscaped <= ' ' && n2 == 0) {
            return -1;
        }
        final int decodeBase64Char = base64Variant.decodeBase64Char((int)decodeEscaped);
        if (decodeBase64Char < 0) {
            throw this.reportInvalidBase64Char(base64Variant, decodeEscaped, n2);
        }
        return decodeBase64Char;
    }
    
    protected char _decodeEscaped() throws IOException, JsonParseException {
        throw new UnsupportedOperationException();
    }
    
    protected abstract void _finishString() throws IOException, JsonParseException;
    
    public ByteArrayBuilder _getByteArrayBuilder() {
        if (this._byteArrayBuilder == null) {
            this._byteArrayBuilder = new ByteArrayBuilder();
        }
        else {
            this._byteArrayBuilder.reset();
        }
        return this._byteArrayBuilder;
    }
    
    @Override
    protected void _handleEOF() throws JsonParseException {
        if (!this._parsingContext.inRoot()) {
            this._reportInvalidEOF(": expected close marker for " + this._parsingContext.getTypeDesc() + " (from " + this._parsingContext.getStartLocation(this._ioContext.getSourceReference()) + ")");
        }
    }
    
    protected void _parseNumericValue(final int n) throws IOException, JsonParseException {
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            final char[] textBuffer = this._textBuffer.getTextBuffer();
            int textOffset = this._textBuffer.getTextOffset();
            final int intLength = this._intLength;
            if (this._numberNegative) {
                ++textOffset;
            }
            if (intLength <= 9) {
                final int int1 = NumberInput.parseInt(textBuffer, textOffset, intLength);
                int numberInt;
                if (this._numberNegative) {
                    numberInt = -int1;
                }
                else {
                    numberInt = int1;
                }
                this._numberInt = numberInt;
                this._numTypesValid = 1;
                return;
            }
            if (intLength <= 18) {
                long long1 = NumberInput.parseLong(textBuffer, textOffset, intLength);
                if (this._numberNegative) {
                    long1 = -long1;
                }
                if (intLength == 10) {
                    if (this._numberNegative) {
                        if (long1 >= -2147483648L) {
                            this._numberInt = (int)long1;
                            this._numTypesValid = 1;
                            return;
                        }
                    }
                    else if (long1 <= 2147483647L) {
                        this._numberInt = (int)long1;
                        this._numTypesValid = 1;
                        return;
                    }
                }
                this._numberLong = long1;
                this._numTypesValid = 2;
                return;
            }
            this._parseSlowIntValue(n, textBuffer, textOffset, intLength);
        }
        else {
            if (this._currToken == JsonToken.VALUE_NUMBER_FLOAT) {
                this._parseSlowFloatValue(n);
                return;
            }
            this._reportError("Current token (" + this._currToken + ") not numeric, can not use numeric value accessors");
        }
    }
    
    protected void _releaseBuffers() throws IOException {
        this._textBuffer.releaseBuffers();
        final char[] nameCopyBuffer = this._nameCopyBuffer;
        if (nameCopyBuffer != null) {
            this._nameCopyBuffer = null;
            this._ioContext.releaseNameCopyBuffer(nameCopyBuffer);
        }
    }
    
    protected void _reportMismatchedEndMarker(final int n, final char c) throws JsonParseException {
        this._reportError("Unexpected close marker '" + (char)n + "': expected '" + c + "' (for " + this._parsingContext.getTypeDesc() + " starting at " + ("" + this._parsingContext.getStartLocation(this._ioContext.getSourceReference())) + ")");
    }
    
    @Override
    public void close() throws IOException {
        if (this._closed) {
            return;
        }
        this._closed = true;
        try {
            this._closeInput();
        }
        finally {
            this._releaseBuffers();
        }
    }
    
    protected void convertNumberToBigDecimal() throws IOException, JsonParseException {
        if ((0x8 & this._numTypesValid) != 0x0) {
            this._numberBigDecimal = new BigDecimal(this.getText());
        }
        else if ((0x4 & this._numTypesValid) != 0x0) {
            this._numberBigDecimal = new BigDecimal(this._numberBigInt);
        }
        else if ((0x2 & this._numTypesValid) != 0x0) {
            this._numberBigDecimal = BigDecimal.valueOf(this._numberLong);
        }
        else if ((0x1 & this._numTypesValid) != 0x0) {
            this._numberBigDecimal = BigDecimal.valueOf(this._numberInt);
        }
        else {
            this._throwInternal();
        }
        this._numTypesValid |= 0x10;
    }
    
    protected void convertNumberToBigInteger() throws IOException, JsonParseException {
        if ((0x10 & this._numTypesValid) != 0x0) {
            this._numberBigInt = this._numberBigDecimal.toBigInteger();
        }
        else if ((0x2 & this._numTypesValid) != 0x0) {
            this._numberBigInt = BigInteger.valueOf(this._numberLong);
        }
        else if ((0x1 & this._numTypesValid) != 0x0) {
            this._numberBigInt = BigInteger.valueOf(this._numberInt);
        }
        else if ((0x8 & this._numTypesValid) != 0x0) {
            this._numberBigInt = BigDecimal.valueOf(this._numberDouble).toBigInteger();
        }
        else {
            this._throwInternal();
        }
        this._numTypesValid |= 0x4;
    }
    
    protected void convertNumberToDouble() throws IOException, JsonParseException {
        if ((0x10 & this._numTypesValid) != 0x0) {
            this._numberDouble = this._numberBigDecimal.doubleValue();
        }
        else if ((0x4 & this._numTypesValid) != 0x0) {
            this._numberDouble = this._numberBigInt.doubleValue();
        }
        else if ((0x2 & this._numTypesValid) != 0x0) {
            this._numberDouble = this._numberLong;
        }
        else if ((0x1 & this._numTypesValid) != 0x0) {
            this._numberDouble = this._numberInt;
        }
        else {
            this._throwInternal();
        }
        this._numTypesValid |= 0x8;
    }
    
    protected void convertNumberToInt() throws IOException, JsonParseException {
        if ((0x2 & this._numTypesValid) != 0x0) {
            final int numberInt = (int)this._numberLong;
            if (numberInt != this._numberLong) {
                this._reportError("Numeric value (" + this.getText() + ") out of range of int");
            }
            this._numberInt = numberInt;
        }
        else if ((0x4 & this._numTypesValid) != 0x0) {
            this._numberInt = this._numberBigInt.intValue();
        }
        else if ((0x8 & this._numTypesValid) != 0x0) {
            if (this._numberDouble < -2.147483648E9 || this._numberDouble > 2.147483647E9) {
                this.reportOverflowInt();
            }
            this._numberInt = (int)this._numberDouble;
        }
        else if ((0x10 & this._numTypesValid) != 0x0) {
            if (JsonParserBase.BD_MIN_INT.compareTo(this._numberBigDecimal) > 0 || JsonParserBase.BD_MAX_INT.compareTo(this._numberBigDecimal) < 0) {
                this.reportOverflowInt();
            }
            this._numberInt = this._numberBigDecimal.intValue();
        }
        else {
            this._throwInternal();
        }
        this._numTypesValid |= 0x1;
    }
    
    protected void convertNumberToLong() throws IOException, JsonParseException {
        if ((0x1 & this._numTypesValid) != 0x0) {
            this._numberLong = this._numberInt;
        }
        else if ((0x4 & this._numTypesValid) != 0x0) {
            this._numberLong = this._numberBigInt.longValue();
        }
        else if ((0x8 & this._numTypesValid) != 0x0) {
            if (this._numberDouble < -9.223372036854776E18 || this._numberDouble > 9.223372036854776E18) {
                this.reportOverflowLong();
            }
            this._numberLong = (long)this._numberDouble;
        }
        else if ((0x10 & this._numTypesValid) != 0x0) {
            if (JsonParserBase.BD_MIN_LONG.compareTo(this._numberBigDecimal) > 0 || JsonParserBase.BD_MAX_LONG.compareTo(this._numberBigDecimal) < 0) {
                this.reportOverflowLong();
            }
            this._numberLong = this._numberBigDecimal.longValue();
        }
        else {
            this._throwInternal();
        }
        this._numTypesValid |= 0x2;
    }
    
    @Override
    public BigInteger getBigIntegerValue() throws IOException, JsonParseException {
        if ((0x4 & this._numTypesValid) == 0x0) {
            if (this._numTypesValid == 0) {
                this._parseNumericValue(4);
            }
            if ((0x4 & this._numTypesValid) == 0x0) {
                this.convertNumberToBigInteger();
            }
        }
        return this._numberBigInt;
    }
    
    @Override
    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), this._currInputProcessed + this._inputPtr - 1L, this._currInputRow, 1 + (this._inputPtr - this._currInputRowStart));
    }
    
    @Override
    public String getCurrentName() throws IOException, JsonParseException {
        if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
            return this._parsingContext.getParent().getCurrentName();
        }
        return this._parsingContext.getCurrentName();
    }
    
    @Override
    public BigDecimal getDecimalValue() throws IOException, JsonParseException {
        if ((0x10 & this._numTypesValid) == 0x0) {
            if (this._numTypesValid == 0) {
                this._parseNumericValue(16);
            }
            if ((0x10 & this._numTypesValid) == 0x0) {
                this.convertNumberToBigDecimal();
            }
        }
        return this._numberBigDecimal;
    }
    
    @Override
    public double getDoubleValue() throws IOException, JsonParseException {
        if ((0x8 & this._numTypesValid) == 0x0) {
            if (this._numTypesValid == 0) {
                this._parseNumericValue(8);
            }
            if ((0x8 & this._numTypesValid) == 0x0) {
                this.convertNumberToDouble();
            }
        }
        return this._numberDouble;
    }
    
    @Override
    public float getFloatValue() throws IOException, JsonParseException {
        return (float)this.getDoubleValue();
    }
    
    @Override
    public int getIntValue() throws IOException, JsonParseException {
        if ((0x1 & this._numTypesValid) == 0x0) {
            if (this._numTypesValid == 0) {
                this._parseNumericValue(1);
            }
            if ((0x1 & this._numTypesValid) == 0x0) {
                this.convertNumberToInt();
            }
        }
        return this._numberInt;
    }
    
    @Override
    public long getLongValue() throws IOException, JsonParseException {
        if ((0x2 & this._numTypesValid) == 0x0) {
            if (this._numTypesValid == 0) {
                this._parseNumericValue(2);
            }
            if ((0x2 & this._numTypesValid) == 0x0) {
                this.convertNumberToLong();
            }
        }
        return this._numberLong;
    }
    
    @Override
    public NumberType getNumberType() throws IOException, JsonParseException {
        if (this._numTypesValid == 0) {
            this._parseNumericValue(0);
        }
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            if ((0x1 & this._numTypesValid) != 0x0) {
                return NumberType.INT;
            }
            if ((0x2 & this._numTypesValid) != 0x0) {
                return NumberType.LONG;
            }
            return NumberType.BIG_INTEGER;
        }
        else {
            if ((0x10 & this._numTypesValid) != 0x0) {
                return NumberType.BIG_DECIMAL;
            }
            return NumberType.DOUBLE;
        }
    }
    
    @Override
    public Number getNumberValue() throws IOException, JsonParseException {
        if (this._numTypesValid == 0) {
            this._parseNumericValue(0);
        }
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            if ((0x1 & this._numTypesValid) != 0x0) {
                return this._numberInt;
            }
            if ((0x2 & this._numTypesValid) != 0x0) {
                return this._numberLong;
            }
            if ((0x4 & this._numTypesValid) != 0x0) {
                return this._numberBigInt;
            }
            return this._numberBigDecimal;
        }
        else {
            if ((0x10 & this._numTypesValid) != 0x0) {
                return this._numberBigDecimal;
            }
            if ((0x8 & this._numTypesValid) == 0x0) {
                this._throwInternal();
            }
            return this._numberDouble;
        }
    }
    
    @Override
    public JsonReadContext getParsingContext() {
        return this._parsingContext;
    }
    
    public final long getTokenCharacterOffset() {
        return this._tokenInputTotal;
    }
    
    public final int getTokenColumnNr() {
        final int tokenInputCol = this._tokenInputCol;
        if (tokenInputCol < 0) {
            return tokenInputCol;
        }
        return tokenInputCol + 1;
    }
    
    public final int getTokenLineNr() {
        return this._tokenInputRow;
    }
    
    @Override
    public JsonLocation getTokenLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), this.getTokenCharacterOffset(), this.getTokenLineNr(), this.getTokenColumnNr());
    }
    
    @Override
    public boolean hasTextCharacters() {
        return this._currToken == JsonToken.VALUE_STRING || (this._currToken == JsonToken.FIELD_NAME && this._nameCopied);
    }
    
    @Override
    public boolean isClosed() {
        return this._closed;
    }
    
    protected abstract boolean loadMore() throws IOException;
    
    protected final void loadMoreGuaranteed() throws IOException {
        if (!this.loadMore()) {
            this._reportInvalidEOF();
        }
    }
    
    protected IllegalArgumentException reportInvalidBase64Char(final Base64Variant base64Variant, final int n, final int n2) throws IllegalArgumentException {
        return this.reportInvalidBase64Char(base64Variant, n, n2, null);
    }
    
    protected IllegalArgumentException reportInvalidBase64Char(final Base64Variant base64Variant, final int i, final int n, final String str) throws IllegalArgumentException {
        String s;
        if (i <= 32) {
            s = "Illegal white space character (code 0x" + Integer.toHexString(i) + ") as character #" + (n + 1) + " of 4-char base64 unit: can only used between units";
        }
        else if (base64Variant.usesPaddingChar(i)) {
            s = "Unexpected padding character ('" + base64Variant.getPaddingChar() + "') as character #" + (n + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        }
        else if (!Character.isDefined(i) || Character.isISOControl(i)) {
            s = "Illegal character (code 0x" + Integer.toHexString(i) + ") in base64 content";
        }
        else {
            s = "Illegal character '" + (char)i + "' (code 0x" + Integer.toHexString(i) + ") in base64 content";
        }
        if (str != null) {
            s = s + ": " + str;
        }
        return new IllegalArgumentException(s);
    }
    
    protected void reportInvalidNumber(final String str) throws JsonParseException {
        this._reportError("Invalid numeric value: " + str);
    }
    
    protected void reportOverflowInt() throws IOException, JsonParseException {
        this._reportError("Numeric value (" + this.getText() + ") out of range of int (" + Integer.MIN_VALUE + " - " + Integer.MAX_VALUE + ")");
    }
    
    protected void reportOverflowLong() throws IOException, JsonParseException {
        this._reportError("Numeric value (" + this.getText() + ") out of range of long (" + Long.MIN_VALUE + " - " + Long.MAX_VALUE + ")");
    }
    
    protected void reportUnexpectedNumberChar(final int n, final String str) throws JsonParseException {
        String str2 = "Unexpected character (" + JsonParserMinimalBase._getCharDesc(n) + ") in numeric value";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        this._reportError(str2);
    }
    
    protected final JsonToken reset(final boolean b, final int n, final int n2, final int n3) {
        if (n2 < 1 && n3 < 1) {
            return this.resetInt(b, n);
        }
        return this.resetFloat(b, n, n2, n3);
    }
    
    protected final JsonToken resetAsNaN(final String s, final double numberDouble) {
        this._textBuffer.resetWithString(s);
        this._numberDouble = numberDouble;
        this._numTypesValid = 8;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }
    
    protected final JsonToken resetFloat(final boolean numberNegative, final int intLength, final int fractLength, final int expLength) {
        this._numberNegative = numberNegative;
        this._intLength = intLength;
        this._fractLength = fractLength;
        this._expLength = expLength;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }
    
    protected final JsonToken resetInt(final boolean numberNegative, final int intLength) {
        this._numberNegative = numberNegative;
        this._intLength = intLength;
        this._fractLength = 0;
        this._expLength = 0;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_INT;
    }
    
    @Override
    public Version version() {
        return VersionUtil.versionFor(this.getClass());
    }
}
