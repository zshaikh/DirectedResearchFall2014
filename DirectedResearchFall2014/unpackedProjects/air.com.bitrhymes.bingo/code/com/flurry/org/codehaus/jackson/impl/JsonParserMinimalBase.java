package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class JsonParserMinimalBase extends JsonParser
{
    protected static final int INT_APOSTROPHE = 39;
    protected static final int INT_ASTERISK = 42;
    protected static final int INT_BACKSLASH = 92;
    protected static final int INT_COLON = 58;
    protected static final int INT_COMMA = 44;
    protected static final int INT_CR = 13;
    protected static final int INT_LBRACKET = 91;
    protected static final int INT_LCURLY = 123;
    protected static final int INT_LF = 10;
    protected static final int INT_QUOTE = 34;
    protected static final int INT_RBRACKET = 93;
    protected static final int INT_RCURLY = 125;
    protected static final int INT_SLASH = 47;
    protected static final int INT_SPACE = 32;
    protected static final int INT_TAB = 9;
    protected static final int INT_b = 98;
    protected static final int INT_f = 102;
    protected static final int INT_n = 110;
    protected static final int INT_r = 114;
    protected static final int INT_t = 116;
    protected static final int INT_u = 117;
    
    protected JsonParserMinimalBase() {
        super();
    }
    
    protected JsonParserMinimalBase(final int n) {
        super(n);
    }
    
    protected static final String _getCharDesc(final int n) {
        final char c = (char)n;
        if (Character.isISOControl(c)) {
            return "(CTRL-CHAR, code " + n + ")";
        }
        if (n > 255) {
            return "'" + c + "' (code " + n + " / 0x" + Integer.toHexString(n) + ")";
        }
        return "'" + c + "' (code " + n + ")";
    }
    
    protected final JsonParseException _constructError(final String s, final Throwable t) {
        return new JsonParseException(s, this.getCurrentLocation(), t);
    }
    
    protected void _decodeBase64(final String s, final ByteArrayBuilder byteArrayBuilder, final Base64Variant base64Variant) throws IOException, JsonParseException {
        int i = 0;
        final int length = s.length();
    Label_0037:
        while (i < length) {
            int index;
            char char1;
            while (true) {
                index = i + 1;
                char1 = s.charAt(i);
                if (index >= length) {
                    break Label_0037;
                }
                if (char1 > ' ') {
                    break;
                }
                i = index;
            }
            final int decodeBase64Char = base64Variant.decodeBase64Char(char1);
            if (decodeBase64Char < 0) {
                this._reportInvalidBase64(base64Variant, char1, 0, null);
            }
            if (index >= length) {
                this._reportBase64EOF();
            }
            final int index2 = index + 1;
            final char char2 = s.charAt(index);
            final int decodeBase64Char2 = base64Variant.decodeBase64Char(char2);
            if (decodeBase64Char2 < 0) {
                this._reportInvalidBase64(base64Variant, char2, 1, null);
            }
            final int n = decodeBase64Char2 | decodeBase64Char << 6;
            if (index2 >= length) {
                if (!base64Variant.usesPadding()) {
                    byteArrayBuilder.append(n >> 4);
                    return;
                }
                this._reportBase64EOF();
            }
            final int n2 = index2 + 1;
            final char char3 = s.charAt(index2);
            final int decodeBase64Char3 = base64Variant.decodeBase64Char(char3);
            if (decodeBase64Char3 < 0) {
                if (decodeBase64Char3 != -2) {
                    this._reportInvalidBase64(base64Variant, char3, 2, null);
                }
                if (n2 >= length) {
                    this._reportBase64EOF();
                }
                i = n2 + 1;
                final char char4 = s.charAt(n2);
                if (!base64Variant.usesPaddingChar(char4)) {
                    this._reportInvalidBase64(base64Variant, char4, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                }
                byteArrayBuilder.append(n >> 4);
            }
            else {
                final int n3 = decodeBase64Char3 | n << 6;
                if (n2 >= length) {
                    if (!base64Variant.usesPadding()) {
                        byteArrayBuilder.appendTwoBytes(n3 >> 2);
                        return;
                    }
                    this._reportBase64EOF();
                }
                i = n2 + 1;
                final char char5 = s.charAt(n2);
                final int decodeBase64Char4 = base64Variant.decodeBase64Char(char5);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        this._reportInvalidBase64(base64Variant, char5, 3, null);
                    }
                    byteArrayBuilder.appendTwoBytes(n3 >> 2);
                }
                else {
                    byteArrayBuilder.appendThreeBytes(decodeBase64Char4 | n3 << 6);
                }
            }
        }
    }
    
    protected abstract void _handleEOF() throws JsonParseException;
    
    protected char _handleUnrecognizedCharacterEscape(final char c) throws JsonProcessingException {
        if (!this.isEnabled(Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER) && (c != '\'' || !this.isEnabled(Feature.ALLOW_SINGLE_QUOTES))) {
            this._reportError("Unrecognized character escape " + _getCharDesc(c));
            return c;
        }
        return c;
    }
    
    protected void _reportBase64EOF() throws JsonParseException {
        throw this._constructError("Unexpected end-of-String in base64 content");
    }
    
    protected final void _reportError(final String s) throws JsonParseException {
        throw this._constructError(s);
    }
    
    protected void _reportInvalidBase64(final Base64Variant base64Variant, final char c, final int n, final String str) throws JsonParseException {
        String str2;
        if (c <= ' ') {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(c) + ") as character #" + (n + 1) + " of 4-char base64 unit: can only used between units";
        }
        else if (base64Variant.usesPaddingChar(c)) {
            str2 = "Unexpected padding character ('" + base64Variant.getPaddingChar() + "') as character #" + (n + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        }
        else if (!Character.isDefined(c) || Character.isISOControl(c)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(c) + ") in base64 content";
        }
        else {
            str2 = "Illegal character '" + c + "' (code 0x" + Integer.toHexString(c) + ") in base64 content";
        }
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        throw this._constructError(str2);
    }
    
    protected void _reportInvalidEOF() throws JsonParseException {
        this._reportInvalidEOF(" in " + this._currToken);
    }
    
    protected void _reportInvalidEOF(final String str) throws JsonParseException {
        this._reportError("Unexpected end-of-input" + str);
    }
    
    protected void _reportInvalidEOFInValue() throws JsonParseException {
        this._reportInvalidEOF(" in a value");
    }
    
    protected void _reportUnexpectedChar(final int n, final String str) throws JsonParseException {
        String str2 = "Unexpected character (" + _getCharDesc(n) + ")";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        this._reportError(str2);
    }
    
    protected final void _throwInternal() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }
    
    protected void _throwInvalidSpace(final int n) throws JsonParseException {
        this._reportError("Illegal character (" + _getCharDesc((char)n) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }
    
    protected void _throwUnquotedSpace(final int n, final String str) throws JsonParseException {
        if (!this.isEnabled(Feature.ALLOW_UNQUOTED_CONTROL_CHARS) || n >= 32) {
            this._reportError("Illegal unquoted character (" + _getCharDesc((char)n) + "): has to be escaped using backslash to be included in " + str);
        }
    }
    
    protected final void _wrapError(final String s, final Throwable t) throws JsonParseException {
        throw this._constructError(s, t);
    }
    
    @Override
    public abstract void close() throws IOException;
    
    @Override
    public abstract byte[] getBinaryValue(final Base64Variant p0) throws IOException, JsonParseException;
    
    @Override
    public abstract String getCurrentName() throws IOException, JsonParseException;
    
    @Override
    public abstract JsonStreamContext getParsingContext();
    
    @Override
    public abstract String getText() throws IOException, JsonParseException;
    
    @Override
    public abstract char[] getTextCharacters() throws IOException, JsonParseException;
    
    @Override
    public abstract int getTextLength() throws IOException, JsonParseException;
    
    @Override
    public abstract int getTextOffset() throws IOException, JsonParseException;
    
    @Override
    public boolean getValueAsBoolean(final boolean b) throws IOException, JsonParseException {
        if (this._currToken != null) {
            switch (this._currToken) {
                case VALUE_NUMBER_INT: {
                    return this.getIntValue() != 0;
                }
                case VALUE_TRUE: {
                    return true;
                }
                case VALUE_FALSE:
                case VALUE_NULL: {
                    return false;
                }
                case VALUE_EMBEDDED_OBJECT: {
                    final Object embeddedObject = this.getEmbeddedObject();
                    if (embeddedObject instanceof Boolean) {
                        return (boolean)embeddedObject;
                    }
                }
                case VALUE_STRING: {
                    if ("true".equals(this.getText().trim())) {
                        return true;
                    }
                    break;
                }
            }
        }
        return b;
    }
    
    @Override
    public double getValueAsDouble(final double n) throws IOException, JsonParseException {
        if (this._currToken != null) {
            switch (this._currToken) {
                case VALUE_NUMBER_INT:
                case VALUE_NUMBER_FLOAT: {
                    return this.getDoubleValue();
                }
                case VALUE_TRUE: {
                    return 1.0;
                }
                case VALUE_FALSE:
                case VALUE_NULL: {
                    return 0.0;
                }
                case VALUE_STRING: {
                    return NumberInput.parseAsDouble(this.getText(), n);
                }
                case VALUE_EMBEDDED_OBJECT: {
                    final Object embeddedObject = this.getEmbeddedObject();
                    if (embeddedObject instanceof Number) {
                        return ((Number)embeddedObject).doubleValue();
                    }
                    break;
                }
            }
        }
        return n;
    }
    
    @Override
    public int getValueAsInt(final int n) throws IOException, JsonParseException {
        if (this._currToken != null) {
            switch (this._currToken) {
                case VALUE_NUMBER_INT:
                case VALUE_NUMBER_FLOAT: {
                    return this.getIntValue();
                }
                case VALUE_TRUE: {
                    return 1;
                }
                case VALUE_FALSE:
                case VALUE_NULL: {
                    return 0;
                }
                case VALUE_STRING: {
                    return NumberInput.parseAsInt(this.getText(), n);
                }
                case VALUE_EMBEDDED_OBJECT: {
                    final Object embeddedObject = this.getEmbeddedObject();
                    if (embeddedObject instanceof Number) {
                        return ((Number)embeddedObject).intValue();
                    }
                    break;
                }
            }
        }
        return n;
    }
    
    @Override
    public long getValueAsLong(final long n) throws IOException, JsonParseException {
        if (this._currToken != null) {
            switch (this._currToken) {
                case VALUE_NUMBER_INT:
                case VALUE_NUMBER_FLOAT: {
                    return this.getLongValue();
                }
                case VALUE_TRUE: {
                    return 1L;
                }
                case VALUE_FALSE:
                case VALUE_NULL: {
                    return 0L;
                }
                case VALUE_STRING: {
                    return NumberInput.parseAsLong(this.getText(), n);
                }
                case VALUE_EMBEDDED_OBJECT: {
                    final Object embeddedObject = this.getEmbeddedObject();
                    if (embeddedObject instanceof Number) {
                        return ((Number)embeddedObject).longValue();
                    }
                    break;
                }
            }
        }
        return n;
    }
    
    @Override
    public abstract boolean hasTextCharacters();
    
    @Override
    public abstract boolean isClosed();
    
    @Override
    public abstract JsonToken nextToken() throws IOException, JsonParseException;
    
    @Override
    public JsonParser skipChildren() throws IOException, JsonParseException {
        if (this._currToken != JsonToken.START_OBJECT && this._currToken != JsonToken.START_ARRAY) {
            return this;
        }
        int n = 1;
        while (true) {
            final JsonToken nextToken = this.nextToken();
            if (nextToken == null) {
                this._handleEOF();
                return this;
            }
            switch (nextToken) {
                default: {
                    continue;
                }
                case START_OBJECT:
                case START_ARRAY: {
                    ++n;
                    continue;
                }
                case END_OBJECT:
                case END_ARRAY: {
                    if (--n == 0) {
                        return this;
                    }
                    continue;
                }
            }
        }
    }
}
