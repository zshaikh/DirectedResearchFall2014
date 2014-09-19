package com.flurry.org.codehaus.jackson;

import java.math.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;
import java.io.*;

public abstract class JsonParser implements Closeable, Versioned
{
    private static final int MAX_BYTE_I = 127;
    private static final int MAX_SHORT_I = 32767;
    private static final int MIN_BYTE_I = -128;
    private static final int MIN_SHORT_I = -32768;
    protected JsonToken _currToken;
    protected int _features;
    protected JsonToken _lastClearedToken;
    
    protected JsonParser() {
        super();
    }
    
    protected JsonParser(final int features) {
        super();
        this._features = features;
    }
    
    protected JsonParseException _constructError(final String s) {
        return new JsonParseException(s, this.getCurrentLocation());
    }
    
    public boolean canUseSchema(final FormatSchema formatSchema) {
        return false;
    }
    
    public void clearCurrentToken() {
        if (this._currToken != null) {
            this._lastClearedToken = this._currToken;
            this._currToken = null;
        }
    }
    
    @Override
    public abstract void close() throws IOException;
    
    public JsonParser configure(final Feature feature, final boolean b) {
        if (b) {
            this.enableFeature(feature);
            return this;
        }
        this.disableFeature(feature);
        return this;
    }
    
    public JsonParser disable(final Feature feature) {
        this._features &= (-1 ^ feature.getMask());
        return this;
    }
    
    public void disableFeature(final Feature feature) {
        this.disable(feature);
    }
    
    public JsonParser enable(final Feature feature) {
        this._features |= feature.getMask();
        return this;
    }
    
    public void enableFeature(final Feature feature) {
        this.enable(feature);
    }
    
    public abstract BigInteger getBigIntegerValue() throws IOException, JsonParseException;
    
    public byte[] getBinaryValue() throws IOException, JsonParseException {
        return this.getBinaryValue(Base64Variants.getDefaultVariant());
    }
    
    public abstract byte[] getBinaryValue(final Base64Variant p0) throws IOException, JsonParseException;
    
