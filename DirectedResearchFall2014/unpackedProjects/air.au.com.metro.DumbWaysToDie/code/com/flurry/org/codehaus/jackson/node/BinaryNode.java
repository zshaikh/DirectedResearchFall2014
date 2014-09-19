package com.flurry.org.codehaus.jackson.node;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public final class BinaryNode extends ValueNode
{
    static final BinaryNode EMPTY_BINARY_NODE;
    final byte[] _data;
    
    static {
        EMPTY_BINARY_NODE = new BinaryNode(new byte[0]);
    }
    
    public BinaryNode(final byte[] data) {
        super();
        this._data = data;
    }
    
    public BinaryNode(final byte[] data, final int n, final int n2) {
        super();
        if (n == 0 && n2 == data.length) {
            this._data = data;
            return;
        }
        System.arraycopy(data, n, this._data = new byte[n2], 0, n2);
    }
    
    public static BinaryNode valueOf(final byte[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return BinaryNode.EMPTY_BINARY_NODE;
        }
        return new BinaryNode(array);
    }
    
    public static BinaryNode valueOf(final byte[] array, final int n, final int n2) {
        if (array == null) {
            return null;
        }
        if (n2 == 0) {
            return BinaryNode.EMPTY_BINARY_NODE;
        }
        return new BinaryNode(array, n, n2);
    }
    
    @Override
    public String asText() {
        return Base64Variants.getDefaultVariant().encode(this._data, false);
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.VALUE_EMBEDDED_OBJECT;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && Arrays.equals(((BinaryNode)o)._data, this._data));
    }
    
    @Override
    public byte[] getBinaryValue() {
        return this._data;
    }
    
    @Override
    public int hashCode() {
        if (this._data == null) {
            return -1;
        }
        return this._data.length;
    }
    
    @Override
    public boolean isBinary() {
        return true;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeBinary(this._data);
    }
    
    @Override
    public String toString() {
        return Base64Variants.getDefaultVariant().encode(this._data, true);
    }
}
