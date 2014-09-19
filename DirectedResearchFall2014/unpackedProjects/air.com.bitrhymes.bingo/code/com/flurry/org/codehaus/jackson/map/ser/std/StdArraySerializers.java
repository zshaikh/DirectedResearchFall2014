package com.flurry.org.codehaus.jackson.map.ser.std;

import java.io.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class StdArraySerializers
{
    public abstract static class ArraySerializerBase<T> extends ContainerSerializerBase<T>
    {
        protected final BeanProperty _property;
        protected final TypeSerializer _valueTypeSerializer;
        
        protected ArraySerializerBase(final Class<T> clazz, final TypeSerializer valueTypeSerializer, final BeanProperty property) {
            super(clazz);
            this._valueTypeSerializer = valueTypeSerializer;
            this._property = property;
        }
        
        @Override
        public final void serialize(final T t, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeStartArray();
            this.serializeContents(t, jsonGenerator, serializerProvider);
            jsonGenerator.writeEndArray();
        }
        
        protected abstract void serializeContents(final T p0, final JsonGenerator p1, final SerializerProvider p2) throws IOException, JsonGenerationException;
        
        @Override
        public final void serializeWithType(final T t, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
            typeSerializer.writeTypePrefixForArray(t, jsonGenerator);
            this.serializeContents(t, jsonGenerator, serializerProvider);
            typeSerializer.writeTypeSuffixForArray(t, jsonGenerator);
        }
    }
    
    @JacksonStdImpl
    public static final class BooleanArraySerializer extends ArraySerializerBase<boolean[]>
    {
        public BooleanArraySerializer() {
            super(boolean[].class, null, null);
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return this;
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            schemaNode.put("items", this.createSchemaNode("boolean"));
            return schemaNode;
        }
        
        public void serializeContents(final boolean[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            for (int i = 0; i < array.length; ++i) {
                jsonGenerator.writeBoolean(array[i]);
            }
        }
    }
    
    @JacksonStdImpl
    public static final class ByteArraySerializer extends SerializerBase<byte[]>
    {
        public ByteArraySerializer() {
            super(byte[].class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            schemaNode.put("items", this.createSchemaNode("string"));
            return schemaNode;
        }
        
        @Override
        public void serialize(final byte[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeBinary(array);
        }
        
        @Override
        public void serializeWithType(final byte[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
            typeSerializer.writeTypePrefixForScalar(array, jsonGenerator);
            jsonGenerator.writeBinary(array);
            typeSerializer.writeTypeSuffixForScalar(array, jsonGenerator);
        }
    }
    
    @JacksonStdImpl
    public static final class CharArraySerializer extends SerializerBase<char[]>
    {
        public CharArraySerializer() {
            super(char[].class);
        }
        
        private final void _writeArrayContents(final JsonGenerator jsonGenerator, final char[] array) throws IOException, JsonGenerationException {
            for (int i = 0; i < array.length; ++i) {
                jsonGenerator.writeString(array, i, 1);
            }
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            final ObjectNode schemaNode2 = this.createSchemaNode("string");
            schemaNode2.put("type", "string");
            schemaNode.put("items", schemaNode2);
            return schemaNode;
        }
        
        @Override
        public void serialize(final char[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                jsonGenerator.writeStartArray();
                this._writeArrayContents(jsonGenerator, array);
                jsonGenerator.writeEndArray();
                return;
            }
            jsonGenerator.writeString(array, 0, array.length);
        }
        
        @Override
        public void serializeWithType(final char[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                typeSerializer.writeTypePrefixForArray(array, jsonGenerator);
                this._writeArrayContents(jsonGenerator, array);
                typeSerializer.writeTypeSuffixForArray(array, jsonGenerator);
                return;
            }
            typeSerializer.writeTypePrefixForScalar(array, jsonGenerator);
            jsonGenerator.writeString(array, 0, array.length);
            typeSerializer.writeTypeSuffixForScalar(array, jsonGenerator);
        }
    }
    
    @JacksonStdImpl
    public static final class DoubleArraySerializer extends ArraySerializerBase<double[]>
    {
        public DoubleArraySerializer() {
            super(double[].class, null, null);
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return this;
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            schemaNode.put("items", this.createSchemaNode("number"));
            return schemaNode;
        }
        
        public void serializeContents(final double[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            for (int i = 0; i < array.length; ++i) {
                jsonGenerator.writeNumber(array[i]);
            }
        }
    }
    
    @JacksonStdImpl
    public static final class FloatArraySerializer extends ArraySerializerBase<float[]>
    {
        public FloatArraySerializer() {
            this((TypeSerializer)null);
        }
        
        public FloatArraySerializer(final TypeSerializer typeSerializer) {
            super(float[].class, typeSerializer, null);
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return new FloatArraySerializer(typeSerializer);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            schemaNode.put("items", this.createSchemaNode("number"));
            return schemaNode;
        }
        
        public void serializeContents(final float[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            for (int i = 0; i < array.length; ++i) {
                jsonGenerator.writeNumber(array[i]);
            }
        }
    }
    
    @JacksonStdImpl
    public static final class IntArraySerializer extends ArraySerializerBase<int[]>
    {
        public IntArraySerializer() {
            super(int[].class, null, null);
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return this;
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            schemaNode.put("items", this.createSchemaNode("integer"));
            return schemaNode;
        }
        
        public void serializeContents(final int[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            for (int i = 0; i < array.length; ++i) {
                jsonGenerator.writeNumber(array[i]);
            }
        }
    }
    
    @JacksonStdImpl
    public static final class LongArraySerializer extends ArraySerializerBase<long[]>
    {
        public LongArraySerializer() {
            this((TypeSerializer)null);
        }
        
        public LongArraySerializer(final TypeSerializer typeSerializer) {
            super(long[].class, typeSerializer, null);
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return new LongArraySerializer(typeSerializer);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            schemaNode.put("items", this.createSchemaNode("number", true));
            return schemaNode;
        }
        
        public void serializeContents(final long[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            for (int i = 0; i < array.length; ++i) {
                jsonGenerator.writeNumber(array[i]);
            }
        }
    }
    
    @JacksonStdImpl
    public static final class ShortArraySerializer extends ArraySerializerBase<short[]>
    {
        public ShortArraySerializer() {
            this((TypeSerializer)null);
        }
        
        public ShortArraySerializer(final TypeSerializer typeSerializer) {
            super(short[].class, typeSerializer, null);
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return new ShortArraySerializer(typeSerializer);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            schemaNode.put("items", this.createSchemaNode("integer"));
            return schemaNode;
        }
        
        public void serializeContents(final short[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            for (int i = 0; i < array.length; ++i) {
                jsonGenerator.writeNumber(array[i]);
            }
        }
    }
    
    @JacksonStdImpl
    public static final class StringArraySerializer extends ArraySerializerBase<String[]> implements ResolvableSerializer
    {
        protected JsonSerializer<Object> _elementSerializer;
        
        public StringArraySerializer(final BeanProperty beanProperty) {
            super(String[].class, null, beanProperty);
        }
        
        private void serializeContentsSlow(final String[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final JsonSerializer<Object> jsonSerializer) throws IOException, JsonGenerationException {
            for (int i = 0; i < array.length; ++i) {
                if (array[i] == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                }
                else {
                    jsonSerializer.serialize(array[i], jsonGenerator, serializerProvider);
                }
            }
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return this;
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            final ObjectNode schemaNode = this.createSchemaNode("array", true);
            schemaNode.put("items", this.createSchemaNode("string"));
            return schemaNode;
        }
        
        @Override
        public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
            final JsonSerializer<Object> valueSerializer = serializerProvider.findValueSerializer(String.class, this._property);
            if (valueSerializer != null && valueSerializer.getClass().getAnnotation(JacksonStdImpl.class) == null) {
                this._elementSerializer = valueSerializer;
            }
        }
        
        public void serializeContents(final String[] array, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            final int length = array.length;
            if (length != 0) {
                if (this._elementSerializer != null) {
                    this.serializeContentsSlow(array, jsonGenerator, serializerProvider, this._elementSerializer);
                    return;
                }
                for (int i = 0; i < length; ++i) {
                    if (array[i] == null) {
                        jsonGenerator.writeNull();
                    }
                    else {
                        jsonGenerator.writeString(array[i]);
                    }
                }
            }
        }
    }
}