    public boolean getBooleanValue() throws IOException, JsonParseException {
        if (this.getCurrentToken() == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (this.getCurrentToken() == JsonToken.VALUE_FALSE) {
            return false;
        }
        throw new JsonParseException("Current token (" + this._currToken + ") not of boolean type", this.getCurrentLocation());
    }
    
    public byte getByteValue() throws IOException, JsonParseException {
        final int intValue = this.getIntValue();
        if (intValue < -128 || intValue > 127) {
            throw this._constructError("Numeric value (" + this.getText() + ") out of range of Java byte");
        }
        return (byte)intValue;
    }
    
    public abstract ObjectCodec getCodec();
    
    public abstract JsonLocation getCurrentLocation();
    
    public abstract String getCurrentName() throws IOException, JsonParseException;
    
    public JsonToken getCurrentToken() {
        return this._currToken;
    }
    
    public abstract BigDecimal getDecimalValue() throws IOException, JsonParseException;
    
    public abstract double getDoubleValue() throws IOException, JsonParseException;
    
    public Object getEmbeddedObject() throws IOException, JsonParseException {
        return null;
    }
    
    public abstract float getFloatValue() throws IOException, JsonParseException;
    
    public Object getInputSource() {
        return null;
    }
    
    public abstract int getIntValue() throws IOException, JsonParseException;
    
    public JsonToken getLastClearedToken() {
        return this._lastClearedToken;
    }
    
    public abstract long getLongValue() throws IOException, JsonParseException;
    
    public abstract NumberType getNumberType() throws IOException, JsonParseException;
    
    public abstract Number getNumberValue() throws IOException, JsonParseException;
    
    public abstract JsonStreamContext getParsingContext();
    
    public short getShortValue() throws IOException, JsonParseException {
        final int intValue = this.getIntValue();
        if (intValue < -32768 || intValue > 32767) {
            throw this._constructError("Numeric value (" + this.getText() + ") out of range of Java short");
        }
        return (short)intValue;
    }
    
    public abstract String getText() throws IOException, JsonParseException;
    
    public abstract char[] getTextCharacters() throws IOException, JsonParseException;
    
    public abstract int getTextLength() throws IOException, JsonParseException;
    
    public abstract int getTextOffset() throws IOException, JsonParseException;
    
    public abstract JsonLocation getTokenLocation();
    
    public boolean getValueAsBoolean() throws IOException, JsonParseException {
        return this.getValueAsBoolean(false);
    }
    
    public boolean getValueAsBoolean(final boolean b) throws IOException, JsonParseException {
        return b;
    }
    
    public double getValueAsDouble() throws IOException, JsonParseException {
        return this.getValueAsDouble(0.0);
    }
    
    public double getValueAsDouble(final double n) throws IOException, JsonParseException {
        return n;
    }
    
    public int getValueAsInt() throws IOException, JsonParseException {
        return this.getValueAsInt(0);
    }
    
    public int getValueAsInt(final int n) throws IOException, JsonParseException {
        return n;
    }
    
    public long getValueAsLong() throws IOException, JsonParseException {
        return this.getValueAsInt(0);
    }
    
    public long getValueAsLong(final long n) throws IOException, JsonParseException {
        return n;
    }
    
    public boolean hasCurrentToken() {
        return this._currToken != null;
    }
    
    public boolean hasTextCharacters() {
        return false;
    }
    
    public abstract boolean isClosed();
    
    public boolean isEnabled(final Feature feature) {
        return (this._features & feature.getMask()) != 0x0;
    }
    
    public boolean isExpectedStartArrayToken() {
        return this.getCurrentToken() == JsonToken.START_ARRAY;
    }
    
    public final boolean isFeatureEnabled(final Feature feature) {
        return this.isEnabled(feature);
    }
    
    public Boolean nextBooleanValue() throws IOException, JsonParseException {
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
    
    public boolean nextFieldName(final SerializableString serializableString) throws IOException, JsonParseException {
        return this.nextToken() == JsonToken.FIELD_NAME && serializableString.getValue().equals(this.getCurrentName());
    }
    
    public int nextIntValue(final int n) throws IOException, JsonParseException {
        if (this.nextToken() == JsonToken.VALUE_NUMBER_INT) {
            return this.getIntValue();
        }
        return n;
    }
    
    public long nextLongValue(final long n) throws IOException, JsonParseException {
        if (this.nextToken() == JsonToken.VALUE_NUMBER_INT) {
            return this.getLongValue();
        }
        return n;
    }
    
    public String nextTextValue() throws IOException, JsonParseException {
        if (this.nextToken() == JsonToken.VALUE_STRING) {
            return this.getText();
        }
        return null;
    }
    
    public abstract JsonToken nextToken() throws IOException, JsonParseException;
    
    public JsonToken nextValue() throws IOException, JsonParseException {
        JsonToken jsonToken = this.nextToken();
        if (jsonToken == JsonToken.FIELD_NAME) {
            jsonToken = this.nextToken();
        }
        return jsonToken;
    }
    
    public <T> T readValueAs(final TypeReference<?> typeReference) throws IOException, JsonProcessingException {
        final ObjectCodec codec = this.getCodec();
        if (codec == null) {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
        }
        return (T)codec.readValue(this, typeReference);
    }
    
    public <T> T readValueAs(final Class<T> clazz) throws IOException, JsonProcessingException {
        final ObjectCodec codec = this.getCodec();
        if (codec == null) {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
        }
        return codec.readValue(this, clazz);
    }
    
    public JsonNode readValueAsTree() throws IOException, JsonProcessingException {
        final ObjectCodec codec = this.getCodec();
        if (codec == null) {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree");
        }
        return codec.readTree(this);
    }
    
    public <T> Iterator<T> readValuesAs(final TypeReference<?> typeReference) throws IOException, JsonProcessingException {
        final ObjectCodec codec = this.getCodec();
        if (codec == null) {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
        }
        return (Iterator<T>)codec.readValues(this, typeReference);
    }
    
    public <T> Iterator<T> readValuesAs(final Class<T> clazz) throws IOException, JsonProcessingException {
        final ObjectCodec codec = this.getCodec();
        if (codec == null) {
            throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
        }
        return codec.readValues(this, clazz);
    }
    
    public int releaseBuffered(final OutputStream outputStream) throws IOException {
        return -1;
    }
    
    public int releaseBuffered(final Writer writer) throws IOException {
        return -1;
    }
    
    public abstract void setCodec(final ObjectCodec p0);
    
    public void setFeature(final Feature feature, final boolean b) {
        this.configure(feature, b);
    }
    
    public void setSchema(final FormatSchema formatSchema) {
        throw new UnsupportedOperationException("Parser of type " + this.getClass().getName() + " does not support schema of type '" + formatSchema.getSchemaType() + "'");
    }
    
    public abstract JsonParser skipChildren() throws IOException, JsonParseException;
    
    @Override
    public Version version() {
        return Version.unknownVersion();
    }
    
    public enum Feature
    {
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false), 
        ALLOW_COMMENTS(false), 
        ALLOW_NON_NUMERIC_NUMBERS(false), 
        ALLOW_NUMERIC_LEADING_ZEROS(false), 
        ALLOW_SINGLE_QUOTES(false), 
        ALLOW_UNQUOTED_CONTROL_CHARS(false), 
        ALLOW_UNQUOTED_FIELD_NAMES(false), 
        AUTO_CLOSE_SOURCE(true), 
        CANONICALIZE_FIELD_NAMES(true), 
        INTERN_FIELD_NAMES(true);
        
        final boolean _defaultState;
        
        private Feature(final boolean defaultState) {
            this._defaultState = defaultState;
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
        
        public boolean enabledIn(final int n) {
            return (n & this.getMask()) != 0x0;
        }
        
        public int getMask() {
            return 1 << this.ordinal();
        }
    }
    
    public enum NumberType
    {
        BIG_DECIMAL, 
        BIG_INTEGER, 
        DOUBLE, 
        FLOAT, 
        INT, 
        LONG;
    }
}
