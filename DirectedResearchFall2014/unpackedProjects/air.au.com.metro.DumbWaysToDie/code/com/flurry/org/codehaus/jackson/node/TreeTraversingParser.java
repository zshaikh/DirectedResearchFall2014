package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.impl.*;
import java.io.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.*;

public class TreeTraversingParser extends JsonParserMinimalBase
{
    protected boolean _closed;
    protected JsonToken _nextToken;
    protected NodeCursor _nodeCursor;
    protected ObjectCodec _objectCodec;
    protected boolean _startContainer;
    
    public TreeTraversingParser(final JsonNode jsonNode) {
        this(jsonNode, null);
    }
    
    public TreeTraversingParser(final JsonNode jsonNode, final ObjectCodec objectCodec) {
        super(0);
        this._objectCodec = objectCodec;
        if (jsonNode.isArray()) {
            this._nextToken = JsonToken.START_ARRAY;
            this._nodeCursor = new NodeCursor.Array(jsonNode, null);
            return;
        }
        if (jsonNode.isObject()) {
            this._nextToken = JsonToken.START_OBJECT;
            this._nodeCursor = new NodeCursor.Object(jsonNode, null);
            return;
        }
        this._nodeCursor = new NodeCursor.RootValue(jsonNode, null);
    }
    
    @Override
    protected void _handleEOF() throws JsonParseException {
        this._throwInternal();
    }
    
    @Override
    public void close() throws IOException {
        if (!this._closed) {
            this._closed = true;
            this._nodeCursor = null;
            this._currToken = null;
        }
    }
    
    protected JsonNode currentNode() {
        if (this._closed || this._nodeCursor == null) {
            return null;
        }
        return this._nodeCursor.currentNode();
    }
    
    protected JsonNode currentNumericNode() throws JsonParseException {
        final JsonNode currentNode = this.currentNode();
        if (currentNode == null || !currentNode.isNumber()) {
            Object token;
            if (currentNode == null) {
                token = null;
            }
            else {
                token = currentNode.asToken();
            }
            throw this._constructError("Current token (" + token + ") not numeric, can not use numeric value accessors");
        }
        return currentNode;
    }
    
    @Override
    public BigInteger getBigIntegerValue() throws IOException, JsonParseException {
        return this.currentNumericNode().getBigIntegerValue();
    }
    
    @Override
    public byte[] getBinaryValue(final Base64Variant base64Variant) throws IOException, JsonParseException {
        final JsonNode currentNode = this.currentNode();
        if (currentNode != null) {
            final byte[] binaryValue = currentNode.getBinaryValue();
            if (binaryValue != null) {
                return binaryValue;
            }
            if (currentNode.isPojo()) {
                final Object pojo = ((POJONode)currentNode).getPojo();
                if (pojo instanceof byte[]) {
                    return (byte[])pojo;
                }
            }
        }
        return null;
    }
    
    @Override
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }
    
    @Override
    public JsonLocation getCurrentLocation() {
        return JsonLocation.NA;
    }
    
    @Override
    public String getCurrentName() {
        if (this._nodeCursor == null) {
            return null;
        }
        return this._nodeCursor.getCurrentName();
    }
    
    @Override
    public BigDecimal getDecimalValue() throws IOException, JsonParseException {
        return this.currentNumericNode().getDecimalValue();
    }
    
    @Override
    public double getDoubleValue() throws IOException, JsonParseException {
        return this.currentNumericNode().getDoubleValue();
    }
    
    @Override
    public Object getEmbeddedObject() {
        if (!this._closed) {
            final JsonNode currentNode = this.currentNode();
            if (currentNode != null) {
                if (currentNode.isPojo()) {
                    return ((POJONode)currentNode).getPojo();
                }
                if (currentNode.isBinary()) {
                    return ((BinaryNode)currentNode).getBinaryValue();
                }
            }
        }
        return null;
    }
    
    @Override
    public float getFloatValue() throws IOException, JsonParseException {
        return (float)this.currentNumericNode().getDoubleValue();
    }
    
    @Override
    public int getIntValue() throws IOException, JsonParseException {
        return this.currentNumericNode().getIntValue();
    }
    
    @Override
    public long getLongValue() throws IOException, JsonParseException {
        return this.currentNumericNode().getLongValue();
    }
    
    @Override
    public NumberType getNumberType() throws IOException, JsonParseException {
        final JsonNode currentNumericNode = this.currentNumericNode();
        if (currentNumericNode == null) {
            return null;
        }
        return currentNumericNode.getNumberType();
    }
    
    @Override
    public Number getNumberValue() throws IOException, JsonParseException {
        return this.currentNumericNode().getNumberValue();
    }
    
    @Override
    public JsonStreamContext getParsingContext() {
        return this._nodeCursor;
    }
    
    @Override
    public String getText() {
        if (this._closed) {
            return null;
        }
        switch (this._currToken) {
            case FIELD_NAME: {
                return this._nodeCursor.getCurrentName();
            }
            case VALUE_STRING: {
                return this.currentNode().getTextValue();
            }
            case VALUE_NUMBER_INT:
            case VALUE_NUMBER_FLOAT: {
                return String.valueOf(this.currentNode().getNumberValue());
            }
            case VALUE_EMBEDDED_OBJECT: {
                final JsonNode currentNode = this.currentNode();
                if (currentNode != null && currentNode.isBinary()) {
                    return currentNode.asText();
                }
                break;
            }
        }
        if (this._currToken == null) {
            return null;
        }
        return this._currToken.asString();
    }
    
    @Override
    public char[] getTextCharacters() throws IOException, JsonParseException {
        return this.getText().toCharArray();
    }
    
    @Override
    public int getTextLength() throws IOException, JsonParseException {
        return this.getText().length();
    }
    
    @Override
    public int getTextOffset() throws IOException, JsonParseException {
        return 0;
    }
    
    @Override
    public JsonLocation getTokenLocation() {
        return JsonLocation.NA;
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
        if (this._nextToken != null) {
            this._currToken = this._nextToken;
            this._nextToken = null;
            return this._currToken;
        }
        if (this._startContainer) {
            this._startContainer = false;
            if (!this._nodeCursor.currentHasChildren()) {
                JsonToken currToken;
                if (this._currToken == JsonToken.START_OBJECT) {
                    currToken = JsonToken.END_OBJECT;
                }
                else {
                    currToken = JsonToken.END_ARRAY;
                }
                return this._currToken = currToken;
            }
            this._nodeCursor = this._nodeCursor.iterateChildren();
            this._currToken = this._nodeCursor.nextToken();
            if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
                this._startContainer = true;
            }
            return this._currToken;
        }
        else {
            if (this._nodeCursor == null) {
                this._closed = true;
                return null;
            }
            this._currToken = this._nodeCursor.nextToken();
            if (this._currToken != null) {
                if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
                    this._startContainer = true;
                }
                return this._currToken;
            }
            this._currToken = this._nodeCursor.endToken();
            this._nodeCursor = this._nodeCursor.getParent();
            return this._currToken;
        }
    }
    
    @Override
    public void setCodec(final ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
    }
    
    @Override
    public JsonParser skipChildren() throws IOException, JsonParseException {
        if (this._currToken == JsonToken.START_OBJECT) {
            this._startContainer = false;
            this._currToken = JsonToken.END_OBJECT;
        }
        else if (this._currToken == JsonToken.START_ARRAY) {
            this._startContainer = false;
            this._currToken = JsonToken.END_ARRAY;
            return this;
        }
        return this;
    }
}
