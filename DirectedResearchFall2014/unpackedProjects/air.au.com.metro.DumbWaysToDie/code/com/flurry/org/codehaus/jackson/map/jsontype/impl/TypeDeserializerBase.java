package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public abstract class TypeDeserializerBase extends TypeDeserializer
{
    protected final JavaType _baseType;
    protected final JavaType _defaultImpl;
    protected JsonDeserializer<Object> _defaultImplDeserializer;
    protected final HashMap<String, JsonDeserializer<Object>> _deserializers;
    protected final TypeIdResolver _idResolver;
    protected final BeanProperty _property;
    
    protected TypeDeserializerBase(final JavaType javaType, final TypeIdResolver typeIdResolver, final BeanProperty beanProperty) {
        this(javaType, typeIdResolver, beanProperty, null);
    }
    
    protected TypeDeserializerBase(final JavaType baseType, final TypeIdResolver idResolver, final BeanProperty property, final Class<?> clazz) {
        super();
        this._baseType = baseType;
        this._idResolver = idResolver;
        this._property = property;
        this._deserializers = new HashMap<String, JsonDeserializer<Object>>();
        if (clazz == null) {
            this._defaultImpl = null;
            return;
        }
        this._defaultImpl = baseType.forcedNarrowBy(clazz);
    }
    
    protected final JsonDeserializer<Object> _findDefaultImplDeserializer(final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._defaultImpl == null) {
            return null;
        }
        synchronized (this._defaultImpl) {
            if (this._defaultImplDeserializer == null) {
                this._defaultImplDeserializer = deserializationContext.getDeserializerProvider().findValueDeserializer(deserializationContext.getConfig(), this._defaultImpl, this._property);
            }
            return this._defaultImplDeserializer;
        }
    }
    
    protected final JsonDeserializer<Object> _findDeserializer(final DeserializationContext deserializationContext, final String s) throws IOException, JsonProcessingException {
        // monitorexit(hashMap)
        while (true) {
            JavaType javaType = null;
            Label_0089: {
                JsonDeserializer<Object> value = null;
                Label_0084: {
                    synchronized (this._deserializers) {
                        value = this._deserializers.get(s);
                        if (value != null) {
                            break Label_0084;
                        }
                        javaType = this._idResolver.typeFromId(s);
                        if (javaType != null) {
                            break Label_0089;
                        }
                        if (this._defaultImpl == null) {
                            throw deserializationContext.unknownTypeException(this._baseType, s);
                        }
                    }
                    value = this._findDefaultImplDeserializer(deserializationContext);
                    this._deserializers.put(s, value);
                }
                return value;
            }
            if (this._baseType != null && this._baseType.getClass() == javaType.getClass()) {
                javaType = this._baseType.narrowBy(javaType.getRawClass());
            }
            JsonDeserializer<Object> value = deserializationContext.getDeserializerProvider().findValueDeserializer(deserializationContext.getConfig(), javaType, this._property);
            continue;
        }
    }
    
    public String baseTypeName() {
        return this._baseType.getRawClass().getName();
    }
    
    @Override
    public Class<?> getDefaultImpl() {
        if (this._defaultImpl == null) {
            return null;
        }
        return this._defaultImpl.getRawClass();
    }
    
    @Override
    public String getPropertyName() {
        return null;
    }
    
    @Override
    public TypeIdResolver getTypeIdResolver() {
        return this._idResolver;
    }
    
    @Override
    public abstract JsonTypeInfo.As getTypeInclusion();
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append('[').append(this.getClass().getName());
        sb.append("; base-type:").append(this._baseType);
        sb.append("; id-resolver: ").append(this._idResolver);
        sb.append(']');
        return sb.toString();
    }
}
