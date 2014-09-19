package com.flurry.org.codehaus.jackson.map.ser;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;

public class CustomSerializerFactory extends BeanSerializerFactory
{
    protected HashMap<ClassKey, JsonSerializer<?>> _directClassMappings;
    protected JsonSerializer<?> _enumSerializerOverride;
    protected HashMap<ClassKey, JsonSerializer<?>> _interfaceMappings;
    protected HashMap<ClassKey, JsonSerializer<?>> _transitiveClassMappings;
    
    public CustomSerializerFactory() {
        this(null);
    }
    
    public CustomSerializerFactory(final Config config) {
        super(config);
        this._directClassMappings = null;
        this._transitiveClassMappings = null;
        this._interfaceMappings = null;
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
    
    public <T> void addGenericMapping(final Class<? extends T> clazz, final JsonSerializer<T> jsonSerializer) {
        final ClassKey classKey = new ClassKey(clazz);
        if (clazz.isInterface()) {
            if (this._interfaceMappings == null) {
                this._interfaceMappings = new HashMap<ClassKey, JsonSerializer<?>>();
            }
            this._interfaceMappings.put(classKey, jsonSerializer);
            return;
        }
        if (this._transitiveClassMappings == null) {
            this._transitiveClassMappings = new HashMap<ClassKey, JsonSerializer<?>>();
        }
        this._transitiveClassMappings.put(classKey, jsonSerializer);
    }
    
    public <T> void addSpecificMapping(final Class<? extends T> clazz, final JsonSerializer<T> value) {
        final ClassKey key = new ClassKey(clazz);
        if (clazz.isInterface()) {
            throw new IllegalArgumentException("Can not add specific mapping for an interface (" + clazz.getName() + ")");
        }
        if (Modifier.isAbstract(clazz.getModifiers())) {
            throw new IllegalArgumentException("Can not add specific mapping for an abstract class (" + clazz.getName() + ")");
        }
        if (this._directClassMappings == null) {
            this._directClassMappings = new HashMap<ClassKey, JsonSerializer<?>>();
        }
        this._directClassMappings.put(key, value);
    }
    
    @Override
    public JsonSerializer<Object> createSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final JsonSerializer<?> customSerializer = this.findCustomSerializer(javaType.getRawClass(), serializationConfig);
        if (customSerializer != null) {
            return (JsonSerializer<Object>)customSerializer;
        }
        return super.createSerializer(serializationConfig, javaType, beanProperty);
    }
    
    protected JsonSerializer<?> findCustomSerializer(final Class<?> clazz, final SerializationConfig serializationConfig) {
        final ClassKey key = new ClassKey(clazz);
        if (this._directClassMappings != null) {
            final JsonSerializer<?> jsonSerializer = this._directClassMappings.get(key);
            if (jsonSerializer != null) {
                return jsonSerializer;
            }
        }
        if (clazz.isEnum() && this._enumSerializerOverride != null) {
            return this._enumSerializerOverride;
        }
        if (this._transitiveClassMappings != null) {
            for (Class<?> superclass = clazz; superclass != null; superclass = superclass.getSuperclass()) {
                key.reset(superclass);
                final JsonSerializer<?> jsonSerializer2 = this._transitiveClassMappings.get(key);
                if (jsonSerializer2 != null) {
                    return jsonSerializer2;
                }
            }
        }
        if (this._interfaceMappings != null) {
            key.reset(clazz);
            final JsonSerializer<?> jsonSerializer3 = this._interfaceMappings.get(key);
            if (jsonSerializer3 != null) {
                return jsonSerializer3;
            }
            for (Class<?> superclass2 = clazz; superclass2 != null; superclass2 = superclass2.getSuperclass()) {
                final JsonSerializer<?> findInterfaceMapping = this._findInterfaceMapping(superclass2, key);
                if (findInterfaceMapping != null) {
                    return findInterfaceMapping;
                }
            }
        }
        return null;
    }
    
    public void setEnumSerializer(final JsonSerializer<?> enumSerializerOverride) {
        this._enumSerializerOverride = enumSerializerOverride;
    }
    
    @Override
    public SerializerFactory withConfig(final Config config) {
        if (this.getClass() != CustomSerializerFactory.class) {
            throw new IllegalStateException("Subtype of CustomSerializerFactory (" + this.getClass().getName() + ") has not properly overridden method 'withAdditionalSerializers': can not instantiate subtype with " + "additional serializer definitions");
        }
        return new CustomSerializerFactory(config);
    }
}
