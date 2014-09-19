package com.flurry.org.codehaus.jackson.util;

import java.io.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.*;

public class JsonParserDelegate extends JsonParser
{
    protected JsonParser delegate;
    
    public JsonParserDelegate(final JsonParser delegate) {
        super();
        this.delegate = delegate;
    }
    
    @Override
    public boolean canUseSchema(final FormatSchema formatSchema) {
        return this.delegate.canUseSchema(formatSchema);
    }
    
    @Override
    public void clearCurrentToken() {
        this.delegate.clearCurrentToken();
    }
    
    @Override
    public void close() throws IOException {
        this.delegate.close();
    }
    
    @Override
    public JsonParser disable(final Feature feature) {
        this.delegate.disable(feature);
        return this;
    }
    
    @Override
    public JsonParser enable(final Feature feature) {
        this.delegate.enable(feature);
        return this;
    }
    
    @Override
    public BigInteger getBigIntegerValue() throws IOException, JsonParseException {
        return this.delegate.getBigIntegerValue();
    }
    
    @Override
    public byte[] getBinaryValue(final Base64Variant base64Variant) throws IOException, JsonParseException {
        return this.delegate.getBinaryValue(base64Variant);
    }
    
    @Override
    public boolean getBooleanValue() throws IOException, JsonParseException {
        return this.delegate.getBooleanValue();
    }
    
    @Override
    public byte getByteValue() throws IOException, JsonParseException {
        return this.delegate.getByteValue();
    }
    
    @Override
    public ObjectCodec getCodec() {
        return this.delegate.getCodec();
    }
    
    @Override
    public JsonLocation getCurrentLocation() {
        return this.delegate.getCurrentLocation();
    }
    
    @Override
    public String getCurrentName() throws IOException, JsonParseException {
        return this.delegate.getCurrentName();
    }
    
    @Override
    public JsonToken getCurrentToken() {
        return this.delegate.getCurrentToken();
    }
    
    @Override
    public BigDecimal getDecimalValue() throws IOException, JsonParseException {
        return this.delegate.getDecimalValue();
    }
    
    @Override
    public double getDoubleValue() throws IOException, JsonParseException {
        return this.delegate.getDoubleValue();
    }
    
    @Override
    public Object getEmbeddedObject() throws IOException, JsonParseException {
        return this.delegate.getEmbeddedObject();
    }
    
    @Override
    public float getFloatValue() throws IOException, JsonParseException {
        return this.delegate.getFloatValue();
    }
    
    @Override
    public Object getInputSource() {
        return this.delegate.getInputSource();
    }
    
    @Override
    public int getIntValue() throws IOException, JsonParseException {
        return this.delegate.getIntValue();
    }
    
    @Override
    public JsonToken getLastClearedToken() {
        return this.delegate.getLastClearedToken();
    }
    
    @Override
    public long getLongValue() throws IOException, JsonParseException {
        return this.delegate.getLongValue();
    }
    
    @Override
    public NumberType getNumberType() throws IOException, JsonParseException {
        return this.delegate.getNumberType();
    }
    
    @Override
    public Number getNumberValue() throws IOException, JsonParseException {
        return this.delegate.getNumberValue();
    }
    
    @Override
    public JsonStreamContext getParsingContext() {
        return this.delegate.getParsingContext();
    }
    
    @Override
    public short getShortValue() throws IOException, JsonParseException {
        return this.delegate.getShortValue();
    }
    
    @Override
    public String getText() throws IOException, JsonParseException {
        return this.delegate.getText();
    }
    
    @Override
    public char[] getTextCharacters() throws IOException, JsonParseException {
        return this.delegate.getTextCharacters();
    }
    
    @Override
    public int getTextLength() throws IOException, JsonParseException {
        return this.delegate.getTextLength();
    }
    
    @Override
    public int getTextOffset() throws IOException, JsonParseException {
        return this.delegate.getTextOffset();
    }
    
    @Override
    public JsonLocation getTokenLocation() {
        return this.delegate.getTokenLocation();
    }
    
    @Override
    public boolean hasCurrentToken() {
        return this.delegate.hasCurrentToken();
    }
    
    @Override
    public boolean isClosed() {
        return this.delegate.isClosed();
    }
    
    @Override
    public boolean isEnabled(final Feature feature) {
        return this.delegate.isEnabled(feature);
    }
    
    @Override
    public JsonToken nextToken() throws IOException, JsonParseException {
        return this.delegate.nextToken();
    }
    
    @Override
    public void setCodec(final ObjectCodec codec) {
        this.delegate.setCodec(codec);
    }
    
    @Override
    public void setSchema(final FormatSchema schema) {
        this.delegate.setSchema(schema);
    }
    
    @Override
    public JsonParser skipChildren() throws IOException, JsonParseException {
        this.delegate.skipChildren();
        return this;
    }
    
    @Override
    public Version version() {
        return this.delegate.version();
    }
}
