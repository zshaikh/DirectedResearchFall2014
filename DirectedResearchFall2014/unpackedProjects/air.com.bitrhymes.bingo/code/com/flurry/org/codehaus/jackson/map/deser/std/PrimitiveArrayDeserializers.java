package com.flurry.org.codehaus.jackson.map.deser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.util.*;

public class PrimitiveArrayDeserializers
{
    static final PrimitiveArrayDeserializers instance;
    HashMap<JavaType, JsonDeserializer<Object>> _allDeserializers;
    
    static {
        instance = new PrimitiveArrayDeserializers();
    }
    
    protected PrimitiveArrayDeserializers() {
        super();
        this._allDeserializers = new HashMap<JavaType, JsonDeserializer<Object>>();
        this.add(Boolean.TYPE, new BooleanDeser());
        this.add(Byte.TYPE, new ByteDeser());
        this.add(Short.TYPE, new ShortDeser());
        this.add(Integer.TYPE, new IntDeser());
        this.add(Long.TYPE, new LongDeser());
        this.add(Float.TYPE, new FloatDeser());
        this.add(Double.TYPE, new DoubleDeser());
        this.add(String.class, new StringDeser());
        this.add(Character.TYPE, new CharDeser());
    }
    
    private void add(final Class<?> clazz, final JsonDeserializer<?> value) {
        this._allDeserializers.put(TypeFactory.defaultInstance().constructType(clazz), (JsonDeserializer<Object>)value);
    }
    
