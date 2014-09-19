package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.util.*;

@JacksonStdImpl
public class ObjectArrayDeserializer extends ContainerDeserializerBase<Object[]>
{
    protected final JavaType _arrayType;
    protected final Class<?> _elementClass;
    protected final JsonDeserializer<Object> _elementDeserializer;
    protected final TypeDeserializer _elementTypeDeserializer;
    protected final boolean _untyped;
    
    public ObjectArrayDeserializer(final ArrayType arrayType, final JsonDeserializer<Object> elementDeserializer, final TypeDeserializer elementTypeDeserializer) {
        super(Object[].class);
        this._arrayType = arrayType;
        this._elementClass = arrayType.getContentType().getRawClass();
        this._untyped = (this._elementClass == Object.class);
        this._elementDeserializer = elementDeserializer;
        this._elementTypeDeserializer = elementTypeDeserializer;
    }
    
    private final Object[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
            return null;
        }
        if (deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
            Object o;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                o = null;
            }
            else if (this._elementTypeDeserializer == null) {
                o = this._elementDeserializer.deserialize(jsonParser, deserializationContext);
            }
            else {
                o = this._elementDeserializer.deserializeWithType(jsonParser, deserializationContext, this._elementTypeDeserializer);
            }
            Object[] array;
            if (this._untyped) {
                array = new Object[] { null };
            }
            else {
                array = (Object[])Array.newInstance(this._elementClass, 1);
            }
            array[0] = o;
            return array;
        }
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && this._elementClass == Byte.class) {
            return this.deserializeFromBase64(jsonParser, deserializationContext);
        }
        throw deserializationContext.mappingException(this._arrayType.getRawClass());
    }
    
    @Override
    public Object[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            return this.handleNonArray(jsonParser, deserializationContext);
        }
        final ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] array = leaseObjectBuffer.resetAndStart();
        int n = 0;
        final TypeDeserializer elementTypeDeserializer = this._elementTypeDeserializer;
        while (true) {
            final JsonToken nextToken = jsonParser.nextToken();
            if (nextToken == JsonToken.END_ARRAY) {
                break;
            }
            Object o;
            if (nextToken == JsonToken.VALUE_NULL) {
                o = null;
            }
            else if (elementTypeDeserializer == null) {
                o = this._elementDeserializer.deserialize(jsonParser, deserializationContext);
            }
            else {
                o = this._elementDeserializer.deserializeWithType(jsonParser, deserializationContext, elementTypeDeserializer);
            }
            if (n >= array.length) {
                array = leaseObjectBuffer.appendCompletedChunk(array);
                n = 0;
            }
            final int n2 = n + 1;
            array[n] = o;
            n = n2;
        }
        Object[] array2;
        if (this._untyped) {
            array2 = leaseObjectBuffer.completeAndClearBuffer(array, n);
        }
        else {
            array2 = leaseObjectBuffer.completeAndClearBuffer(array, n, this._elementClass);
        }
        deserializationContext.returnObjectBuffer(leaseObjectBuffer);
        return array2;
    }
    
    protected Byte[] deserializeFromBase64(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final byte[] binaryValue = jsonParser.getBinaryValue(deserializationContext.getBase64Variant());
        final Byte[] array = new Byte[binaryValue.length];
        for (int i = 0; i < binaryValue.length; ++i) {
            array[i] = binaryValue[i];
        }
        return array;
    }
    
    @Override
    public Object[] deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return (Object[])typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }
    
    @Override
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._elementDeserializer;
    }
    
    @Override
    public JavaType getContentType() {
        return this._arrayType.getContentType();
    }
}
