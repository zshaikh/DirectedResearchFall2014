package com.flurry.org.codehaus.jackson.map.type;

import com.flurry.org.codehaus.jackson.type.*;

public final class MapType extends MapLikeType
{
    private MapType(final Class<?> clazz, final JavaType javaType, final JavaType javaType2) {
        this(clazz, javaType, javaType2, null, null);
    }
    
    private MapType(final Class<?> clazz, final JavaType javaType, final JavaType javaType2, final Object o, final Object o2) {
        super(clazz, javaType, javaType2, o, o2);
    }
    
    public static MapType construct(final Class<?> clazz, final JavaType javaType, final JavaType javaType2) {
        return new MapType(clazz, javaType, javaType2, null, null);
    }
    
    @Override
    protected JavaType _narrow(final Class<?> clazz) {
        return new MapType(clazz, this._keyType, this._valueType, this._valueHandler, this._typeHandler);
    }
    
    @Override
    public JavaType narrowContentsBy(final Class<?> clazz) {
        if (clazz == this._valueType.getRawClass()) {
            return this;
        }
        return new MapType(this._class, this._keyType, this._valueType.narrowBy(clazz), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public JavaType narrowKey(final Class<?> clazz) {
        if (clazz == this._keyType.getRawClass()) {
            return this;
        }
        return new MapType(this._class, this._keyType.narrowBy(clazz), this._valueType, this._valueHandler, this._typeHandler);
    }
    
    @Override
    public String toString() {
        return "[map type; class " + this._class.getName() + ", " + this._keyType + " -> " + this._valueType + "]";
    }
    
    @Override
    public JavaType widenContentsBy(final Class<?> clazz) {
        if (clazz == this._valueType.getRawClass()) {
            return this;
        }
        return new MapType(this._class, this._keyType, this._valueType.widenBy(clazz), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public JavaType widenKey(final Class<?> clazz) {
        if (clazz == this._keyType.getRawClass()) {
            return this;
        }
        return new MapType(this._class, this._keyType.widenBy(clazz), this._valueType, this._valueHandler, this._typeHandler);
    }
    
    @Override
    public MapType withContentTypeHandler(final Object o) {
        return new MapType(this._class, this._keyType, this._valueType.withTypeHandler(o), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public MapType withContentValueHandler(final Object o) {
        return new MapType(this._class, this._keyType, this._valueType.withValueHandler(o), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public MapType withKeyTypeHandler(final Object o) {
        return new MapType(this._class, this._keyType.withTypeHandler(o), this._valueType, this._valueHandler, this._typeHandler);
    }
    
    @Override
    public MapType withKeyValueHandler(final Object o) {
        return new MapType(this._class, this._keyType.withValueHandler(o), this._valueType, this._valueHandler, this._typeHandler);
    }
    
    @Override
    public MapType withTypeHandler(final Object o) {
        return new MapType(this._class, this._keyType, this._valueType, this._valueHandler, o);
    }
    
    @Override
    public MapType withValueHandler(final Object o) {
        return new MapType(this._class, this._keyType, this._valueType, o, this._typeHandler);
    }
}