    public static HashMap<JavaType, JsonDeserializer<Object>> getAll() {
        return PrimitiveArrayDeserializers.instance._allDeserializers;
    }
    
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }
    
    abstract static class Base<T> extends StdDeserializer<T>
    {
        protected Base(final Class<T> clazz) {
            super(clazz);
        }
        
        @Override
        public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
            return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
        }
    }
    
    @JacksonStdImpl
    static final class BooleanDeser extends Base<boolean[]>
    {
        public BooleanDeser() {
            super(boolean[].class);
        }
        
        private final boolean[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                throw deserializationContext.mappingException(this._valueClass);
            }
            return new boolean[] { this._parseBooleanPrimitive(jsonParser, deserializationContext) };
        }
        
        @Override
        public boolean[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return this.handleNonArray(jsonParser, deserializationContext);
            }
            final ArrayBuilders.BooleanBuilder booleanBuilder = deserializationContext.getArrayBuilders().getBooleanBuilder();
            boolean[] array = booleanBuilder.resetAndStart();
            int n = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                final boolean parseBooleanPrimitive = this._parseBooleanPrimitive(jsonParser, deserializationContext);
                if (n >= array.length) {
                    array = booleanBuilder.appendCompletedChunk(array, n);
                    n = 0;
                }
                final int n2 = n + 1;
                array[n] = parseBooleanPrimitive;
                n = n2;
            }
            return booleanBuilder.completeAndClearBuffer(array, n);
        }
    }
    
    @JacksonStdImpl
    static final class ByteDeser extends Base<byte[]>
    {
        public ByteDeser() {
            super(byte[].class);
        }
        
        private final byte[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                throw deserializationContext.mappingException(this._valueClass);
            }
            final JsonToken currentToken = jsonParser.getCurrentToken();
            byte byteValue;
            if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                byteValue = jsonParser.getByteValue();
            }
            else {
                if (currentToken != JsonToken.VALUE_NULL) {
                    throw deserializationContext.mappingException(this._valueClass.getComponentType());
                }
                byteValue = 0;
            }
            return new byte[] { byteValue };
        }
        
        @Override
        public byte[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                return jsonParser.getBinaryValue(deserializationContext.getBase64Variant());
            }
            if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                final Object embeddedObject = jsonParser.getEmbeddedObject();
                if (embeddedObject == null) {
                    return null;
                }
                if (embeddedObject instanceof byte[]) {
                    return (byte[])embeddedObject;
                }
            }
            if (!jsonParser.isExpectedStartArrayToken()) {
                return this.handleNonArray(jsonParser, deserializationContext);
            }
            final ArrayBuilders.ByteBuilder byteBuilder = deserializationContext.getArrayBuilders().getByteBuilder();
            byte[] array = byteBuilder.resetAndStart();
            int n = 0;
            while (true) {
                final JsonToken nextToken = jsonParser.nextToken();
                if (nextToken == JsonToken.END_ARRAY) {
                    return byteBuilder.completeAndClearBuffer(array, n);
                }
                byte byteValue;
                if (nextToken == JsonToken.VALUE_NUMBER_INT || nextToken == JsonToken.VALUE_NUMBER_FLOAT) {
                    byteValue = jsonParser.getByteValue();
                }
                else {
                    if (nextToken != JsonToken.VALUE_NULL) {
                        throw deserializationContext.mappingException(this._valueClass.getComponentType());
                    }
                    byteValue = 0;
                }
                if (n >= array.length) {
                    array = byteBuilder.appendCompletedChunk(array, n);
                    n = 0;
                }
                final int n2 = n + 1;
                array[n] = byteValue;
                n = n2;
            }
        }
    }
    
    @JacksonStdImpl
    static final class CharDeser extends Base<char[]>
    {
        public CharDeser() {
            super(char[].class);
        }
        
        @Override
        public char[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                final char[] textCharacters = jsonParser.getTextCharacters();
                final int textOffset = jsonParser.getTextOffset();
                final int textLength = jsonParser.getTextLength();
                final char[] array = new char[textLength];
                System.arraycopy(textCharacters, textOffset, array, 0, textLength);
                return array;
            }
            if (!jsonParser.isExpectedStartArrayToken()) {
                if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                    final Object embeddedObject = jsonParser.getEmbeddedObject();
                    if (embeddedObject == null) {
                        return null;
                    }
                    if (embeddedObject instanceof char[]) {
                        return (char[])embeddedObject;
                    }
                    if (embeddedObject instanceof String) {
                        return ((String)embeddedObject).toCharArray();
                    }
                    if (embeddedObject instanceof byte[]) {
                        return Base64Variants.getDefaultVariant().encode((byte[])embeddedObject, false).toCharArray();
                    }
                }
                throw deserializationContext.mappingException(this._valueClass);
            }
            final StringBuilder sb = new StringBuilder(64);
            while (true) {
                final JsonToken nextToken = jsonParser.nextToken();
                if (nextToken == JsonToken.END_ARRAY) {
                    return sb.toString().toCharArray();
                }
                if (nextToken != JsonToken.VALUE_STRING) {
                    throw deserializationContext.mappingException(Character.TYPE);
                }
                final String text = jsonParser.getText();
                if (text.length() != 1) {
                    throw JsonMappingException.from(jsonParser, "Can not convert a JSON String of length " + text.length() + " into a char element of char array");
                }
                sb.append(text.charAt(0));
            }
        }
    }
    
    @JacksonStdImpl
    static final class DoubleDeser extends Base<double[]>
    {
        public DoubleDeser() {
            super(double[].class);
        }
        
        private final double[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                throw deserializationContext.mappingException(this._valueClass);
            }
            return new double[] { this._parseDoublePrimitive(jsonParser, deserializationContext) };
        }
        
        @Override
        public double[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return this.handleNonArray(jsonParser, deserializationContext);
            }
            final ArrayBuilders.DoubleBuilder doubleBuilder = deserializationContext.getArrayBuilders().getDoubleBuilder();
            double[] array = doubleBuilder.resetAndStart();
            int n = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                final double parseDoublePrimitive = this._parseDoublePrimitive(jsonParser, deserializationContext);
                if (n >= array.length) {
                    array = doubleBuilder.appendCompletedChunk(array, n);
                    n = 0;
                }
                final int n2 = n + 1;
                array[n] = parseDoublePrimitive;
                n = n2;
            }
            return doubleBuilder.completeAndClearBuffer(array, n);
        }
    }
    
    @JacksonStdImpl
    static final class FloatDeser extends Base<float[]>
    {
        public FloatDeser() {
            super(float[].class);
        }
        
        private final float[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                throw deserializationContext.mappingException(this._valueClass);
            }
            return new float[] { this._parseFloatPrimitive(jsonParser, deserializationContext) };
        }
        
        @Override
        public float[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return this.handleNonArray(jsonParser, deserializationContext);
            }
            final ArrayBuilders.FloatBuilder floatBuilder = deserializationContext.getArrayBuilders().getFloatBuilder();
            float[] array = floatBuilder.resetAndStart();
            int n = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                final float parseFloatPrimitive = this._parseFloatPrimitive(jsonParser, deserializationContext);
                if (n >= array.length) {
                    array = floatBuilder.appendCompletedChunk(array, n);
                    n = 0;
                }
                final int n2 = n + 1;
                array[n] = parseFloatPrimitive;
                n = n2;
            }
            return floatBuilder.completeAndClearBuffer(array, n);
        }
    }
    
    @JacksonStdImpl
    static final class IntDeser extends Base<int[]>
    {
        public IntDeser() {
            super(int[].class);
        }
        
        private final int[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                throw deserializationContext.mappingException(this._valueClass);
            }
            return new int[] { this._parseIntPrimitive(jsonParser, deserializationContext) };
        }
        
        @Override
        public int[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return this.handleNonArray(jsonParser, deserializationContext);
            }
            final ArrayBuilders.IntBuilder intBuilder = deserializationContext.getArrayBuilders().getIntBuilder();
            int[] array = intBuilder.resetAndStart();
            int n = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                final int parseIntPrimitive = this._parseIntPrimitive(jsonParser, deserializationContext);
                if (n >= array.length) {
                    array = intBuilder.appendCompletedChunk(array, n);
                    n = 0;
                }
                final int n2 = n + 1;
                array[n] = parseIntPrimitive;
                n = n2;
            }
            return intBuilder.completeAndClearBuffer(array, n);
        }
    }
    
    @JacksonStdImpl
    static final class LongDeser extends Base<long[]>
    {
        public LongDeser() {
            super(long[].class);
        }
        
        private final long[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                throw deserializationContext.mappingException(this._valueClass);
            }
            return new long[] { this._parseLongPrimitive(jsonParser, deserializationContext) };
        }
        
        @Override
        public long[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return this.handleNonArray(jsonParser, deserializationContext);
            }
            final ArrayBuilders.LongBuilder longBuilder = deserializationContext.getArrayBuilders().getLongBuilder();
            long[] array = longBuilder.resetAndStart();
            int n = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                final long parseLongPrimitive = this._parseLongPrimitive(jsonParser, deserializationContext);
                if (n >= array.length) {
                    array = longBuilder.appendCompletedChunk(array, n);
                    n = 0;
                }
                final int n2 = n + 1;
                array[n] = parseLongPrimitive;
                n = n2;
            }
            return longBuilder.completeAndClearBuffer(array, n);
        }
    }
    
    @JacksonStdImpl
    static final class ShortDeser extends Base<short[]>
    {
        public ShortDeser() {
            super(short[].class);
        }
        
        private final short[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                throw deserializationContext.mappingException(this._valueClass);
            }
            return new short[] { this._parseShortPrimitive(jsonParser, deserializationContext) };
        }
        
        @Override
        public short[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return this.handleNonArray(jsonParser, deserializationContext);
            }
            final ArrayBuilders.ShortBuilder shortBuilder = deserializationContext.getArrayBuilders().getShortBuilder();
            short[] array = shortBuilder.resetAndStart();
            int n = 0;
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                final short parseShortPrimitive = this._parseShortPrimitive(jsonParser, deserializationContext);
                if (n >= array.length) {
                    array = shortBuilder.appendCompletedChunk(array, n);
                    n = 0;
                }
                final int n2 = n + 1;
                array[n] = parseShortPrimitive;
                n = n2;
            }
            return shortBuilder.completeAndClearBuffer(array, n);
        }
    }
    
    @JacksonStdImpl
    static final class StringDeser extends Base<String[]>
    {
        public StringDeser() {
            super(String[].class);
        }
        
        private final String[] handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
                final String[] array = { null };
                String text;
                if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                    text = null;
                }
                else {
                    text = jsonParser.getText();
                }
                array[0] = text;
                return array;
            }
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
                return null;
            }
            throw deserializationContext.mappingException(this._valueClass);
        }
        
        @Override
        public String[] deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (!jsonParser.isExpectedStartArrayToken()) {
                return this.handleNonArray(jsonParser, deserializationContext);
            }
            final ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] array = leaseObjectBuffer.resetAndStart();
            int n = 0;
            while (true) {
                final JsonToken nextToken = jsonParser.nextToken();
                if (nextToken == JsonToken.END_ARRAY) {
                    break;
                }
                Object text;
                if (nextToken == JsonToken.VALUE_NULL) {
                    text = null;
                }
                else {
                    text = jsonParser.getText();
                }
                if (n >= array.length) {
                    array = leaseObjectBuffer.appendCompletedChunk(array);
                    n = 0;
                }
                final int n2 = n + 1;
                array[n] = text;
                n = n2;
            }
            final String[] array2 = leaseObjectBuffer.completeAndClearBuffer(array, n, String.class);
            deserializationContext.returnObjectBuffer(leaseObjectBuffer);
            return array2;
        }
    }
}
