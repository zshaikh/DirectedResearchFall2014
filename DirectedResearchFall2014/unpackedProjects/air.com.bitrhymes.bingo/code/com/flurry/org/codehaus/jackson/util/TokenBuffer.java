package com.flurry.org.codehaus.jackson.util;

import java.io.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.impl.*;
import com.flurry.org.codehaus.jackson.*;

public class TokenBuffer extends JsonGenerator
{
    protected static final int DEFAULT_PARSER_FEATURES;
    protected int _appendOffset;
    protected boolean _closed;
    protected Segment _first;
    protected int _generatorFeatures;
    protected Segment _last;
    protected ObjectCodec _objectCodec;
    protected JsonWriteContext _writeContext;
    
    static {
        DEFAULT_PARSER_FEATURES = JsonParser.Feature.collectDefaults();
    }
    
    public TokenBuffer(final ObjectCodec objectCodec) {
        super();
        this._objectCodec = objectCodec;
        this._generatorFeatures = TokenBuffer.DEFAULT_PARSER_FEATURES;
        this._writeContext = JsonWriteContext.createRootContext();
        final Segment segment = new Segment();
        this._last = segment;
        this._first = segment;
        this._appendOffset = 0;
    }
    
    protected final void _append(final JsonToken jsonToken) {
        final Segment append = this._last.append(this._appendOffset, jsonToken);
        if (append == null) {
            ++this._appendOffset;
            return;
        }
        this._last = append;
        this._appendOffset = 1;
    }
    
    protected final void _append(final JsonToken jsonToken, final Object o) {
        final Segment append = this._last.append(this._appendOffset, jsonToken, o);
        if (append == null) {
            ++this._appendOffset;
            return;
        }
        this._last = append;
        this._appendOffset = 1;
    }
    
    protected void _reportUnsupportedOperation() {
        throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
    }
    
    public JsonParser asParser() {
        return this.asParser(this._objectCodec);
    }
    
    public JsonParser asParser(final JsonParser jsonParser) {
        final Parser parser = new Parser(this._first, jsonParser.getCodec());
        parser.setLocation(jsonParser.getTokenLocation());
        return parser;
    }
    
    public JsonParser asParser(final ObjectCodec objectCodec) {
        return new Parser(this._first, objectCodec);
    }
    
    @Override
    public void close() throws IOException {
        this._closed = true;
    }
    
