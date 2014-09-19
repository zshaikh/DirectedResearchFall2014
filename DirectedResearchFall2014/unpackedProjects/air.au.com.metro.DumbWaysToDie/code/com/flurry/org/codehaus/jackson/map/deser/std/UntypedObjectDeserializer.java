package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;

@JacksonStdImpl
public class UntypedObjectDeserializer extends StdDeserializer<Object>
{
    private static final Object[] NO_OBJECTS;
    
    static {
        NO_OBJECTS = new Object[0];
    }
    
    public UntypedObjectDeserializer() {
        super(Object.class);
    }
    
    @Override
    public Object deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        switch (jsonParser.getCurrentToken()) {
            default: {
                throw deserializationContext.mappingException(Object.class);
            }
            case START_OBJECT: {
                return this.mapObject(jsonParser, deserializationContext);
            }
            case START_ARRAY: {
                return this.mapArray(jsonParser, deserializationContext);
            }
            case FIELD_NAME: {
                return this.mapObject(jsonParser, deserializationContext);
            }
            case VALUE_EMBEDDED_OBJECT: {
                return jsonParser.getEmbeddedObject();
            }
            case VALUE_STRING: {
                return jsonParser.getText();
            }
            case VALUE_NUMBER_INT: {
                if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
                    return jsonParser.getBigIntegerValue();
                }
                return jsonParser.getNumberValue();
            }
            case VALUE_NUMBER_FLOAT: {
                if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return jsonParser.getDecimalValue();
                }
                return jsonParser.getDoubleValue();
            }
            case VALUE_TRUE: {
                return Boolean.TRUE;
            }
            case VALUE_FALSE: {
                return Boolean.FALSE;
            }
            case VALUE_NULL: {
                return null;
            }
        }
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        switch (jsonParser.getCurrentToken()) {
            default: {
                throw deserializationContext.mappingException(Object.class);
            }
            case START_OBJECT:
            case START_ARRAY:
            case FIELD_NAME: {
                return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
            }
            case VALUE_STRING: {
                return jsonParser.getText();
            }
            case VALUE_NUMBER_INT: {
                if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
                    return jsonParser.getBigIntegerValue();
                }
                return jsonParser.getIntValue();
            }
            case VALUE_NUMBER_FLOAT: {
                if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return jsonParser.getDecimalValue();
                }
                return jsonParser.getDoubleValue();
            }
            case VALUE_TRUE: {
                return Boolean.TRUE;
            }
            case VALUE_FALSE: {
                return Boolean.FALSE;
            }
            case VALUE_EMBEDDED_OBJECT: {
                return jsonParser.getEmbeddedObject();
            }
            case VALUE_NULL: {
                return null;
            }
        }
    }
    
    protected Object mapArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
            return this.mapArrayToArray(jsonParser, deserializationContext);
        }
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            return new ArrayList(4);
        }
        final ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] array = leaseObjectBuffer.resetAndStart();
        int n = 0;
        int n2 = 0;
        int n3;
        while (true) {
            final Object deserialize = this.deserialize(jsonParser, deserializationContext);
            ++n2;
            if (n >= array.length) {
                array = leaseObjectBuffer.appendCompletedChunk(array);
                n = 0;
            }
            n3 = n + 1;
            array[n] = deserialize;
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                break;
            }
            n = n3;
        }
        final ArrayList list = new ArrayList<Object>(1 + (n2 + (n2 >> 3)));
        leaseObjectBuffer.completeAndClearBuffer(array, n3, (List<Object>)list);
        return list;
    }
    
    protected Object[] mapArrayToArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            return UntypedObjectDeserializer.NO_OBJECTS;
        }
        final ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] array = leaseObjectBuffer.resetAndStart();
        int n = 0;
        int n2;
        while (true) {
            final Object deserialize = this.deserialize(jsonParser, deserializationContext);
            if (n >= array.length) {
                array = leaseObjectBuffer.appendCompletedChunk(array);
                n = 0;
            }
            n2 = n + 1;
            array[n] = deserialize;
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                break;
            }
            n = n2;
        }
        return leaseObjectBuffer.completeAndClearBuffer(array, n2);
    }
    
    protected Object mapObject(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        }
        if (jsonToken != JsonToken.FIELD_NAME) {
            return new LinkedHashMap(4);
        }
        final String text = jsonParser.getText();
        jsonParser.nextToken();
        final Object deserialize = this.deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() != JsonToken.FIELD_NAME) {
            final LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>(4);
            linkedHashMap.put(text, deserialize);
            return linkedHashMap;
        }
        final String text2 = jsonParser.getText();
        jsonParser.nextToken();
        final Object deserialize2 = this.deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() != JsonToken.FIELD_NAME) {
            final LinkedHashMap<String, Object> linkedHashMap2 = new LinkedHashMap<String, Object>(4);
            linkedHashMap2.put(text, deserialize);
            linkedHashMap2.put(text2, deserialize2);
            return linkedHashMap2;
        }
        final LinkedHashMap<String, Object> linkedHashMap3 = new LinkedHashMap<String, Object>();
        linkedHashMap3.put(text, deserialize);
        linkedHashMap3.put(text2, deserialize2);
        do {
            final String text3 = jsonParser.getText();
            jsonParser.nextToken();
            linkedHashMap3.put(text3, this.deserialize(jsonParser, deserializationContext));
        } while (jsonParser.nextToken() != JsonToken.END_OBJECT);
        return linkedHashMap3;
    }
}
