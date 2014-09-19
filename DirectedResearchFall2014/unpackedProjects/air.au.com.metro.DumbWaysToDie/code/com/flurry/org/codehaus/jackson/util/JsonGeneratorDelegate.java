package com.flurry.org.codehaus.jackson.util;

import java.io.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.*;

public class JsonGeneratorDelegate extends JsonGenerator
{
    protected JsonGenerator delegate;
    
    public JsonGeneratorDelegate(final JsonGenerator delegate) {
        super();
        this.delegate = delegate;
    }
    
    @Override
    public boolean canUseSchema(final FormatSchema formatSchema) {
        return this.delegate.canUseSchema(formatSchema);
    }
    
    @Override
    public void close() throws IOException {
        this.delegate.close();
    }
    
    @Override
    public void copyCurrentEvent(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        this.delegate.copyCurrentEvent(jsonParser);
    }
    
    @Override
    public void copyCurrentStructure(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        this.delegate.copyCurrentStructure(jsonParser);
    }
    
    @Override
    public JsonGenerator disable(final Feature feature) {
        return this.delegate.disable(feature);
    }
    
    @Override
    public JsonGenerator enable(final Feature feature) {
        return this.delegate.enable(feature);
    }
    
    @Override
    public void flush() throws IOException {
        this.delegate.flush();
    }
    
    @Override
    public ObjectCodec getCodec() {
        return this.delegate.getCodec();
    }
    
    @Override
    public JsonStreamContext getOutputContext() {
        return this.delegate.getOutputContext();
    }
    
    @Override
    public Object getOutputTarget() {
        return this.delegate.getOutputTarget();
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
    public JsonGenerator setCodec(final ObjectCodec codec) {
        this.delegate.setCodec(codec);
        return this;
    }
    
    @Override
    public void setSchema(final FormatSchema schema) {
        this.delegate.setSchema(schema);
    }
    
    @Override
    public JsonGenerator useDefaultPrettyPrinter() {
        this.delegate.useDefaultPrettyPrinter();
        return this;
    }
    
    @Override
    public Version version() {
        return this.delegate.version();
    }
    
    @Override
    public void writeBinary(final Base64Variant base64Variant, final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this.delegate.writeBinary(base64Variant, array, n, n2);
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException, JsonGenerationException {
        this.delegate.writeBoolean(b);
    }
    
    @Override
    public void writeEndArray() throws IOException, JsonGenerationException {
        this.delegate.writeEndArray();
    }
    
    @Override
    public void writeEndObject() throws IOException, JsonGenerationException {
        this.delegate.writeEndObject();
    }
    
    @Override
    public void writeFieldName(final SerializableString serializableString) throws IOException, JsonGenerationException {
        this.delegate.writeFieldName(serializableString);
    }
    
    @Override
    public void writeFieldName(final SerializedString serializedString) throws IOException, JsonGenerationException {
        this.delegate.writeFieldName(serializedString);
    }
    
    @Override
    public void writeFieldName(final String s) throws IOException, JsonGenerationException {
        this.delegate.writeFieldName(s);
    }
    
    @Override
    public void writeNull() throws IOException, JsonGenerationException {
        this.delegate.writeNull();
    }
    
    @Override
    public void writeNumber(final double n) throws IOException, JsonGenerationException {
        this.delegate.writeNumber(n);
    }
    
    @Override
    public void writeNumber(final float n) throws IOException, JsonGenerationException {
        this.delegate.writeNumber(n);
    }
    
    @Override
    public void writeNumber(final int n) throws IOException, JsonGenerationException {
        this.delegate.writeNumber(n);
    }
    
    @Override
    public void writeNumber(final long n) throws IOException, JsonGenerationException {
        this.delegate.writeNumber(n);
    }
    
    @Override
    public void writeNumber(final String s) throws IOException, JsonGenerationException, UnsupportedOperationException {
        this.delegate.writeNumber(s);
    }
    
    @Override
    public void writeNumber(final BigDecimal bigDecimal) throws IOException, JsonGenerationException {
        this.delegate.writeNumber(bigDecimal);
    }
    
    @Override
    public void writeNumber(final BigInteger bigInteger) throws IOException, JsonGenerationException {
        this.delegate.writeNumber(bigInteger);
    }
    
    @Override
    public void writeObject(final Object o) throws IOException, JsonProcessingException {
        this.delegate.writeObject(o);
    }
    
    @Override
    public void writeRaw(final char c) throws IOException, JsonGenerationException {
        this.delegate.writeRaw(c);
    }
    
    @Override
    public void writeRaw(final String s) throws IOException, JsonGenerationException {
        this.delegate.writeRaw(s);
    }
    
    @Override
    public void writeRaw(final String s, final int n, final int n2) throws IOException, JsonGenerationException {
        this.delegate.writeRaw(s, n, n2);
    }
    
    @Override
    public void writeRaw(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this.delegate.writeRaw(array, n, n2);
    }
    
    @Override
    public void writeRawUTF8String(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this.delegate.writeRawUTF8String(array, n, n2);
    }
    
    @Override
    public void writeRawValue(final String s) throws IOException, JsonGenerationException {
        this.delegate.writeRawValue(s);
    }
    
    @Override
    public void writeRawValue(final String s, final int n, final int n2) throws IOException, JsonGenerationException {
        this.delegate.writeRawValue(s, n, n2);
    }
    
    @Override
    public void writeRawValue(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this.delegate.writeRawValue(array, n, n2);
    }
    
    @Override
    public void writeStartArray() throws IOException, JsonGenerationException {
        this.delegate.writeStartArray();
    }
    
    @Override
    public void writeStartObject() throws IOException, JsonGenerationException {
        this.delegate.writeStartObject();
    }
    
    @Override
    public void writeString(final SerializableString serializableString) throws IOException, JsonGenerationException {
        this.delegate.writeString(serializableString);
    }
    
    @Override
    public void writeString(final String s) throws IOException, JsonGenerationException {
        this.delegate.writeString(s);
    }
    
    @Override
    public void writeString(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this.delegate.writeString(array, n, n2);
    }
    
    @Override
    public void writeTree(final JsonNode jsonNode) throws IOException, JsonProcessingException {
        this.delegate.writeTree(jsonNode);
    }
    
    @Override
    public void writeUTF8String(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this.delegate.writeUTF8String(array, n, n2);
    }
}
