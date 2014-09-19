package com.flurry.org.codehaus.jackson.map.type;

import com.flurry.org.codehaus.jackson.type.*;
import java.lang.reflect.*;

public final class ArrayType extends TypeBase
{
    protected final JavaType _componentType;
    protected final Object _emptyArray;
    
    private ArrayType(final JavaType componentType, final Object emptyArray, final Object o, final Object o2) {
        super(emptyArray.getClass(), componentType.hashCode(), o, o2);
        this._componentType = componentType;
        this._emptyArray = emptyArray;
    }
    
    @Deprecated
    public static ArrayType construct(final JavaType javaType) {
        return construct(javaType, null, null);
    }
    
    public static ArrayType construct(final JavaType javaType, final Object o, final Object o2) {
        return new ArrayType(javaType, Array.newInstance(javaType.getRawClass(), 0), null, null);
    }
    
    @Override
    protected JavaType _narrow(final Class<?> clazz) {
        if (!clazz.isArray()) {
            throw new IllegalArgumentException("Incompatible narrowing operation: trying to narrow " + this.toString() + " to class " + clazz.getName());
        }
        return construct(TypeFactory.defaultInstance().constructType(clazz.getComponentType()), this._valueHandler, this._typeHandler);
    }
    
    @Override
    protected String buildCanonicalName() {
        return this._class.getName();
    }
    
    @Override
    public JavaType containedType(final int n) {
        if (n == 0) {
            return this._componentType;
        }
        return null;
    }
    
    @Override
    public int containedTypeCount() {
        return 1;
    }
    
    @Override
    public String containedTypeName(final int n) {
        if (n == 0) {
            return "E";
        }
        return null;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && this._componentType.equals(((ArrayType)o)._componentType));
    }
    
    @Override
    public JavaType getContentType() {
        return this._componentType;
    }
    
    @Override
    public StringBuilder getErasedSignature(final StringBuilder sb) {
        sb.append('[');
        return this._componentType.getErasedSignature(sb);
    }
    
    @Override
    public StringBuilder getGenericSignature(final StringBuilder sb) {
        sb.append('[');
        return this._componentType.getGenericSignature(sb);
    }
    
    @Override
    public boolean hasGenericTypes() {
        return this._componentType.hasGenericTypes();
    }
    
    @Override
    public boolean isAbstract() {
        return false;
    }
    
    @Override
    public boolean isArrayType() {
        return true;
    }
    
    @Override
    public boolean isConcrete() {
        return true;
    }
    
    @Override
    public boolean isContainerType() {
        return true;
    }
    
    @Override
    public JavaType narrowContentsBy(final Class<?> clazz) {
        if (clazz == this._componentType.getRawClass()) {
            return this;
        }
        return construct(this._componentType.narrowBy(clazz), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public String toString() {
        return "[array type, component type: " + this._componentType + "]";
    }
    
    @Override
    public JavaType widenContentsBy(final Class<?> clazz) {
        if (clazz == this._componentType.getRawClass()) {
            return this;
        }
        return construct(this._componentType.widenBy(clazz), this._valueHandler, this._typeHandler);
    }
    
    @Override
    public ArrayType withContentTypeHandler(final Object o) {
        if (o == this._componentType.getTypeHandler()) {
            return this;
        }
        return new ArrayType(this._componentType.withTypeHandler(o), this._emptyArray, this._valueHandler, this._typeHandler);
    }
    
    @Override
    public ArrayType withContentValueHandler(final Object o) {
        if (o == this._componentType.getValueHandler()) {
            return this;
        }
        return new ArrayType(this._componentType.withValueHandler(o), this._emptyArray, this._valueHandler, this._typeHandler);
    }
    
    @Override
    public ArrayType withTypeHandler(final Object o) {
        if (o == this._typeHandler) {
            return this;
        }
        return new ArrayType(this._componentType, this._emptyArray, this._valueHandler, o);
    }
    
    @Override
    public ArrayType withValueHandler(final Object o) {
        if (o == this._valueHandler) {
            return this;
        }
        return new ArrayType(this._componentType, this._emptyArray, o, this._typeHandler);
    }
}
