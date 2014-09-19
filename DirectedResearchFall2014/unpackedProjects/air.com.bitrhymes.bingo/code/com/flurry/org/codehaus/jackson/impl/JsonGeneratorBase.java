package com.flurry.org.codehaus.jackson.impl;

import java.io.*;
import java.math.*;
import java.util.concurrent.atomic.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class JsonGeneratorBase extends JsonGenerator
{
    protected boolean _cfgNumbersAsStrings;
    protected boolean _closed;
    protected int _features;
    protected ObjectCodec _objectCodec;
    protected JsonWriteContext _writeContext;
    
    protected JsonGeneratorBase(final int features, final ObjectCodec objectCodec) {
        super();
        this._features = features;
        this._writeContext = JsonWriteContext.createRootContext();
        this._objectCodec = objectCodec;
        this._cfgNumbersAsStrings = this.isEnabled(Feature.WRITE_NUMBERS_AS_STRINGS);
    }
    
    protected void _cantHappen() {
        throw new RuntimeException("Internal error: should never end up through this code path");
    }
    
    protected abstract void _releaseBuffers();
    
    protected void _reportError(final String s) throws JsonGenerationException {
        throw new JsonGenerationException(s);
    }
    
    protected void _reportUnsupportedOperation() {
        throw new UnsupportedOperationException("Operation not supported by generator of type " + this.getClass().getName());
    }
    
    protected final void _throwInternal() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }
    
    protected abstract void _verifyValueWrite(final String p0) throws IOException, JsonGenerationException;
    
    @Deprecated
    protected void _writeEndArray() throws IOException, JsonGenerationException {
    }
    
    @Deprecated
    protected void _writeEndObject() throws IOException, JsonGenerationException {
    }
    
    protected void _writeSimpleObject(final Object o) throws IOException, JsonGenerationException {
        if (o == null) {
            this.writeNull();
            return;
        }
        if (o instanceof String) {
            this.writeString((String)o);
            return;
        }
        if (o instanceof Number) {
            final Number n = (Number)o;
            if (n instanceof Integer) {
                this.writeNumber(n.intValue());
                return;
            }
            if (n instanceof Long) {
                this.writeNumber(n.longValue());
                return;
            }
            if (n instanceof Double) {
                this.writeNumber(n.doubleValue());
                return;
            }
            if (n instanceof Float) {
                this.writeNumber(n.floatValue());
                return;
            }
            if (n instanceof Short) {
                this.writeNumber(n.shortValue());
                return;
            }
            if (n instanceof Byte) {
                this.writeNumber(n.byteValue());
                return;
            }
            if (n instanceof BigInteger) {
                this.writeNumber((BigInteger)n);
                return;
            }
            if (n instanceof BigDecimal) {
                this.writeNumber((BigDecimal)n);
                return;
            }
            if (n instanceof AtomicInteger) {
                this.writeNumber(((AtomicInteger)n).get());
                return;
            }
            if (n instanceof AtomicLong) {
                this.writeNumber(((AtomicLong)n).get());
                return;
            }
        }
        else {
            if (o instanceof byte[]) {
                this.writeBinary((byte[])o);
                return;
            }
            if (o instanceof Boolean) {
                this.writeBoolean((boolean)o);
                return;
            }
            if (o instanceof AtomicBoolean) {
                this.writeBoolean(((AtomicBoolean)o).get());
                return;
            }
        }
        throw new IllegalStateException("No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed " + o.getClass().getName() + ")");
    }
    
    @Deprecated
    protected void _writeStartArray() throws IOException, JsonGenerationException {
    }
    
    @Deprecated
    protected void _writeStartObject() throws IOException, JsonGenerationException {
    }
    
    @Override
    public void close() throws IOException {
        this._closed = true;
    }
    
    @Override
    public final void copyCurrentEvent(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == null) {
            this._reportError("No current event to copy");
        }
        switch (currentToken) {
            default: {
                this._cantHappen();
            }
            case START_OBJECT: {
                this.writeStartObject();
            }
            case END_OBJECT: {
                this.writeEndObject();
            }
            case START_ARRAY: {
                this.writeStartArray();
            }
            case END_ARRAY: {
                this.writeEndArray();
            }
            case FIELD_NAME: {
                this.writeFieldName(jsonParser.getCurrentName());
            }
            case VALUE_STRING: {
                if (jsonParser.hasTextCharacters()) {
                    this.writeString(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                    return;
                }
                this.writeString(jsonParser.getText());
            }
            case VALUE_NUMBER_INT: {
                switch (jsonParser.getNumberType()) {
                    default: {
                        this.writeNumber(jsonParser.getLongValue());
                        return;
                    }
                    case INT: {
                        this.writeNumber(jsonParser.getIntValue());
                        return;
                    }
                    case BIG_INTEGER: {
                        this.writeNumber(jsonParser.getBigIntegerValue());
                        return;
                    }
                }
                break;
            }
            case VALUE_NUMBER_FLOAT: {
                switch (jsonParser.getNumberType()) {
                    default: {
                        this.writeNumber(jsonParser.getDoubleValue());
                        return;
                    }
                    case BIG_DECIMAL: {
                        this.writeNumber(jsonParser.getDecimalValue());
                        return;
                    }
                    case FLOAT: {
                        this.writeNumber(jsonParser.getFloatValue());
                        return;
                    }
                }
                break;
            }
            case VALUE_TRUE: {
                this.writeBoolean(true);
            }
            case VALUE_FALSE: {
                this.writeBoolean(false);
            }
            case VALUE_NULL: {
                this.writeNull();
            }
            case VALUE_EMBEDDED_OBJECT: {
                this.writeObject(jsonParser.getEmbeddedObject());
            }
        }
    }
    
    @Override
    public final void copyCurrentStructure(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == JsonToken.FIELD_NAME) {
            this.writeFieldName(jsonParser.getCurrentName());
            jsonToken = jsonParser.nextToken();
        }
        switch (jsonToken) {
            default: {
                this.copyCurrentEvent(jsonParser);
            }
            case START_ARRAY: {
                this.writeStartArray();
                while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    this.copyCurrentStructure(jsonParser);
                }
                this.writeEndArray();
            }
            case START_OBJECT: {
                this.writeStartObject();
                while (jsonParser.nextToken() != JsonToken.END_OBJECT) {
                    this.copyCurrentStructure(jsonParser);
                }
                this.writeEndObject();
            }
        }
    }
    
    @Override
    public JsonGenerator disable(final Feature feature) {
        this._features &= (-1 ^ feature.getMask());
        if (feature == Feature.WRITE_NUMBERS_AS_STRINGS) {
            this._cfgNumbersAsStrings = false;
        }
        else if (feature == Feature.ESCAPE_NON_ASCII) {
            this.setHighestNonEscapedChar(0);
            return this;
        }
        return this;
    }
    
    @Override
    public JsonGenerator enable(final Feature feature) {
        this._features |= feature.getMask();
        if (feature == Feature.WRITE_NUMBERS_AS_STRINGS) {
            this._cfgNumbersAsStrings = true;
        }
        else if (feature == Feature.ESCAPE_NON_ASCII) {
            this.setHighestNonEscapedChar(127);
            return this;
        }
        return this;
    }
    
    @Override
    public abstract void flush() throws IOException;
    
    @Override
    public final ObjectCodec getCodec() {
        return this._objectCodec;
    }
    
    @Override
    public final JsonWriteContext getOutputContext() {
        return this._writeContext;
    }
    
    @Override
    public boolean isClosed() {
        return this._closed;
    }
    
    @Override
    public final boolean isEnabled(final Feature feature) {
        return (this._features & feature.getMask()) != 0x0;
    }
    
    @Override
    public JsonGenerator setCodec(final ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
        return this;
    }
    
    @Override
    public JsonGenerator useDefaultPrettyPrinter() {
        return this.setPrettyPrinter(new DefaultPrettyPrinter());
    }
    
    @Override
    public Version version() {
        return VersionUtil.versionFor(this.getClass());
    }
    
    @Override
    public void writeEndArray() throws IOException, JsonGenerationException {
        if (!this._writeContext.inArray()) {
            this._reportError("Current context not an ARRAY but " + this._writeContext.getTypeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        }
        else {
            this._writeEndArray();
        }
        this._writeContext = this._writeContext.getParent();
    }
    
    @Override
    public void writeEndObject() throws IOException, JsonGenerationException {
        if (!this._writeContext.inObject()) {
            this._reportError("Current context not an object but " + this._writeContext.getTypeDesc());
        }
        this._writeContext = this._writeContext.getParent();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
            return;
        }
        this._writeEndObject();
    }
    
    @Override
    public void writeObject(final Object o) throws IOException, JsonProcessingException {
        if (o == null) {
            this.writeNull();
            return;
        }
        if (this._objectCodec != null) {
            this._objectCodec.writeValue(this, o);
            return;
        }
        this._writeSimpleObject(o);
    }
    
    @Override
    public void writeRawValue(final String s) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write raw value");
        this.writeRaw(s);
    }
    
    @Override
    public void writeRawValue(final String s, final int n, final int n2) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write raw value");
        this.writeRaw(s, n, n2);
    }
    
    @Override
    public void writeRawValue(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._verifyValueWrite("write raw value");
        this.writeRaw(array, n, n2);
    }
    
    @Override
    public void writeStartArray() throws IOException, JsonGenerationException {
        this._verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        this._writeStartArray();
    }
    
    @Override
    public void writeStartObject() throws IOException, JsonGenerationException {
        this._verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        this._writeStartObject();
    }
    
    @Override
    public void writeTree(final JsonNode jsonNode) throws IOException, JsonProcessingException {
        if (jsonNode == null) {
            this.writeNull();
            return;
        }
        if (this._objectCodec == null) {
            throw new IllegalStateException("No ObjectCodec defined for the generator, can not serialize JsonNode-based trees");
        }
        this._objectCodec.writeTree(this, jsonNode);
    }
}
