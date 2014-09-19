package com.flurry.org.codehaus.jackson.map.module;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.type.*;

public class SimpleAbstractTypeResolver extends AbstractTypeResolver
{
    protected final HashMap<ClassKey, Class<?>> _mappings;
    
    public SimpleAbstractTypeResolver() {
        super();
        this._mappings = new HashMap<ClassKey, Class<?>>();
    }
    
    public <T> SimpleAbstractTypeResolver addMapping(final Class<T> clazz, final Class<? extends T> value) {
        if (clazz == value) {
            throw new IllegalArgumentException("Can not add mapping from class to itself");
        }
        if (!clazz.isAssignableFrom(value)) {
            throw new IllegalArgumentException("Can not add mapping from class " + clazz.getName() + " to " + value.getName() + ", as latter is not a subtype of former");
        }
        if (!Modifier.isAbstract(clazz.getModifiers())) {
            throw new IllegalArgumentException("Can not add mapping from class " + clazz.getName() + " since it is not abstract");
        }
        this._mappings.put(new ClassKey(clazz), value);
        return this;
    }
    
    @Override
    public JavaType findTypeMapping(final DeserializationConfig deserializationConfig, final JavaType javaType) {
        final Class<?> clazz = this._mappings.get(new ClassKey(javaType.getRawClass()));
        if (clazz == null) {
            return null;
        }
        return javaType.narrowBy(clazz);
    }
    
    @Override
    public JavaType resolveAbstractType(final DeserializationConfig deserializationConfig, final JavaType javaType) {
        return null;
    }
}
