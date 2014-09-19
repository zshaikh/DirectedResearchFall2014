package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.annotate.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;

public class TypeNameIdResolver extends TypeIdResolverBase
{
    protected final MapperConfig<?> _config;
    protected final HashMap<String, JavaType> _idToType;
    protected final HashMap<String, String> _typeToId;
    
    protected TypeNameIdResolver(final MapperConfig<?> config, final JavaType javaType, final HashMap<String, String> typeToId, final HashMap<String, JavaType> idToType) {
        super(javaType, config.getTypeFactory());
        this._config = config;
        this._typeToId = typeToId;
        this._idToType = idToType;
    }
    
    protected static String _defaultTypeId(final Class<?> clazz) {
        final String name = clazz.getName();
        final int lastIndex = name.lastIndexOf(46);
        if (lastIndex < 0) {
            return name;
        }
        return name.substring(lastIndex + 1);
    }
    
    public static TypeNameIdResolver construct(final MapperConfig<?> mapperConfig, final JavaType javaType, final Collection<NamedType> collection, final boolean b, final boolean b2) {
        if (b == b2) {
            throw new IllegalArgumentException();
        }
        HashMap<String, String> hashMap = null;
        if (b) {
            hashMap = new HashMap<String, String>();
        }
        HashMap<String, JavaType> hashMap2 = null;
        if (b2) {
            hashMap2 = new HashMap<String, JavaType>();
        }
        if (collection != null) {
            for (final NamedType namedType : collection) {
                final Class<?> type = namedType.getType();
                String key;
                if (namedType.hasName()) {
                    key = namedType.getName();
                }
                else {
                    key = _defaultTypeId(type);
                }
                if (b) {
                    hashMap.put(type.getName(), key);
                }
                if (b2) {
                    final JavaType javaType2 = hashMap2.get(key);
                    if (javaType2 != null && type.isAssignableFrom(javaType2.getRawClass())) {
                        continue;
                    }
                    hashMap2.put(key, mapperConfig.constructType(type));
                }
            }
        }
        return new TypeNameIdResolver(mapperConfig, javaType, hashMap, hashMap2);
    }
    
    @Override
    public JsonTypeInfo.Id getMechanism() {
        return JsonTypeInfo.Id.NAME;
    }
    
    @Override
    public String idFromValue(final Object o) {
        final Class<?> class1 = o.getClass();
        final String name = class1.getName();
        synchronized (this._typeToId) {
            String value = this._typeToId.get(name);
            if (value == null) {
                if (this._config.isAnnotationProcessingEnabled()) {
                    value = this._config.getAnnotationIntrospector().findTypeName(this._config.introspectClassAnnotations(class1).getClassInfo());
                }
                if (value == null) {
                    value = _defaultTypeId(class1);
                }
                this._typeToId.put(name, value);
            }
            return value;
        }
    }
    
    @Override
    public String idFromValueAndType(final Object o, final Class<?> clazz) {
        return this.idFromValue(o);
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append('[').append(this.getClass().getName());
        sb.append("; id-to-type=").append(this._idToType);
        sb.append(']');
        return sb.toString();
    }
    
    @Override
    public JavaType typeFromId(final String key) throws IllegalArgumentException {
        return this._idToType.get(key);
    }
}
