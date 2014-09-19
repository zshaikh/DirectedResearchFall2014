package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.annotation.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.ser.impl.*;

public class BeanPropertyWriter implements BeanProperty
{
    protected final Method _accessorMethod;
    protected final JavaType _cfgSerializationType;
    protected final Annotations _contextAnnotations;
    protected final JavaType _declaredType;
    protected PropertySerializerMap _dynamicSerializers;
    protected final Field _field;
    protected Class<?>[] _includeInViews;
    protected HashMap<Object, Object> _internalSettings;
    protected final AnnotatedMember _member;
    protected final SerializedString _name;
    protected JavaType _nonTrivialBaseType;
    protected final JsonSerializer<Object> _serializer;
    protected final boolean _suppressNulls;
    protected final Object _suppressableValue;
    protected TypeSerializer _typeSerializer;
    
    public BeanPropertyWriter(final AnnotatedMember member, final Annotations contextAnnotations, final SerializedString name, final JavaType declaredType, final JsonSerializer<Object> serializer, final TypeSerializer typeSerializer, final JavaType cfgSerializationType, final Method accessorMethod, final Field field, final boolean suppressNulls, final Object suppressableValue) {
        super();
        this._member = member;
        this._contextAnnotations = contextAnnotations;
        this._name = name;
        this._declaredType = declaredType;
        this._serializer = serializer;
        PropertySerializerMap emptyMap;
        if (serializer == null) {
            emptyMap = PropertySerializerMap.emptyMap();
        }
        else {
            emptyMap = null;
        }
        this._dynamicSerializers = emptyMap;
        this._typeSerializer = typeSerializer;
        this._cfgSerializationType = cfgSerializationType;
        this._accessorMethod = accessorMethod;
        this._field = field;
        this._suppressNulls = suppressNulls;
        this._suppressableValue = suppressableValue;
    }
    
    public BeanPropertyWriter(final AnnotatedMember annotatedMember, final Annotations annotations, final String s, final JavaType javaType, final JsonSerializer<Object> jsonSerializer, final TypeSerializer typeSerializer, final JavaType javaType2, final Method method, final Field field, final boolean b, final Object o) {
        this(annotatedMember, annotations, new SerializedString(s), javaType, jsonSerializer, typeSerializer, javaType2, method, field, b, o);
    }
    
    protected BeanPropertyWriter(final BeanPropertyWriter beanPropertyWriter) {
        this(beanPropertyWriter, beanPropertyWriter._serializer);
    }
    
    protected BeanPropertyWriter(final BeanPropertyWriter beanPropertyWriter, final JsonSerializer<Object> serializer) {
        super();
        this._serializer = serializer;
        this._member = beanPropertyWriter._member;
        this._contextAnnotations = beanPropertyWriter._contextAnnotations;
        this._declaredType = beanPropertyWriter._declaredType;
        this._accessorMethod = beanPropertyWriter._accessorMethod;
        this._field = beanPropertyWriter._field;
        if (beanPropertyWriter._internalSettings != null) {
            this._internalSettings = new HashMap<Object, Object>(beanPropertyWriter._internalSettings);
        }
        this._name = beanPropertyWriter._name;
        this._cfgSerializationType = beanPropertyWriter._cfgSerializationType;
        this._dynamicSerializers = beanPropertyWriter._dynamicSerializers;
        this._suppressNulls = beanPropertyWriter._suppressNulls;
        this._suppressableValue = beanPropertyWriter._suppressableValue;
        this._includeInViews = beanPropertyWriter._includeInViews;
        this._typeSerializer = beanPropertyWriter._typeSerializer;
        this._nonTrivialBaseType = beanPropertyWriter._nonTrivialBaseType;
    }
    
    protected JsonSerializer<Object> _findAndAddDynamic(final PropertySerializerMap propertySerializerMap, final Class<?> clazz, final SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult serializerAndMapResult;
        if (this._nonTrivialBaseType != null) {
            serializerAndMapResult = propertySerializerMap.findAndAddSerializer(serializerProvider.constructSpecializedType(this._nonTrivialBaseType, clazz), serializerProvider, this);
        }
        else {
            serializerAndMapResult = propertySerializerMap.findAndAddSerializer(clazz, serializerProvider, this);
        }
        if (propertySerializerMap != serializerAndMapResult.map) {
            this._dynamicSerializers = serializerAndMapResult.map;
        }
        return serializerAndMapResult.serializer;
    }
    
    protected void _reportSelfReference(final Object o) throws JsonMappingException {
        throw new JsonMappingException("Direct self-reference leading to cycle");
    }
    