    @Override
    public void copyCurrentEvent(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        switch (jsonParser.getCurrentToken()) {
            default: {
                throw new RuntimeException("Internal error: should never end up through this code path");
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
    public void copyCurrentStructure(final JsonParser jsonParser) throws IOException, JsonProcessingException {
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
        this._generatorFeatures &= (-1 ^ feature.getMask());
        return this;
    }
    
    @Override
    public JsonGenerator enable(final Feature feature) {
        this._generatorFeatures |= feature.getMask();
        return this;
    }
    
    @Override
    public void flush() throws IOException {
    }
    
    @Override
    public ObjectCodec getCodec() {
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
    public boolean isEnabled(final Feature feature) {
        return (this._generatorFeatures & feature.getMask()) != 0x0;
    }
    
    public void serialize(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        Segment segment = this._first;
        int n = -1;
        while (true) {
            if (++n >= 16) {
                segment = segment.next();
                n = 0;
                if (segment == null) {
                    break;
                }
            }
            final JsonToken type = segment.type(n);
            if (type == null) {
                break;
            }
            switch (type) {
                default: {
                    throw new RuntimeException("Internal error: should never end up through this code path");
                }
                case START_OBJECT: {
                    jsonGenerator.writeStartObject();
                    continue;
                }
                case END_OBJECT: {
                    jsonGenerator.writeEndObject();
                    continue;
                }
                case START_ARRAY: {
                    jsonGenerator.writeStartArray();
                    continue;
                }
                case END_ARRAY: {
                    jsonGenerator.writeEndArray();
                    continue;
                }
                case FIELD_NAME: {
                    final Object value = segment.get(n);
                    if (value instanceof SerializableString) {
                        jsonGenerator.writeFieldName((SerializableString)value);
                        continue;
                    }
                    jsonGenerator.writeFieldName((String)value);
                    continue;
                }
                case VALUE_STRING: {
                    final Object value2 = segment.get(n);
                    if (value2 instanceof SerializableString) {
                        jsonGenerator.writeString((SerializableString)value2);
                        continue;
                    }
                    jsonGenerator.writeString((String)value2);
                    continue;
                }
                case VALUE_NUMBER_INT: {
                    final Number n2 = (Number)segment.get(n);
                    if (n2 instanceof BigInteger) {
                        jsonGenerator.writeNumber((BigInteger)n2);
                        continue;
                    }
                    if (n2 instanceof Long) {
                        jsonGenerator.writeNumber(n2.longValue());
                        continue;
                    }
                    jsonGenerator.writeNumber(n2.intValue());
                    continue;
                }
                case VALUE_NUMBER_FLOAT: {
                    final Object value3 = segment.get(n);
                    if (value3 instanceof BigDecimal) {
                        jsonGenerator.writeNumber((BigDecimal)value3);
                        continue;
                    }
                    if (value3 instanceof Float) {
                        jsonGenerator.writeNumber((float)value3);
                        continue;
                    }
                    if (value3 instanceof Double) {
                        jsonGenerator.writeNumber((double)value3);
                        continue;
                    }
                    if (value3 == null) {
                        jsonGenerator.writeNull();
                        continue;
                    }
                    if (value3 instanceof String) {
                        jsonGenerator.writeNumber((String)value3);
                        continue;
                    }
                    throw new JsonGenerationException("Unrecognized value type for VALUE_NUMBER_FLOAT: " + ((String)value3).getClass().getName() + ", can not serialize");
                }
                case VALUE_TRUE: {
                    jsonGenerator.writeBoolean(true);
                    continue;
                }
                case VALUE_FALSE: {
                    jsonGenerator.writeBoolean(false);
                    continue;
                }
                case VALUE_NULL: {
                    jsonGenerator.writeNull();
                    continue;
                }
                case VALUE_EMBEDDED_OBJECT: {
                    jsonGenerator.writeObject(segment.get(n));
                    continue;
                }
            }
        }
    }
    
    @Override
    public JsonGenerator setCodec(final ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
        return this;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("[TokenBuffer: ");
        final JsonParser parser = this.asParser();
        int n = 0;
        while (true) {
            JsonToken nextToken;
            try {
                nextToken = parser.nextToken();
                if (nextToken == null) {
                    if (n >= 100) {
                        sb.append(" ... (truncated ").append(n - 100).append(" entries)");
                    }
                    sb.append(']');
                    return sb.toString();
                }
            }
            catch (IOException cause) {
                throw new IllegalStateException(cause);
            }
            if (n < 100) {
                if (n > 0) {
                    sb.append(", ");
                }
                sb.append(nextToken.toString());
            }
            ++n;
        }
    }
    
    @Override
    public JsonGenerator useDefaultPrettyPrinter() {
        return this;
    }
    
    @Override
    public void writeBinary(final Base64Variant base64Variant, final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        final byte[] array2 = new byte[n2];
        System.arraycopy(array, n, array2, 0, n2);
        this.writeObject(array2);
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException, JsonGenerationException {
        JsonToken jsonToken;
        if (b) {
            jsonToken = JsonToken.VALUE_TRUE;
        }
        else {
            jsonToken = JsonToken.VALUE_FALSE;
        }
        this._append(jsonToken);
    }
    
    @Override
    public final void writeEndArray() throws IOException, JsonGenerationException {
        this._append(JsonToken.END_ARRAY);
        final JsonWriteContext parent = this._writeContext.getParent();
        if (parent != null) {
            this._writeContext = parent;
        }
    }
    
    @Override
    public final void writeEndObject() throws IOException, JsonGenerationException {
        this._append(JsonToken.END_OBJECT);
        final JsonWriteContext parent = this._writeContext.getParent();
        if (parent != null) {
            this._writeContext = parent;
        }
    }
    
    @Override
    public void writeFieldName(final SerializableString serializableString) throws IOException, JsonGenerationException {
        this._append(JsonToken.FIELD_NAME, serializableString);
        this._writeContext.writeFieldName(serializableString.getValue());
    }
    
    @Override
    public void writeFieldName(final SerializedString serializedString) throws IOException, JsonGenerationException {
        this._append(JsonToken.FIELD_NAME, serializedString);
        this._writeContext.writeFieldName(serializedString.getValue());
    }
    
    @Override
    public final void writeFieldName(final String s) throws IOException, JsonGenerationException {
        this._append(JsonToken.FIELD_NAME, s);
        this._writeContext.writeFieldName(s);
    }
    
    @Override
    public void writeNull() throws IOException, JsonGenerationException {
        this._append(JsonToken.VALUE_NULL);
    }
    
    @Override
    public void writeNumber(final double d) throws IOException, JsonGenerationException {
        this._append(JsonToken.VALUE_NUMBER_FLOAT, d);
    }
    
    @Override
    public void writeNumber(final float f) throws IOException, JsonGenerationException {
        this._append(JsonToken.VALUE_NUMBER_FLOAT, f);
    }
    
    @Override
    public void writeNumber(final int i) throws IOException, JsonGenerationException {
        this._append(JsonToken.VALUE_NUMBER_INT, i);
    }
    
    @Override
    public void writeNumber(final long l) throws IOException, JsonGenerationException {
        this._append(JsonToken.VALUE_NUMBER_INT, l);
    }
    
    @Override
    public void writeNumber(final String s) throws IOException, JsonGenerationException {
        this._append(JsonToken.VALUE_NUMBER_FLOAT, s);
    }
    
    @Override
    public void writeNumber(final BigDecimal bigDecimal) throws IOException, JsonGenerationException {
        if (bigDecimal == null) {
            this.writeNull();
            return;
        }
        this._append(JsonToken.VALUE_NUMBER_FLOAT, bigDecimal);
    }
    
    @Override
    public void writeNumber(final BigInteger bigInteger) throws IOException, JsonGenerationException {
        if (bigInteger == null) {
            this.writeNull();
            return;
        }
        this._append(JsonToken.VALUE_NUMBER_INT, bigInteger);
    }
    
    @Override
    public void writeObject(final Object o) throws IOException, JsonProcessingException {
        this._append(JsonToken.VALUE_EMBEDDED_OBJECT, o);
    }
    
    @Override
    public void writeRaw(final char c) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    @Override
    public void writeRaw(final String s) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    @Override
    public void writeRaw(final String s, final int n, final int n2) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    @Override
    public void writeRaw(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    @Override
    public void writeRawUTF8String(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    @Override
    public void writeRawValue(final String s) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    @Override
    public void writeRawValue(final String s, final int n, final int n2) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    @Override
    public void writeRawValue(final char[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    @Override
    public final void writeStartArray() throws IOException, JsonGenerationException {
        this._append(JsonToken.START_ARRAY);
        this._writeContext = this._writeContext.createChildArrayContext();
    }
    
    @Override
    public final void writeStartObject() throws IOException, JsonGenerationException {
        this._append(JsonToken.START_OBJECT);
        this._writeContext = this._writeContext.createChildObjectContext();
    }
    
    @Override
    public void writeString(final SerializableString serializableString) throws IOException, JsonGenerationException {
        if (serializableString == null) {
            this.writeNull();
            return;
        }
        this._append(JsonToken.VALUE_STRING, serializableString);
    }
    
    @Override
    public void writeString(final String s) throws IOException, JsonGenerationException {
        if (s == null) {
            this.writeNull();
            return;
        }
        this._append(JsonToken.VALUE_STRING, s);
    }
    
    @Override
    public void writeString(final char[] value, final int offset, final int count) throws IOException, JsonGenerationException {
        this.writeString(new String(value, offset, count));
    }
    
    @Override
    public void writeTree(final JsonNode jsonNode) throws IOException, JsonProcessingException {
        this._append(JsonToken.VALUE_EMBEDDED_OBJECT, jsonNode);
    }
    
    @Override
    public void writeUTF8String(final byte[] array, final int n, final int n2) throws IOException, JsonGenerationException {
        this._reportUnsupportedOperation();
    }
    
    protected static final class Parser extends JsonParserMinimalBase
    {
        protected transient ByteArrayBuilder _byteBuilder;
        protected boolean _closed;
        protected ObjectCodec _codec;
        protected JsonLocation _location;
        protected JsonReadContext _parsingContext;
        protected Segment _segment;
        protected int _segmentPtr;
        
        public Parser(final Segment segment, final ObjectCodec codec) {
            super(0);
            this._location = null;
            this._segment = segment;
            this._segmentPtr = -1;
            this._codec = codec;
            this._parsingContext = JsonReadContext.createRootContext(-1, -1);
        }
        
        protected final void _checkIsNumber() throws JsonParseException {
            if (this._currToken == null || !this._currToken.isNumeric()) {
                throw this._constructError("Current token (" + this._currToken + ") not numeric, can not use numeric value accessors");
            }
        }
        
        protected final Object _currentObject() {
            return this._segment.get(this._segmentPtr);
        }
        
        @Override
        protected void _handleEOF() throws JsonParseException {
            this._throwInternal();
        }
        
        @Override
        public void close() throws IOException {
            if (!this._closed) {
                this._closed = true;
            }
        }
        
        @Override
        public BigInteger getBigIntegerValue() throws IOException, JsonParseException {
            final Number numberValue = this.getNumberValue();
            if (numberValue instanceof BigInteger) {
                return (BigInteger)numberValue;
            }
            switch (this.getNumberType()) {
                default: {
                    return BigInteger.valueOf(numberValue.longValue());
                }
                case BIG_DECIMAL: {
                    return ((BigDecimal)numberValue).toBigInteger();
                }
            }
        }
        
        @Override
        public byte[] getBinaryValue(final Base64Variant base64Variant) throws IOException, JsonParseException {
            if (this._currToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                final Object currentObject = this._currentObject();
                if (currentObject instanceof byte[]) {
                    return (byte[])currentObject;
                }
            }
            if (this._currToken != JsonToken.VALUE_STRING) {
                throw this._constructError("Current token (" + this._currToken + ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary");
            }
            final String text = this.getText();
            if (text == null) {
                return null;
            }
            ByteArrayBuilder byteBuilder = this._byteBuilder;
            if (byteBuilder == null) {
                byteBuilder = new ByteArrayBuilder(100);
                this._byteBuilder = byteBuilder;
            }
            else {
                this._byteBuilder.reset();
            }
            this._decodeBase64(text, byteBuilder, base64Variant);
            return byteBuilder.toByteArray();
        }
        
        @Override
        public ObjectCodec getCodec() {
            return this._codec;
        }
        
        @Override
        public JsonLocation getCurrentLocation() {
            if (this._location == null) {
                return JsonLocation.NA;
            }
            return this._location;
        }
        
        @Override
        public String getCurrentName() {
            return this._parsingContext.getCurrentName();
        }
        
        @Override
        public BigDecimal getDecimalValue() throws IOException, JsonParseException {
            final Number numberValue = this.getNumberValue();
            if (numberValue instanceof BigDecimal) {
                return (BigDecimal)numberValue;
            }
            switch (this.getNumberType()) {
                default: {
                    return BigDecimal.valueOf(numberValue.doubleValue());
                }
                case INT:
                case LONG: {
                    return BigDecimal.valueOf(numberValue.longValue());
                }
                case BIG_INTEGER: {
                    return new BigDecimal((BigInteger)numberValue);
                }
            }
        }
        
        @Override
        public double getDoubleValue() throws IOException, JsonParseException {
            return this.getNumberValue().doubleValue();
        }
        
        @Override
        public Object getEmbeddedObject() {
            if (this._currToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                return this._currentObject();
            }
            return null;
        }
        
        @Override
        public float getFloatValue() throws IOException, JsonParseException {
            return this.getNumberValue().floatValue();
        }
        
        @Override
        public int getIntValue() throws IOException, JsonParseException {
            if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
                return ((Number)this._currentObject()).intValue();
            }
            return this.getNumberValue().intValue();
        }
        
        @Override
        public long getLongValue() throws IOException, JsonParseException {
            return this.getNumberValue().longValue();
        }
        
        @Override
        public NumberType getNumberType() throws IOException, JsonParseException {
            final Number numberValue = this.getNumberValue();
            if (numberValue instanceof Integer) {
                return NumberType.INT;
            }
            if (numberValue instanceof Long) {
                return NumberType.LONG;
            }
            if (numberValue instanceof Double) {
                return NumberType.DOUBLE;
            }
            if (numberValue instanceof BigDecimal) {
                return NumberType.BIG_DECIMAL;
            }
            if (numberValue instanceof Float) {
                return NumberType.FLOAT;
            }
            if (numberValue instanceof BigInteger) {
                return NumberType.BIG_INTEGER;
            }
            return null;
        }
        
        @Override
        public final Number getNumberValue() throws IOException, JsonParseException {
            this._checkIsNumber();
            return (Number)this._currentObject();
        }
        
        @Override
        public JsonStreamContext getParsingContext() {
            return this._parsingContext;
        }
        
        @Override
        public String getText() {
            if (this._currToken == JsonToken.VALUE_STRING || this._currToken == JsonToken.FIELD_NAME) {
                final Object currentObject = this._currentObject();
                if (currentObject instanceof String) {
                    return (String)currentObject;
                }
                if (currentObject == null) {
                    return null;
                }
                return currentObject.toString();
            }
            else {
                if (this._currToken == null) {
                    return null;
                }
                switch (this._currToken) {
                    default: {
                        return this._currToken.asString();
                    }
                    case VALUE_NUMBER_INT:
                    case VALUE_NUMBER_FLOAT: {
                        final Object currentObject2 = this._currentObject();
                        if (currentObject2 == null) {
                            return null;
                        }
                        return currentObject2.toString();
                    }
                }
            }
        }
        
        @Override
        public char[] getTextCharacters() {
            final String text = this.getText();
            if (text == null) {
                return null;
            }
            return text.toCharArray();
        }
        
        @Override
        public int getTextLength() {
            final String text = this.getText();
            if (text == null) {
                return 0;
            }
            return text.length();
        }
        
        @Override
        public int getTextOffset() {
            return 0;
        }
        
        @Override
        public JsonLocation getTokenLocation() {
            return this.getCurrentLocation();
        }
        
        @Override
        public boolean hasTextCharacters() {
            return false;
        }
        
        @Override
        public boolean isClosed() {
            return this._closed;
        }
        
        @Override
        public JsonToken nextToken() throws IOException, JsonParseException {
            if (this._closed || this._segment == null) {
                return null;
            }
            if (++this._segmentPtr >= 16) {
                this._segmentPtr = 0;
                this._segment = this._segment.next();
                if (this._segment == null) {
                    return null;
                }
            }
            this._currToken = this._segment.type(this._segmentPtr);
            if (this._currToken == JsonToken.FIELD_NAME) {
                final Object currentObject = this._currentObject();
                String string;
                if (currentObject instanceof String) {
                    string = (String)currentObject;
                }
                else {
                    string = currentObject.toString();
                }
                this._parsingContext.setCurrentName(string);
            }
            else if (this._currToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(-1, -1);
            }
            else if (this._currToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(-1, -1);
            }
            else if (this._currToken == JsonToken.END_OBJECT || this._currToken == JsonToken.END_ARRAY) {
                this._parsingContext = this._parsingContext.getParent();
                if (this._parsingContext == null) {
                    this._parsingContext = JsonReadContext.createRootContext(-1, -1);
                }
            }
            return this._currToken;
        }
        
        public JsonToken peekNextToken() throws IOException, JsonParseException {
            if (this._closed) {
                return null;
            }
            Object o = this._segment;
            int n = 1 + this._segmentPtr;
            if (n >= 16) {
                n = 0;
                if (o == null) {
                    o = null;
                }
                else {
                    o = ((Segment)o).next();
                    n = 0;
                }
            }
            if (o == null) {
                return null;
            }
            return ((Segment)o).type(n);
        }
        
        @Override
        public void setCodec(final ObjectCodec codec) {
            this._codec = codec;
        }
        
        public void setLocation(final JsonLocation location) {
            this._location = location;
        }
    }
    
    protected static final class Segment
    {
        public static final int TOKENS_PER_SEGMENT = 16;
        private static final JsonToken[] TOKEN_TYPES_BY_INDEX;
        protected Segment _next;
        protected long _tokenTypes;
        protected final Object[] _tokens;
        
        static {
            TOKEN_TYPES_BY_INDEX = new JsonToken[16];
            final JsonToken[] values = JsonToken.values();
            System.arraycopy(values, 1, Segment.TOKEN_TYPES_BY_INDEX, 1, Math.min(15, values.length - 1));
        }
        
        public Segment() {
            super();
            this._tokens = new Object[16];
        }
        
        public Segment append(final int n, final JsonToken jsonToken) {
            if (n < 16) {
                this.set(n, jsonToken);
                return null;
            }
            (this._next = new Segment()).set(0, jsonToken);
            return this._next;
        }
        
        public Segment append(final int n, final JsonToken jsonToken, final Object o) {
            if (n < 16) {
                this.set(n, jsonToken, o);
                return null;
            }
            (this._next = new Segment()).set(0, jsonToken, o);
            return this._next;
        }
        
        public Object get(final int n) {
            return this._tokens[n];
        }
        
        public Segment next() {
            return this._next;
        }
        
        public void set(final int n, final JsonToken jsonToken) {
            long n2 = jsonToken.ordinal();
            if (n > 0) {
                n2 <<= n << 2;
            }
            this._tokenTypes |= n2;
        }
        
        public void set(final int n, final JsonToken jsonToken, final Object o) {
            this._tokens[n] = o;
            long n2 = jsonToken.ordinal();
            if (n > 0) {
                n2 <<= n << 2;
            }
            this._tokenTypes |= n2;
        }
        
        public JsonToken type(final int n) {
            long tokenTypes = this._tokenTypes;
            if (n > 0) {
                tokenTypes >>= n << 2;
            }
            return Segment.TOKEN_TYPES_BY_INDEX[0xF & (int)tokenTypes];
        }
    }
}
