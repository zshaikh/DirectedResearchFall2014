package com.flurry.org.apache.avro.io;

import java.io.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.io.parsing.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.*;
import java.nio.*;
import com.flurry.org.apache.avro.util.*;
import java.util.*;

public class JsonDecoder extends ParsingDecoder implements ActionHandler
{
    static final String CHARSET = "ISO-8859-1";
    private static JsonFactory jsonFactory;
    ReorderBuffer currentReorderBuffer;
    private JsonParser in;
    Stack<ReorderBuffer> reorderBuffers;
    
    static {
        JsonDecoder.jsonFactory = new JsonFactory();
    }
    
    JsonDecoder(final Schema schema, final InputStream inputStream) throws IOException {
        this(getSymbol(schema), inputStream);
    }
    
    JsonDecoder(final Schema schema, final String s) throws IOException {
        this(getSymbol(schema), s);
    }
    
    private JsonDecoder(final Symbol symbol, final InputStream inputStream) throws IOException {
        super(symbol);
        this.reorderBuffers = new Stack<ReorderBuffer>();
        this.configure(inputStream);
    }
    
    private JsonDecoder(final Symbol symbol, final String s) throws IOException {
        super(symbol);
        this.reorderBuffers = new Stack<ReorderBuffer>();
        this.configure(s);
    }
    
    private void advance(final Symbol symbol) throws IOException {
        this.parser.processTrailingImplicitActions();
        if (this.in.getCurrentToken() == null && this.parser.depth() == 1) {
            throw new EOFException();
        }
        this.parser.advance(symbol);
    }
    
    private void checkFixed(final int i) throws IOException {
        this.advance(Symbol.FIXED);
        final Symbol.IntCheckAction intCheckAction = (Symbol.IntCheckAction)this.parser.popSymbol();
        if (i != intCheckAction.size) {
            throw new AvroTypeException("Incorrect length for fixed binary: expected " + intCheckAction.size + " but received " + i + " bytes.");
        }
    }
    
    private long doArrayNext() throws IOException {
        if (this.in.getCurrentToken() == JsonToken.END_ARRAY) {
            this.parser.advance(Symbol.ARRAY_END);
            this.in.nextToken();
            return 0L;
        }
        return 1L;
    }
    
    private long doMapNext() throws IOException {
        if (this.in.getCurrentToken() == JsonToken.END_OBJECT) {
            this.in.nextToken();
            this.advance(Symbol.MAP_END);
            return 0L;
        }
        return 1L;
    }
    
    private void doSkipFixed(final int i) throws IOException {
        if (this.in.getCurrentToken() != JsonToken.VALUE_STRING) {
            throw this.error("fixed");
        }
        final byte[] byteArray = this.readByteArray();
        this.in.nextToken();
        if (byteArray.length != i) {
            throw new AvroTypeException("Expected fixed length " + i + ", but got" + byteArray.length);
        }
    }
    
    private AvroTypeException error(final String str) {
        return new AvroTypeException("Expected " + str + ". Got " + this.in.getCurrentToken());
    }
    
    private static Symbol getSymbol(final Schema schema) {
        if (schema == null) {
            throw new NullPointerException("Schema cannot be null!");
        }
        return new JsonGrammarGenerator().generate(schema);
    }
    
    private static List<JsonElement> getVaueAsTree(final JsonParser jsonParser) throws IOException {
        int n = 0;
        final ArrayList<JsonElement> list = new ArrayList<JsonElement>();
        do {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            switch (currentToken) {
                case START_OBJECT:
                case START_ARRAY: {
                    ++n;
                    list.add(new JsonElement(currentToken));
                    break;
                }
                case END_OBJECT:
                case END_ARRAY: {
                    --n;
                    list.add(new JsonElement(currentToken));
                    break;
                }
                case FIELD_NAME:
                case VALUE_STRING:
                case VALUE_NUMBER_INT:
                case VALUE_NUMBER_FLOAT:
                case VALUE_TRUE:
                case VALUE_FALSE:
                case VALUE_NULL: {
                    list.add(new JsonElement(currentToken, jsonParser.getText()));
                    break;
                }
            }
            jsonParser.nextToken();
        } while (n != 0);
        list.add(new JsonElement(null));
        return list;
    }
    
