package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.lang.reflect.*;
import java.io.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.schema.*;
import com.flurry.org.codehaus.jackson.map.ser.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class SerializerProvider
{
    protected static final JavaType TYPE_OBJECT;
    protected final SerializationConfig _config;
    protected final Class<?> _serializationView;
    
    static {
        TYPE_OBJECT = TypeFactory.defaultInstance().uncheckedSimpleType(Object.class);
    }
    
    protected SerializerProvider(final SerializationConfig config) {
        super();
        this._config = config;
        Class<?> serializationView;
        if (config == null) {
            serializationView = null;
        }
        else {
            serializationView = this._config.getSerializationView();
        }
        this._serializationView = serializationView;
    }
    
    public abstract int cachedSerializersCount();
    
    public JavaType constructSpecializedType(final JavaType javaType, final Class<?> clazz) {
        return this._config.constructSpecializedType(javaType, clazz);
    }
    
    public JavaType constructType(final Type type) {
        return this._config.getTypeFactory().constructType(type);
    }
    
    public abstract void defaultSerializeDateKey(final long p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public abstract void defaultSerializeDateKey(final Date p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public abstract void defaultSerializeDateValue(final long p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public abstract void defaultSerializeDateValue(final Date p0, final JsonGenerator p1) throws IOException, JsonProcessingException;
    
    public final void defaultSerializeField(final String s, final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        jsonGenerator.writeFieldName(s);
        if (o == null) {
            this.getNullValueSerializer().serialize(null, jsonGenerator, this);
            return;
        }
        this.findTypedValueSerializer(o.getClass(), true, null).serialize(o, jsonGenerator, this);
    }
    
    public final void defaultSerializeNull(final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        this.getNullValueSerializer().serialize(null, jsonGenerator, this);
    }
    
    public final void defaultSerializeValue(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        if (o == null) {
            this.getNullValueSerializer().serialize(null, jsonGenerator, this);
            return;
        }
        this.findTypedValueSerializer(o.getClass(), true, null).serialize(o, jsonGenerator, this);
    }
    
    public abstract JsonSerializer<Object> findKeySerializer(final JavaType p0, final BeanProperty p1) throws JsonMappingException;
    
    @Deprecated
    public final JsonSerializer<Object> findTypedValueSerializer(final JavaType javaType, final boolean b) throws JsonMappingException {
        return this.findTypedValueSerializer(javaType, b, null);
    }
    
    public abstract JsonSerializer<Object> findTypedValueSerializer(final JavaType p0, final boolean p1, final BeanProperty p2) throws JsonMappingException;
    
    @Deprecated
    public final JsonSerializer<Object> findTypedValueSerializer(final Class<?> clazz, final boolean b) throws JsonMappingException {
        return this.findTypedValueSerializer(clazz, b, null);
    }
    
    public abstract JsonSerializer<Object> findTypedValueSerializer(final Class<?> p0, final boolean p1, final BeanProperty p2) throws JsonMappingException;
    
    @Deprecated
    public final JsonSerializer<Object> findValueSerializer(final JavaType javaType) throws JsonMappingException {
        return this.findValueSerializer(javaType, null);
    }
    
    public abstract JsonSerializer<Object> findValueSerializer(final JavaType p0, final BeanProperty p1) throws JsonMappingException;
    
    @Deprecated
    public final JsonSerializer<Object> findValueSerializer(final Class<?> clazz) throws JsonMappingException {
        return this.findValueSerializer(clazz, null);
    }
    
    public abstract JsonSerializer<Object> findValueSerializer(final Class<?> p0, final BeanProperty p1) throws JsonMappingException;
    
    public abstract void flushCachedSerializers();
    
    public abstract JsonSchema generateJsonSchema(final Class<?> p0, final SerializationConfig p1, final SerializerFactory p2) throws JsonMappingException;
    
    public final SerializationConfig getConfig() {
        return this._config;
    }
    
    public final FilterProvider getFilterProvider() {
        return this._config.getFilterProvider();
    }
    
    @Deprecated
    public final JsonSerializer<Object> getKeySerializer() throws JsonMappingException {
        return this.findKeySerializer(SerializerProvider.TYPE_OBJECT, null);
    }
    
    @Deprecated
    public final JsonSerializer<Object> getKeySerializer(final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        return this.findKeySerializer(javaType, beanProperty);
    }
    
    public abstract JsonSerializer<Object> getNullKeySerializer();
    
    public abstract JsonSerializer<Object> getNullValueSerializer();
    
    public final Class<?> getSerializationView() {
        return this._serializationView;
    }
    
    public abstract JsonSerializer<Object> getUnknownTypeSerializer(final Class<?> p0);
    
    public abstract boolean hasSerializerFor(final SerializationConfig p0, final Class<?> p1, final SerializerFactory p2);
    
    public final boolean isEnabled(final SerializationConfig.Feature feature) {
        return this._config.isEnabled(feature);
    }
    
    public abstract void serializeValue(final SerializationConfig p0, final JsonGenerator p1, final Object p2, final SerializerFactory p3) throws IOException, JsonGenerationException;
    
    public abstract void serializeValue(final SerializationConfig p0, final JsonGenerator p1, final Object p2, final JavaType p3, final SerializerFactory p4) throws IOException, JsonGenerationException;
    
    public abstract void setDefaultKeySerializer(final JsonSerializer<Object> p0);
    
    public abstract void setNullKeySerializer(final JsonSerializer<Object> p0);
    
    public abstract void setNullValueSerializer(final JsonSerializer<Object> p0);
}
