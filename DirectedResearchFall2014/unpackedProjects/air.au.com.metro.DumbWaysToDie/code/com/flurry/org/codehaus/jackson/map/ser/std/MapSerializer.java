package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.ser.impl.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class MapSerializer extends ContainerSerializerBase<Map<?, ?>> implements ResolvableSerializer
{
    protected static final JavaType UNSPECIFIED_TYPE;
    protected PropertySerializerMap _dynamicValueSerializers;
    protected final HashSet<String> _ignoredEntries;
    protected JsonSerializer<Object> _keySerializer;
    protected final JavaType _keyType;
    protected final BeanProperty _property;
    protected JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final boolean _valueTypeIsStatic;
    protected final TypeSerializer _valueTypeSerializer;
    
    static {
        UNSPECIFIED_TYPE = TypeFactory.unknownType();
    }
    
    protected MapSerializer() {
        this(null, null, null, false, null, null, null, null);
    }
    
    protected MapSerializer(final HashSet<String> ignoredEntries, final JavaType keyType, final JavaType valueType, final boolean valueTypeIsStatic, final TypeSerializer valueTypeSerializer, final JsonSerializer<Object> keySerializer, final JsonSerializer<Object> valueSerializer, final BeanProperty property) {
        super(Map.class, false);
        this._property = property;
        this._ignoredEntries = ignoredEntries;
        this._keyType = keyType;
        this._valueType = valueType;
        this._valueTypeIsStatic = valueTypeIsStatic;
        this._valueTypeSerializer = valueTypeSerializer;
        this._keySerializer = keySerializer;
        this._valueSerializer = valueSerializer;
        this._dynamicValueSerializers = PropertySerializerMap.emptyMap();
    }
    
    @Deprecated
    public static MapSerializer construct(final String[] array, final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
        return construct(array, javaType, b, typeSerializer, beanProperty, null, null);
    }
    
    public static MapSerializer construct(final String[] array, final JavaType javaType, boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty, final JsonSerializer<Object> jsonSerializer, final JsonSerializer<Object> jsonSerializer2) {
        final HashSet<String> set = toSet(array);
        JavaType javaType2;
        JavaType contentType;
        if (javaType == null) {
            contentType = (javaType2 = MapSerializer.UNSPECIFIED_TYPE);
        }
        else {
            javaType2 = javaType.getKeyType();
            contentType = javaType.getContentType();
        }
        if (!b) {
            if (contentType != null && contentType.isFinal()) {
                b = true;
            }
            else {
                b = false;
            }
        }
        return new MapSerializer(set, javaType2, contentType, b, typeSerializer, jsonSerializer, jsonSerializer2, beanProperty);
    }
    
    private static HashSet<String> toSet(final String[] array) {
        if (array == null || array.length == 0) {
            return null;
        }
        final HashSet<String> set = new HashSet<String>(array.length);
        for (int length = array.length, i = 0; i < length; ++i) {
            set.add(array[i]);
        }
        return set;
    }
    
    protected final JsonSerializer<Object> _findAndAddDynamic(final PropertySerializerMap propertySerializerMap, final JavaType javaType, final SerializerProvider serializerProvider) throws JsonMappingException {
        final PropertySerializerMap.SerializerAndMapResult andAddSerializer = propertySerializerMap.findAndAddSerializer(javaType, serializerProvider, this._property);
        if (propertySerializerMap != andAddSerializer.map) {
            this._dynamicValueSerializers = andAddSerializer.map;
        }
        return andAddSerializer.serializer;
    }
    
    protected final JsonSerializer<Object> _findAndAddDynamic(final PropertySerializerMap propertySerializerMap, final Class<?> clazz, final SerializerProvider serializerProvider) throws JsonMappingException {
        final PropertySerializerMap.SerializerAndMapResult andAddSerializer = propertySerializerMap.findAndAddSerializer(clazz, serializerProvider, this._property);
        if (propertySerializerMap != andAddSerializer.map) {
            this._dynamicValueSerializers = andAddSerializer.map;
        }
        return andAddSerializer.serializer;
    }
    
    @Override
    public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
        final MapSerializer mapSerializer = new MapSerializer(this._ignoredEntries, this._keyType, this._valueType, this._valueTypeIsStatic, typeSerializer, this._keySerializer, this._valueSerializer, this._property);
        if (this._valueSerializer != null) {
            mapSerializer._valueSerializer = this._valueSerializer;
        }
        return mapSerializer;
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
        return this.createSchemaNode("object", true);
    }
    
    @Override
    public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
        if (this._valueTypeIsStatic && this._valueSerializer == null) {
            this._valueSerializer = serializerProvider.findValueSerializer(this._valueType, this._property);
        }
        if (this._keySerializer == null) {
            this._keySerializer = serializerProvider.findKeySerializer(this._keyType, this._property);
        }
    }
    
    @Override
    public void serialize(final Map<?, ?> map, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeStartObject();
        if (!map.isEmpty()) {
            if (this._valueSerializer != null) {
                this.serializeFieldsUsing(map, jsonGenerator, serializerProvider, this._valueSerializer);
            }
            else {
                this.serializeFields(map, jsonGenerator, serializerProvider);
            }
        }
        jsonGenerator.writeEndObject();
    }
    
    public void serializeFields(final Map<?, ?> map, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (this._valueTypeSerializer != null) {
            this.serializeTypedFields(map, jsonGenerator, serializerProvider);
        }
        else {
            final JsonSerializer<Object> keySerializer = this._keySerializer;
            final HashSet<String> ignoredEntries = this._ignoredEntries;
            final boolean b = !serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_NULL_MAP_VALUES);
            PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
            for (final Map.Entry<K, Object> entry : map.entrySet()) {
                final Object value = entry.getValue();
                final K key = entry.getKey();
                if (key == null) {
                    serializerProvider.getNullKeySerializer().serialize(null, jsonGenerator, serializerProvider);
                }
                else {
                    if ((b && value == null) || (ignoredEntries != null && ignoredEntries.contains(key))) {
                        continue;
                    }
                    keySerializer.serialize(key, jsonGenerator, serializerProvider);
                }
                if (value == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                }
                else {
                    final Class<?> class1 = value.getClass();
                    JsonSerializer<Object> jsonSerializer = propertySerializerMap.serializerFor(class1);
                    if (jsonSerializer == null) {
                        if (this._valueType.hasGenericTypes()) {
                            jsonSerializer = this._findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._valueType, class1), serializerProvider);
                        }
                        else {
                            jsonSerializer = this._findAndAddDynamic(propertySerializerMap, class1, serializerProvider);
                        }
                        propertySerializerMap = this._dynamicValueSerializers;
                    }
                    try {
                        jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(serializerProvider, ex, map, "" + key);
                    }
                }
            }
        }
    }
    
    protected void serializeFieldsUsing(final Map<?, ?> map, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final JsonSerializer<Object> jsonSerializer) throws IOException, JsonGenerationException {
        final JsonSerializer<Object> keySerializer = this._keySerializer;
        final HashSet<String> ignoredEntries = this._ignoredEntries;
        final TypeSerializer valueTypeSerializer = this._valueTypeSerializer;
        final boolean b = !serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_NULL_MAP_VALUES);
        for (final Map.Entry<K, Object> entry : map.entrySet()) {
            final Object value = entry.getValue();
            final K key = entry.getKey();
            if (key == null) {
                serializerProvider.getNullKeySerializer().serialize(null, jsonGenerator, serializerProvider);
            }
            else {
                if ((b && value == null) || (ignoredEntries != null && ignoredEntries.contains(key))) {
                    continue;
                }
                keySerializer.serialize(key, jsonGenerator, serializerProvider);
            }
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            }
            else if (valueTypeSerializer == null) {
                try {
                    jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                }
                catch (Exception ex) {
                    this.wrapAndThrow(serializerProvider, ex, map, "" + key);
                }
            }
            else {
                jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, valueTypeSerializer);
            }
        }
    }
    
    protected void serializeTypedFields(final Map<?, ?> map, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        final JsonSerializer<Object> keySerializer = this._keySerializer;
        JsonSerializer<Object> valueSerializer = null;
        Class<?> clazz = null;
        final HashSet<String> ignoredEntries = this._ignoredEntries;
        final boolean b = !serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_NULL_MAP_VALUES);
        for (final Map.Entry<K, Object> entry : map.entrySet()) {
            final Object value = entry.getValue();
            final K key = entry.getKey();
            if (key == null) {
                serializerProvider.getNullKeySerializer().serialize(null, jsonGenerator, serializerProvider);
            }
            else {
                if ((b && value == null) || (ignoredEntries != null && ignoredEntries.contains(key))) {
                    continue;
                }
                keySerializer.serialize(key, jsonGenerator, serializerProvider);
            }
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            }
            else {
                final Class<?> class1 = value.getClass();
                JsonSerializer<Object> jsonSerializer;
                if (class1 == clazz) {
                    jsonSerializer = valueSerializer;
                }
                else {
                    jsonSerializer = (valueSerializer = serializerProvider.findValueSerializer(class1, this._property));
                    clazz = class1;
                }
                try {
                    jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
                }
                catch (Exception ex) {
                    this.wrapAndThrow(serializerProvider, ex, map, "" + key);
                }
            }
        }
    }
    
    @Override
    public void serializeWithType(final Map<?, ?> map, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForObject(map, jsonGenerator);
        if (!map.isEmpty()) {
            if (this._valueSerializer != null) {
                this.serializeFieldsUsing(map, jsonGenerator, serializerProvider, this._valueSerializer);
            }
            else {
                this.serializeFields(map, jsonGenerator, serializerProvider);
            }
        }
        typeSerializer.writeTypeSuffixForObject(map, jsonGenerator);
    }
}
