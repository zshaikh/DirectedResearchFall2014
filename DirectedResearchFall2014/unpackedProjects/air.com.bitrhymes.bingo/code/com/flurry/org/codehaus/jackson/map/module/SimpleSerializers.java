package com.flurry.org.codehaus.jackson.map.module;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;

public class SimpleSerializers extends Base
{
    protected HashMap<ClassKey, JsonSerializer<?>> _classMappings;
    protected HashMap<ClassKey, JsonSerializer<?>> _interfaceMappings;
    
    public SimpleSerializers() {
        super();
        this._classMappings = null;
        this._interfaceMappings = null;
    }
    
    private void _addSerializer(final Class<?> clazz, final JsonSerializer<?> jsonSerializer) {
        final ClassKey classKey = new ClassKey(clazz);
        if (clazz.isInterface()) {
            if (this._interfaceMappings == null) {
                this._interfaceMappings = new HashMap<ClassKey, JsonSerializer<?>>();
            }
            this._interfaceMappings.put(classKey, jsonSerializer);
            return;
        }
        if (this._classMappings == null) {
            this._classMappings = new HashMap<ClassKey, JsonSerializer<?>>();
        }
        this._classMappings.put(classKey, jsonSerializer);
    }
    
    protected JsonSerializer<?> _findInterfaceMapping(final Class<?> clazz, final ClassKey key) {
        for (final Class clazz2 : clazz.getInterfaces()) {
            key.reset(clazz2);
            final JsonSerializer<?> jsonSerializer = this._interfaceMappings.get(key);
            if (jsonSerializer != null) {
                return jsonSerializer;
            }
            final JsonSerializer<?> findInterfaceMapping = this._findInterfaceMapping(clazz2, key);
            if (findInterfaceMapping != null) {
                return findInterfaceMapping;
            }
        }
        return null;
    }
    
    public void addSerializer(final JsonSerializer<?> jsonSerializer) {
        final Class<?> handledType = jsonSerializer.handledType();
        if (handledType == null || handledType == Object.class) {
            throw new IllegalArgumentException("JsonSerializer of type " + jsonSerializer.getClass().getName() + " does not define valid handledType() -- must either register with method that takes type argument " + " or make serializer extend 'org.codehaus.jackson.map.ser.std.SerializerBase'");
        }
        this._addSerializer(handledType, jsonSerializer);
    }
    
    public <T> void addSerializer(final Class<? extends T> clazz, final JsonSerializer<T> jsonSerializer) {
        this._addSerializer(clazz, jsonSerializer);
    }
    
    @Override
    public JsonSerializer<?> findArraySerializer(final SerializationConfig serializationConfig, final ArrayType arrayType, final BeanDescription beanDescription, final BeanProperty beanProperty, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer) {
        return this.findSerializer(serializationConfig, arrayType, beanDescription, beanProperty);
    }
    
    @Override
    public JsonSerializer<?> findCollectionLikeSerializer(final SerializationConfig serializationConfig, final CollectionLikeType collectionLikeType, final BeanDescription beanDescription, final BeanProperty beanProperty, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer) {
        return this.findSerializer(serializationConfig, collectionLikeType, beanDescription, beanProperty);
    }
    
    @Override
    public JsonSerializer<?> findCollectionSerializer(final SerializationConfig serializationConfig, final CollectionType collectionType, final BeanDescription beanDescription, final BeanProperty beanProperty, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer) {
        return this.findSerializer(serializationConfig, collectionType, beanDescription, beanProperty);
    }
    
    @Override
    public JsonSerializer<?> findMapLikeSerializer(final SerializationConfig serializationConfig, final MapLikeType mapLikeType, final BeanDescription beanDescription, final BeanProperty beanProperty, final JsonSerializer<Object> jsonSerializer, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer2) {
        return this.findSerializer(serializationConfig, mapLikeType, beanDescription, beanProperty);
    }
    
    @Override
    public JsonSerializer<?> findMapSerializer(final SerializationConfig serializationConfig, final MapType mapType, final BeanDescription beanDescription, final BeanProperty beanProperty, final JsonSerializer<Object> jsonSerializer, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer2) {
        return this.findSerializer(serializationConfig, mapType, beanDescription, beanProperty);
    }
    
    @Override
    public JsonSerializer<?> findSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BeanDescription beanDescription, final BeanProperty beanProperty) {
        Class<?> clazz = javaType.getRawClass();
        final ClassKey key = new ClassKey(clazz);
        if (clazz.isInterface()) {
            if (this._interfaceMappings != null) {
                final JsonSerializer<?> jsonSerializer = this._interfaceMappings.get(key);
                if (jsonSerializer != null) {
                    return jsonSerializer;
                }
            }
        }
        else if (this._classMappings != null) {
            final JsonSerializer<?> jsonSerializer2 = this._classMappings.get(key);
            if (jsonSerializer2 != null) {
                return jsonSerializer2;
            }
            for (Class<?> superclass = clazz; superclass != null; superclass = superclass.getSuperclass()) {
                key.reset(superclass);
                final JsonSerializer<?> jsonSerializer3 = this._classMappings.get(key);
                if (jsonSerializer3 != null) {
                    return jsonSerializer3;
                }
            }
        }
        if (this._interfaceMappings != null) {
            final JsonSerializer<?> findInterfaceMapping = this._findInterfaceMapping(clazz, key);
            if (findInterfaceMapping != null) {
                return findInterfaceMapping;
            }
            if (!clazz.isInterface()) {
                JsonSerializer<?> findInterfaceMapping2;
                do {
                    clazz = clazz.getSuperclass();
                    if (clazz == null) {
                        return null;
                    }
                    findInterfaceMapping2 = this._findInterfaceMapping(clazz, key);
                } while (findInterfaceMapping2 == null);
                return findInterfaceMapping2;
            }
        }
        return null;
    }
}
