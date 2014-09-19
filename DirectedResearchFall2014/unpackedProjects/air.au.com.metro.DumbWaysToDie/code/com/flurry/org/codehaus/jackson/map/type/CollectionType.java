package com.flurry.org.codehaus.jackson.map.type;

import com.flurry.org.codehaus.jackson.type.*;

public final class CollectionType extends CollectionLikeType
{
    private CollectionType(final Class<?> clazz, final JavaType javaType, final Object o, final Object o2) {
        super(clazz, javaType, o, o2);
    }
    
    public static CollectionType construct(final Class<?> clazz, final JavaType javaType) {
        return new CollectionType(clazz, javaType, null, null);
    }
    
    @Override
    protected JavaType _narrow(final Class<?> clazz) {
        return new CollectionType(clazz, this._elementType, null, null);
    }
    
    @Override
    public JavaType narrowContentsBy(final Class<?> clazz) {
        if (clazz == this._elementType.getRawClass()) {
            return this;
        }
        return new CollectionType(this._class, this._elementType.narrowBy(clazz), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public String toString() {
        return "[collection type; class " + this._class.getName() + ", contains " + this._elementType + "]";
    }
    
    @Override
    public JavaType widenContentsBy(final Class<?> clazz) {
        if (clazz == this._elementType.getRawClass()) {
            return this;
        }
        return new CollectionType(this._class, this._elementType.widenBy(clazz), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public CollectionType withContentTypeHandler(final Object o) {
        return new CollectionType(this._class, this._elementType.withTypeHandler(o), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public CollectionType withContentValueHandler(final Object o) {
        return new CollectionType(this._class, this._elementType.withValueHandler(o), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public CollectionType withTypeHandler(final Object o) {
        return new CollectionType(this._class, this._elementType, this._valueHandler, o);
    }
    
    @Override
    public CollectionType withValueHandler(final Object o) {
        return new CollectionType(this._class, this._elementType, o, this._typeHandler);
    }
}
