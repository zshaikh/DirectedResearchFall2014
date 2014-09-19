package com.flurry.org.codehaus.jackson;

import java.io.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.math.*;

public abstract class JsonGenerator implements Closeable, Versioned
{
    protected PrettyPrinter _cfgPrettyPrinter;
    
    public boolean canUseSchema(final FormatSchema formatSchema) {
        return false;
    }
    
    @Override
    public abstract void close() throws IOException;
    
    public JsonGenerator configure(final Feature feature, final boolean b) {
        if (b) {
            this.enable(feature);
            return this;
        }
        this.disable(feature);
        return this;
    }
    
    public abstract void copyCurrentEvent(final JsonParser p0) throws IOException, JsonProcessingException;
    
    public abstract void copyCurrentStructure(final JsonParser p0) throws IOException, JsonProcessingException;
    
    public abstract JsonGenerator disable(final Feature p0);
    
    @Deprecated
    public void disableFeature(final Feature feature) {
        this.disable(feature);
    }
    
    public abstract JsonGenerator enable(final Feature p0);
    
    @Deprecated
    public void enableFeature(final Feature feature) {
        this.enable(feature);
    }
    
    public abstract void flush() throws IOException;
    
    public CharacterEscapes getCharacterEscapes() {
        return null;
    }
    
    public abstract ObjectCodec getCodec();
    
    public int getHighestEscapedChar() {
        return 0;
    }
    
    public abstract JsonStreamContext getOutputContext();
    
    public Object getOutputTarget() {
        return null;
    }
    
    public abstract boolean isClosed();
    
    public abstract boolean isEnabled(final Feature p0);
    
    @Deprecated
    public boolean isFeatureEnabled(final Feature feature) {
        return this.isEnabled(feature);
    }
    
    public JsonGenerator setCharacterEscapes(final CharacterEscapes characterEscapes) {
        return this;
    }
    
    public abstract JsonGenerator setCodec(final ObjectCodec p0);
    
    @Deprecated
    public void setFeature(final Feature feature, final boolean b) {
        this.configure(feature, b);
    }
    
    public JsonGenerator setHighestNonEscapedChar(final int n) {
        return this;
    }
    
    public JsonGenerator setPrettyPrinter(final PrettyPrinter cfgPrettyPrinter) {
        this._cfgPrettyPrinter = cfgPrettyPrinter;
        return this;
    }
    
    public void setSchema(final FormatSchema formatSchema) {
        throw new UnsupportedOperationException("Generator of type " + this.getClass().getName() + " does not support schema of type '" + formatSchema.getSchemaType() + "'");
    }
    
    public abstract JsonGenerator useDefaultPrettyPrinter();
    
    @Override
    public Version version() {
        return Version.unknownVersion();
    }
    
