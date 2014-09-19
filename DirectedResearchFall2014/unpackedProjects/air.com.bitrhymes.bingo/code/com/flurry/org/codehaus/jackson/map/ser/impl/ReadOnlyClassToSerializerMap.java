package com.flurry.org.codehaus.jackson.map.ser.impl;

import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.type.*;

public final class ReadOnlyClassToSerializerMap
{
    protected final SerializerCache.TypeKey _cacheKey;
    protected final JsonSerializerMap _map;
    
    private ReadOnlyClassToSerializerMap(final JsonSerializerMap map) {
        super();
        this._cacheKey = new SerializerCache.TypeKey(this.getClass(), false);
        this._map = map;
    }
    
    public static ReadOnlyClassToSerializerMap from(final HashMap<SerializerCache.TypeKey, JsonSerializer<Object>> hashMap) {
        return new ReadOnlyClassToSerializerMap(new JsonSerializerMap(hashMap));
    }
    
    public ReadOnlyClassToSerializerMap instance() {
        return new ReadOnlyClassToSerializerMap(this._map);
    }
    
    public JsonSerializer<Object> typedValueSerializer(final JavaType javaType) {
        this._cacheKey.resetTyped(javaType);
        return this._map.find(this._cacheKey);
    }
    
    public JsonSerializer<Object> typedValueSerializer(final Class<?> clazz) {
        this._cacheKey.resetTyped(clazz);
        return this._map.find(this._cacheKey);
    }
    
    public JsonSerializer<Object> untypedValueSerializer(final JavaType javaType) {
        this._cacheKey.resetUntyped(javaType);
        return this._map.find(this._cacheKey);
    }
    
    public JsonSerializer<Object> untypedValueSerializer(final Class<?> clazz) {
        this._cacheKey.resetUntyped(clazz);
        return this._map.find(this._cacheKey);
    }
}