    public final Object get(final Object o) throws Exception {
        if (this._accessorMethod != null) {
            return this._accessorMethod.invoke(o, new Object[0]);
        }
        return this._field.get(o);
    }
    
    @Override
    public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
        return this._member.getAnnotation(clazz);
    }
    
    @Override
    public <A extends Annotation> A getContextAnnotation(final Class<A> clazz) {
        return this._contextAnnotations.get(clazz);
    }
    
    public Type getGenericPropertyType() {
        if (this._accessorMethod != null) {
            return this._accessorMethod.getGenericReturnType();
        }
        return this._field.getGenericType();
    }
    
    public Object getInternalSetting(final Object key) {
        if (this._internalSettings == null) {
            return null;
        }
        return this._internalSettings.get(key);
    }
    
    @Override
    public AnnotatedMember getMember() {
        return this._member;
    }
    
    @Override
    public String getName() {
        return this._name.getValue();
    }
    
    public Class<?> getPropertyType() {
        if (this._accessorMethod != null) {
            return this._accessorMethod.getReturnType();
        }
        return this._field.getType();
    }
    
    public Class<?> getRawSerializationType() {
        if (this._cfgSerializationType == null) {
            return null;
        }
        return this._cfgSerializationType.getRawClass();
    }
    
    public JavaType getSerializationType() {
        return this._cfgSerializationType;
    }
    
    public SerializedString getSerializedName() {
        return this._name;
    }
    
    public JsonSerializer<Object> getSerializer() {
        return this._serializer;
    }
    
    @Override
    public JavaType getType() {
        return this._declaredType;
    }
    
    public Class<?>[] getViews() {
        return this._includeInViews;
    }
    
    public boolean hasSerializer() {
        return this._serializer != null;
    }
    
    public Object removeInternalSetting(final Object key) {
        final HashMap<Object, Object> internalSettings = this._internalSettings;
        Object remove = null;
        if (internalSettings != null) {
            remove = this._internalSettings.remove(key);
            if (this._internalSettings.size() == 0) {
                this._internalSettings = null;
            }
        }
        return remove;
    }
    
    public void serializeAsField(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws Exception {
        final Object value = this.get(o);
        if (value == null) {
            if (!this._suppressNulls) {
                jsonGenerator.writeFieldName(this._name);
                serializerProvider.defaultSerializeNull(jsonGenerator);
            }
        }
        else {
            if (value == o) {
                this._reportSelfReference(o);
            }
            if (this._suppressableValue == null || !this._suppressableValue.equals(value)) {
                JsonSerializer<Object> jsonSerializer = this._serializer;
                if (jsonSerializer == null) {
                    final Class<?> class1 = value.getClass();
                    final PropertySerializerMap dynamicSerializers = this._dynamicSerializers;
                    jsonSerializer = dynamicSerializers.serializerFor(class1);
                    if (jsonSerializer == null) {
                        jsonSerializer = this._findAndAddDynamic(dynamicSerializers, class1, serializerProvider);
                    }
                }
                jsonGenerator.writeFieldName(this._name);
                if (this._typeSerializer == null) {
                    jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                    return;
                }
                jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, this._typeSerializer);
            }
        }
    }
    
    public Object setInternalSetting(final Object key, final Object value) {
        if (this._internalSettings == null) {
            this._internalSettings = new HashMap<Object, Object>();
        }
        return this._internalSettings.put(key, value);
    }
    
    public void setNonTrivialBaseType(final JavaType nonTrivialBaseType) {
        this._nonTrivialBaseType = nonTrivialBaseType;
    }
    
    public void setViews(final Class<?>[] includeInViews) {
        this._includeInViews = includeInViews;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(40);
        sb.append("property '").append(this.getName()).append("' (");
        if (this._accessorMethod != null) {
            sb.append("via method ").append(this._accessorMethod.getDeclaringClass().getName()).append("#").append(this._accessorMethod.getName());
        }
        else {
            sb.append("field \"").append(this._field.getDeclaringClass().getName()).append("#").append(this._field.getName());
        }
        if (this._serializer == null) {
            sb.append(", no static serializer");
        }
        else {
            sb.append(", static serializer of type " + this._serializer.getClass().getName());
        }
        sb.append(')');
        return sb.toString();
    }
    
    public BeanPropertyWriter unwrappingWriter() {
        return new UnwrappingBeanPropertyWriter(this);
    }
    
    public BeanPropertyWriter withSerializer(final JsonSerializer<Object> jsonSerializer) {
        if (this.getClass() != BeanPropertyWriter.class) {
            throw new IllegalStateException("BeanPropertyWriter sub-class does not override 'withSerializer()'; needs to!");
        }
        return new BeanPropertyWriter(this, jsonSerializer);
    }
}
