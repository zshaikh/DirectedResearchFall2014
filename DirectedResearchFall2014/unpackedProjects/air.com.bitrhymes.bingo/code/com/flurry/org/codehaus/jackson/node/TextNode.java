package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.io.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

public final class TextNode extends ValueNode
{
    static final TextNode EMPTY_STRING_NODE;
    static final int INT_SPACE = 32;
    final String _value;
    
    static {
        EMPTY_STRING_NODE = new TextNode("");
    }
    
    public TextNode(final String value) {
        super();
        this._value = value;
    }
    
    protected static void appendQuoted(final StringBuilder sb, final String s) {
        sb.append('\"');
        CharTypes.appendQuoted(sb, s);
        sb.append('\"');
    }
    
    public static TextNode valueOf(final String s) {
        if (s == null) {
            return null;
        }
        if (s.length() == 0) {
            return TextNode.EMPTY_STRING_NODE;
        }
        return new TextNode(s);
    }
    
    protected void _reportBase64EOF() throws JsonParseException {
        throw new JsonParseException("Unexpected end-of-String when base64 content", JsonLocation.NA);
    }
    
    protected void _reportInvalidBase64(final Base64Variant base64Variant, final char c, final int n) throws JsonParseException {
        this._reportInvalidBase64(base64Variant, c, n, null);
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
        throw new JsonParseException(str2, JsonLocation.NA);
    }
    
    @Override
    public boolean asBoolean(final boolean b) {
        return (this._value != null && "true".equals(this._value.trim())) || b;
    }
    
    @Override
    public double asDouble(final double n) {
        return NumberInput.parseAsDouble(this._value, n);
    }
    
    @Override
    public int asInt(final int n) {
        return NumberInput.parseAsInt(this._value, n);
    }
    
    @Override
    public long asLong(final long n) {
        return NumberInput.parseAsLong(this._value, n);
    }
    
    @Override
    public String asText() {
        return this._value;
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.VALUE_STRING;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && ((TextNode)o)._value.equals(this._value));
    }
    
    @Override
    public byte[] getBinaryValue() throws IOException {
        return this.getBinaryValue(Base64Variants.getDefaultVariant());
    }
    
    public byte[] getBinaryValue(final Base64Variant base64Variant) throws IOException {
        final ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder(100);
        final String value = this._value;
        int i = 0;
        final int length = value.length();
    Label_0052:
        while (i < length) {
            int index;
            char char1;
            while (true) {
                index = i + 1;
                char1 = value.charAt(i);
                if (index >= length) {
                    break Label_0052;
                }
                if (char1 > ' ') {
                    break;
                }
                i = index;
            }
            final int decodeBase64Char = base64Variant.decodeBase64Char(char1);
            if (decodeBase64Char < 0) {
                this._reportInvalidBase64(base64Variant, char1, 0);
            }
            if (index >= length) {
                this._reportBase64EOF();
            }
            final int index2 = index + 1;
            final char char2 = value.charAt(index);
            final int decodeBase64Char2 = base64Variant.decodeBase64Char(char2);
            if (decodeBase64Char2 < 0) {
                this._reportInvalidBase64(base64Variant, char2, 1);
            }
            final int n = decodeBase64Char2 | decodeBase64Char << 6;
            if (index2 >= length) {
                if (!base64Variant.usesPadding()) {
                    byteArrayBuilder.append(n >> 4);
                    break;
                }
                this._reportBase64EOF();
            }
            final int n2 = index2 + 1;
            final char char3 = value.charAt(index2);
            final int decodeBase64Char3 = base64Variant.decodeBase64Char(char3);
            if (decodeBase64Char3 < 0) {
                if (decodeBase64Char3 != -2) {
                    this._reportInvalidBase64(base64Variant, char3, 2);
                }
                if (n2 >= length) {
                    this._reportBase64EOF();
                }
                i = n2 + 1;
                final char char4 = value.charAt(n2);
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
                        break;
                    }
                    this._reportBase64EOF();
                }
                i = n2 + 1;
                final char char5 = value.charAt(n2);
                final int decodeBase64Char4 = base64Variant.decodeBase64Char(char5);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        this._reportInvalidBase64(base64Variant, char5, 3);
                    }
                    byteArrayBuilder.appendTwoBytes(n3 >> 2);
                }
                else {
                    byteArrayBuilder.appendThreeBytes(decodeBase64Char4 | n3 << 6);
                }
            }
        }
        return byteArrayBuilder.toByteArray();
    }
    
    @Override
    public String getTextValue() {
        return this._value;
    }
    
    @Override
    public int hashCode() {
        return this._value.hashCode();
    }
    
    @Override
    public boolean isTextual() {
        return true;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        if (this._value == null) {
            jsonGenerator.writeNull();
            return;
        }
        jsonGenerator.writeString(this._value);
    }
    
    @Override
    public String toString() {
        final int length = this._value.length();
        final StringBuilder sb = new StringBuilder(length + 2 + (length >> 4));
        appendQuoted(sb, this._value);
        return sb.toString();
    }
}