    public final void writeArrayFieldStart(final String s) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeStartArray();
    }
    
    public abstract void writeBinary(final Base64Variant p0, final byte[] p1, final int p2, final int p3) throws IOException, JsonGenerationException;
    
    public void writeBinary(final byte[] array) throws IOException, JsonGenerationException {
        this.writeBinary(Base64Variants.getDefaultVariant(), array, 0, array.length);
    }
    
    public void writeBinary(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this.writeBinary(Base64Variants.getDefaultVariant(), array, n, n2);
    }
    
    public final void writeBinaryField(final String s, final byte[] array) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeBinary(array);
    }
    
    public abstract void writeBoolean(final boolean p0) throws IOException, JsonGenerationException;
    
    public final void writeBooleanField(final String s, final boolean b) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeBoolean(b);
    }
    
    public abstract void writeEndArray() throws IOException, JsonGenerationException;
    
    public abstract void writeEndObject() throws IOException, JsonGenerationException;
    
    public void writeFieldName(final SerializableString serializableString) throws IOException, JsonGenerationException {
        this.writeFieldName(serializableString.getValue());
    }
    
    public void writeFieldName(final SerializedString serializedString) throws IOException, JsonGenerationException {
        this.writeFieldName(serializedString.getValue());
    }
    
    public abstract void writeFieldName(final String p0) throws IOException, JsonGenerationException;
    
    public abstract void writeNull() throws IOException, JsonGenerationException;
    
    public final void writeNullField(final String s) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeNull();
    }
    
    public abstract void writeNumber(final double p0) throws IOException, JsonGenerationException;
    
    public abstract void writeNumber(final float p0) throws IOException, JsonGenerationException;
    
    public abstract void writeNumber(final int p0) throws IOException, JsonGenerationException;
    
    public abstract void writeNumber(final long p0) throws IOException, JsonGenerationException;
    
    public abstract void writeNumber(final String p0) throws IOException, JsonGenerationException, UnsupportedOperationException;
    
    public abstract void writeNumber(final BigDecimal p0) throws IOException, JsonGenerationException;
    
    public abstract void writeNumber(final BigInteger p0) throws IOException, JsonGenerationException;
    
    public final void writeNumberField(final String s, final double n) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeNumber(n);
    }
    
    public final void writeNumberField(final String s, final float n) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeNumber(n);
    }
    
    public final void writeNumberField(final String s, final int n) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeNumber(n);
    }
    
    public final void writeNumberField(final String s, final long n) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeNumber(n);
    }
    
    public final void writeNumberField(final String s, final BigDecimal bigDecimal) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeNumber(bigDecimal);
    }
    
    public abstract void writeObject(final Object p0) throws IOException, JsonProcessingException;
    
    public final void writeObjectField(final String s, final Object o) throws IOException, JsonProcessingException {
        this.writeFieldName(s);
        this.writeObject(o);
    }
    
    public final void writeObjectFieldStart(final String s) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeStartObject();
    }
    
    public abstract void writeRaw(final char p0) throws IOException, JsonGenerationException;
    
    public abstract void writeRaw(final String p0) throws IOException, JsonGenerationException;
    
    public abstract void writeRaw(final String p0, final int p1, final int p2) throws IOException, JsonGenerationException;
    
    public abstract void writeRaw(final char[] p0, final int p1, final int p2) throws IOException, JsonGenerationException;
    
    public abstract void writeRawUTF8String(final byte[] p0, final int p1, final int p2) throws IOException, JsonGenerationException;
    
    public abstract void writeRawValue(final String p0) throws IOException, JsonGenerationException;
    
    public abstract void writeRawValue(final String p0, final int p1, final int p2) throws IOException, JsonGenerationException;
    
    public abstract void writeRawValue(final char[] p0, final int p1, final int p2) throws IOException, JsonGenerationException;
    
    public abstract void writeStartArray() throws IOException, JsonGenerationException;
    
    public abstract void writeStartObject() throws IOException, JsonGenerationException;
    
    public void writeString(final SerializableString serializableString) throws IOException, JsonGenerationException {
        this.writeString(serializableString.getValue());
    }
    
    public abstract void writeString(final String p0) throws IOException, JsonGenerationException;
    
    public abstract void writeString(final char[] p0, final int p1, final int p2) throws IOException, JsonGenerationException;
    
    public void writeStringField(final String s, final String s2) throws IOException, JsonGenerationException {
        this.writeFieldName(s);
        this.writeString(s2);
    }
    
    public abstract void writeTree(final JsonNode p0) throws IOException, JsonProcessingException;
    
    public abstract void writeUTF8String(final byte[] p0, final int p1, final int p2) throws IOException, JsonGenerationException;
    
    public enum Feature
    {
        AUTO_CLOSE_JSON_CONTENT(true), 
        AUTO_CLOSE_TARGET(true), 
        ESCAPE_NON_ASCII(false), 
        FLUSH_PASSED_TO_STREAM(true), 
        QUOTE_FIELD_NAMES(true), 
        QUOTE_NON_NUMERIC_NUMBERS(true), 
        WRITE_NUMBERS_AS_STRINGS(false);
        
        final boolean _defaultState;
        final int _mask;
        
        private Feature(final boolean defaultState) {
            this._defaultState = defaultState;
            this._mask = 1 << this.ordinal();
        }
        
        public static int collectDefaults() {
            int n = 0;
            for (final Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    n |= feature.getMask();
                }
            }
            return n;
        }
        
        public boolean enabledByDefault() {
            return this._defaultState;
        }
        
        public int getMask() {
            return this._mask;
        }
    }
}
