package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.ser.impl.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.schema.*;
import com.flurry.org.codehaus.jackson.node.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class AsArraySerializerBase<T> extends ContainerSerializerBase<T> implements ResolvableSerializer
{
    protected PropertySerializerMap _dynamicSerializers;
    protected JsonSerializer<Object> _elementSerializer;
    protected final JavaType _elementType;
    protected final BeanProperty _property;
    protected final boolean _staticTyping;
    protected final TypeSerializer _valueTypeSerializer;
    
    protected AsArraySerializerBase(final Class<?> clazz, final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
        this(clazz, javaType, b, typeSerializer, beanProperty, null);
    }
    
    protected AsArraySerializerBase(final Class<?> clazz, final JavaType elementType, final boolean b, final TypeSerializer valueTypeSerializer, final BeanProperty property, final JsonSerializer<Object> elementSerializer) {
        super(clazz, false);
        this._elementType = elementType;
        this._staticTyping = (b || (elementType != null && elementType.isFinal()));
        this._valueTypeSerializer = valueTypeSerializer;
        this._property = property;
        this._elementSerializer = elementSerializer;
        this._dynamicSerializers = PropertySerializerMap.emptyMap();
    }
    
    protected final JsonSerializer<Object> _findAndAddDynamic(final PropertySerializerMap propertySerializerMap, final JavaType javaType, final SerializerProvider serializerProvider) throws JsonMappingException {
        final PropertySerializerMap.SerializerAndMapResult andAddSerializer = propertySerializerMap.findAndAddSerializer(javaType, serializerProvider, this._property);
        if (propertySerializerMap != andAddSerializer.map) {
            this._dynamicSerializers = andAddSerializer.map;
        }
        return andAddSerializer.serializer;
    }
    
    protected final JsonSerializer<Object> _findAndAddDynamic(final PropertySerializerMap propertySerializerMap, final Class<?> clazz, final SerializerProvider serializerProvider) throws JsonMappingException {
        final PropertySerializerMap.SerializerAndMapResult andAddSerializer = propertySerializerMap.findAndAddSerializer(clazz, serializerProvider, this._property);
        if (propertySerializerMap != andAddSerializer.map) {
            this._dynamicSerializers = andAddSerializer.map;
        }
        return andAddSerializer.serializer;
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        final ObjectNode schemaNode = this.createSchemaNode("array", true);
        JavaType javaType = null;
        if (type != null) {
            javaType = serializerProvider.constructType(type).getContentType();
            if (javaType == null && type instanceof ParameterizedType) {
                final Type[] actualTypeArguments = ((ParameterizedType)type).getActualTypeArguments();
                if (actualTypeArguments.length == 1) {
                    javaType = serializerProvider.constructType(actualTypeArguments[0]);
                }
            }
        }
        if (javaType == null && this._elementType != null) {
            javaType = this._elementType;
        }
        if (javaType != null) {
            final Class<?> rawClass = javaType.getRawClass();
            JsonNode jsonNode = null;
            if (rawClass != Object.class) {
                final JsonSerializer<Object> valueSerializer = serializerProvider.findValueSerializer(javaType, this._property);
                final boolean b = valueSerializer instanceof SchemaAware;
                jsonNode = null;
                if (b) {
                    jsonNode = ((SchemaAware)valueSerializer).getSchema(serializerProvider, null);
                }
            }
            if (jsonNode == null) {
                jsonNode = JsonSchema.getDefaultSchemaNode();
            }
            schemaNode.put("items", jsonNode);
        }
        return schemaNode;
    }
    
    @Override
    public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
        if (this._staticTyping && this._elementType != null && this._elementSerializer == null) {
            this._elementSerializer = serializerProvider.findValueSerializer(this._elementType, this._property);
        }
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