    private JsonParser makeParser(final List<JsonElement> list) throws IOException {
        return new JsonParser() {
            int pos = 0;
            
            @Override
            public void close() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public BigInteger getBigIntegerValue() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public byte[] getBinaryValue(final Base64Variant base64Variant) throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public ObjectCodec getCodec() {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public JsonLocation getCurrentLocation() {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public String getCurrentName() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public JsonToken getCurrentToken() {
                return list.get(this.pos).token;
            }
            
            @Override
            public BigDecimal getDecimalValue() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public double getDoubleValue() throws IOException {
                return Double.parseDouble(this.getText());
            }
            
            @Override
            public float getFloatValue() throws IOException {
                return Float.parseFloat(this.getText());
            }
            
            @Override
            public int getIntValue() throws IOException {
                return Integer.parseInt(this.getText());
            }
            
            @Override
            public long getLongValue() throws IOException {
                return Long.parseLong(this.getText());
            }
            
            @Override
            public NumberType getNumberType() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public Number getNumberValue() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public JsonStreamContext getParsingContext() {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public String getText() throws IOException {
                return list.get(this.pos).value;
            }
            
            @Override
            public char[] getTextCharacters() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public int getTextLength() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public int getTextOffset() throws IOException {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public JsonLocation getTokenLocation() {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public boolean isClosed() {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public JsonToken nextToken() throws IOException {
                ++this.pos;
                return list.get(this.pos).token;
            }
            
            @Override
            public void setCodec(final ObjectCodec objectCodec) {
                throw new UnsupportedOperationException();
            }
            
            @Override
            public JsonParser skipChildren() throws IOException {
                int n = 0;
                do {
                    switch (list.get(this.pos++).token) {
                        case START_OBJECT:
                        case START_ARRAY: {
                            ++n;
                            break;
                        }
                        case END_OBJECT:
                        case END_ARRAY: {
                            --n;
                            break;
                        }
                    }
                } while (n > 0);
                return this;
            }
        };
    }
    
    private byte[] readByteArray() throws IOException {
        return this.in.getText().getBytes("ISO-8859-1");
    }
    
    @Override
    public long arrayNext() throws IOException {
        this.advance(Symbol.ITEM_END);
        return this.doArrayNext();
    }
    
    public JsonDecoder configure(final InputStream inputStream) throws IOException {
        if (inputStream == null) {
            throw new NullPointerException("InputStream to read from cannot be null!");
        }
        this.parser.reset();
        (this.in = JsonDecoder.jsonFactory.createJsonParser(inputStream)).nextToken();
        return this;
    }
    
    public JsonDecoder configure(final String s) throws IOException {
        if (s == null) {
            throw new NullPointerException("String to read from cannot be null!");
        }
        this.parser.reset();
        (this.in = new JsonFactory().createJsonParser(s)).nextToken();
        return this;
    }
    
    @Override
    public Symbol doAction(final Symbol symbol, final Symbol obj) throws IOException {
        if (obj instanceof Symbol.FieldAdjustAction) {
            final Symbol.FieldAdjustAction fieldAdjustAction = (Symbol.FieldAdjustAction)obj;
            final String fname = fieldAdjustAction.fname;
            if (this.currentReorderBuffer != null) {
                final List<JsonElement> list = this.currentReorderBuffer.savedFields.get(fname);
                if (list != null) {
                    this.currentReorderBuffer.savedFields.remove(fname);
                    this.currentReorderBuffer.origParser = this.in;
                    this.in = this.makeParser(list);
                    return null;
                }
            }
            if (this.in.getCurrentToken() == JsonToken.FIELD_NAME) {
                do {
                    final String text = this.in.getText();
                    this.in.nextToken();
                    if (fname.equals(text)) {
                        return null;
                    }
                    if (this.currentReorderBuffer == null) {
                        this.currentReorderBuffer = new ReorderBuffer();
                    }
                    this.currentReorderBuffer.savedFields.put(text, getVaueAsTree(this.in));
                } while (this.in.getCurrentToken() == JsonToken.FIELD_NAME);
                throw new AvroTypeException("Expected field name not found: " + fieldAdjustAction.fname);
            }
        }
        else if (obj == Symbol.FIELD_END) {
            if (this.currentReorderBuffer != null && this.currentReorderBuffer.origParser != null) {
                this.in = this.currentReorderBuffer.origParser;
                this.currentReorderBuffer.origParser = null;
            }
        }
        else if (obj == Symbol.RECORD_START) {
            if (this.in.getCurrentToken() != JsonToken.START_OBJECT) {
                throw this.error("record-start");
            }
            this.in.nextToken();
            this.reorderBuffers.push(this.currentReorderBuffer);
            this.currentReorderBuffer = null;
        }
        else {
            if (obj != Symbol.RECORD_END && obj != Symbol.UNION_END) {
                throw new AvroTypeException("Unknown action symbol " + obj);
            }
            if (this.in.getCurrentToken() != JsonToken.END_OBJECT) {
                String s;
                if (obj == Symbol.RECORD_END) {
                    s = "record-end";
                }
                else {
                    s = "union-end";
                }
                throw this.error(s);
            }
            this.in.nextToken();
            if (obj == Symbol.RECORD_END) {
                if (this.currentReorderBuffer != null && !this.currentReorderBuffer.savedFields.isEmpty()) {
                    throw this.error("Unknown fields: " + this.currentReorderBuffer.savedFields.keySet());
                }
                this.currentReorderBuffer = this.reorderBuffers.pop();
            }
        }
        return null;
    }
    
    @Override
    public long mapNext() throws IOException {
        this.advance(Symbol.ITEM_END);
        return this.doMapNext();
    }
    
    @Override
    public long readArrayStart() throws IOException {
        this.advance(Symbol.ARRAY_START);
        if (this.in.getCurrentToken() == JsonToken.START_ARRAY) {
            this.in.nextToken();
            return this.doArrayNext();
        }
        throw this.error("array-start");
    }
    
    @Override
    public boolean readBoolean() throws IOException {
        this.advance(Symbol.BOOLEAN);
        final JsonToken currentToken = this.in.getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE || currentToken == JsonToken.VALUE_FALSE) {
            this.in.nextToken();
            return currentToken == JsonToken.VALUE_TRUE;
        }
        throw this.error("boolean");
    }
    
    @Override
    public ByteBuffer readBytes(final ByteBuffer byteBuffer) throws IOException {
        this.advance(Symbol.BYTES);
        if (this.in.getCurrentToken() == JsonToken.VALUE_STRING) {
            final byte[] byteArray = this.readByteArray();
            this.in.nextToken();
            return ByteBuffer.wrap(byteArray);
        }
        throw this.error("bytes");
    }
    
    @Override
    public double readDouble() throws IOException {
        this.advance(Symbol.DOUBLE);
        if (this.in.getCurrentToken() == JsonToken.VALUE_NUMBER_FLOAT) {
            final double doubleValue = this.in.getDoubleValue();
            this.in.nextToken();
            return doubleValue;
        }
        throw this.error("double");
    }
    
    @Override
    public int readEnum() throws IOException {
        this.advance(Symbol.ENUM);
        final Symbol.EnumLabelsAction enumLabelsAction = (Symbol.EnumLabelsAction)this.parser.popSymbol();
        if (this.in.getCurrentToken() != JsonToken.VALUE_STRING) {
            throw this.error("fixed");
        }
        this.in.getText();
        final int label = enumLabelsAction.findLabel(this.in.getText());
        if (label >= 0) {
            this.in.nextToken();
            return label;
        }
        throw new AvroTypeException("Unknown symbol in enum " + this.in.getText());
    }
    
    @Override
    public void readFixed(final byte[] array, final int n, final int i) throws IOException {
        this.checkFixed(i);
        if (this.in.getCurrentToken() != JsonToken.VALUE_STRING) {
            throw this.error("fixed");
        }
        final byte[] byteArray = this.readByteArray();
        this.in.nextToken();
        if (byteArray.length != i) {
            throw new AvroTypeException("Expected fixed length " + i + ", but got" + byteArray.length);
        }
        System.arraycopy(byteArray, 0, array, n, i);
    }
    
    @Override
    public float readFloat() throws IOException {
        this.advance(Symbol.FLOAT);
        if (this.in.getCurrentToken() == JsonToken.VALUE_NUMBER_FLOAT) {
            final float floatValue = this.in.getFloatValue();
            this.in.nextToken();
            return floatValue;
        }
        throw this.error("float");
    }
    
    @Override
    public int readIndex() throws IOException {
        this.advance(Symbol.UNION);
        final Symbol.Alternative alternative = (Symbol.Alternative)this.parser.popSymbol();
        String text;
        if (this.in.getCurrentToken() == JsonToken.VALUE_NULL) {
            text = "null";
        }
        else {
            if (this.in.getCurrentToken() != JsonToken.START_OBJECT || this.in.nextToken() != JsonToken.FIELD_NAME) {
                throw this.error("start-union");
            }
            text = this.in.getText();
            this.in.nextToken();
            this.parser.pushSymbol(Symbol.UNION_END);
        }
        final int label = alternative.findLabel(text);
        if (label < 0) {
            throw new AvroTypeException("Unknown union branch " + text);
        }
        this.parser.pushSymbol(alternative.getSymbol(label));
        return label;
    }
    
    @Override
    public int readInt() throws IOException {
        this.advance(Symbol.INT);
        if (this.in.getCurrentToken() == JsonToken.VALUE_NUMBER_INT) {
            final int intValue = this.in.getIntValue();
            this.in.nextToken();
            return intValue;
        }
        throw this.error("int");
    }
    
    @Override
    public long readLong() throws IOException {
        this.advance(Symbol.LONG);
        if (this.in.getCurrentToken() == JsonToken.VALUE_NUMBER_INT) {
            final long longValue = this.in.getLongValue();
            this.in.nextToken();
            return longValue;
        }
        throw this.error("long");
    }
    
    @Override
    public long readMapStart() throws IOException {
        this.advance(Symbol.MAP_START);
        if (this.in.getCurrentToken() == JsonToken.START_OBJECT) {
            this.in.nextToken();
            return this.doMapNext();
        }
        throw this.error("map-start");
    }
    
    @Override
    public void readNull() throws IOException {
        this.advance(Symbol.NULL);
        if (this.in.getCurrentToken() == JsonToken.VALUE_NULL) {
            this.in.nextToken();
            return;
        }
        throw this.error("null");
    }
    
    @Override
    public Utf8 readString(final Utf8 utf8) throws IOException {
        return new Utf8(this.readString());
    }
    
    @Override
    public String readString() throws IOException {
        this.advance(Symbol.STRING);
        if (this.parser.topSymbol() == Symbol.MAP_KEY_MARKER) {
            this.parser.advance(Symbol.MAP_KEY_MARKER);
            if (this.in.getCurrentToken() != JsonToken.FIELD_NAME) {
                throw this.error("map-key");
            }
        }
        else if (this.in.getCurrentToken() != JsonToken.VALUE_STRING) {
            throw this.error("string");
        }
        final String text = this.in.getText();
        this.in.nextToken();
        return text;
    }
    
    @Override
    public long skipArray() throws IOException {
        this.advance(Symbol.ARRAY_START);
        if (this.in.getCurrentToken() == JsonToken.START_ARRAY) {
            this.in.skipChildren();
            this.in.nextToken();
            this.advance(Symbol.ARRAY_END);
            return 0L;
        }
        throw this.error("array-start");
    }
    
    @Override
    public void skipBytes() throws IOException {
        this.advance(Symbol.BYTES);
        if (this.in.getCurrentToken() == JsonToken.VALUE_STRING) {
            this.in.nextToken();
            return;
        }
        throw this.error("bytes");
    }
    
    @Override
    protected void skipFixed() throws IOException {
        this.advance(Symbol.FIXED);
        this.doSkipFixed(((Symbol.IntCheckAction)this.parser.popSymbol()).size);
    }
    
    @Override
    public void skipFixed(final int n) throws IOException {
        this.checkFixed(n);
        this.doSkipFixed(n);
    }
    
    @Override
    public long skipMap() throws IOException {
        this.advance(Symbol.MAP_START);
        if (this.in.getCurrentToken() == JsonToken.START_OBJECT) {
            this.in.skipChildren();
            this.in.nextToken();
            this.advance(Symbol.MAP_END);
            return 0L;
        }
        throw this.error("map-start");
    }
    
    @Override
    public void skipString() throws IOException {
        this.advance(Symbol.STRING);
        if (this.parser.topSymbol() == Symbol.MAP_KEY_MARKER) {
            this.parser.advance(Symbol.MAP_KEY_MARKER);
            if (this.in.getCurrentToken() != JsonToken.FIELD_NAME) {
                throw this.error("map-key");
            }
        }
        else if (this.in.getCurrentToken() != JsonToken.VALUE_STRING) {
            throw this.error("string");
        }
        this.in.nextToken();
    }
    
    private static class JsonElement
    {
        public final JsonToken token;
        public final String value;
        
        public JsonElement(final JsonToken jsonToken) {
            this(jsonToken, null);
        }
        
        public JsonElement(final JsonToken token, final String value) {
            super();
            this.token = token;
            this.value = value;
        }
    }
    
    private static class ReorderBuffer
    {
        public JsonParser origParser;
        public Map<String, List<JsonElement>> savedFields;
        
        private ReorderBuffer() {
            super();
            this.savedFields = new HashMap<String, List<JsonElement>>();
            this.origParser = null;
        }
    }
}
