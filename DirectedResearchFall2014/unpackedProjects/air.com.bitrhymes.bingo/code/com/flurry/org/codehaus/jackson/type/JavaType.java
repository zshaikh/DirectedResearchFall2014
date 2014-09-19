package com.flurry.org.codehaus.jackson.type;

import java.lang.reflect.*;

public abstract class JavaType
{
    protected final Class<?> _class;
    protected final int _hashCode;
    protected Object _typeHandler;
    protected Object _valueHandler;
    
    protected JavaType(final Class<?> class1, final int n) {
        super();
        this._class = class1;
        this._hashCode = n + class1.getName().hashCode();
        this._valueHandler = null;
        this._typeHandler = null;
    }
    
    protected void _assertSubclass(final Class<?> clazz, final Class<?> clazz2) {
        if (!this._class.isAssignableFrom(clazz)) {
            throw new IllegalArgumentException("Class " + clazz.getName() + " is not assignable to " + this._class.getName());
        }
    }
    
    protected abstract JavaType _narrow(final Class<?> p0);
    
    protected JavaType _widen(final Class<?> clazz) {
        return this._narrow(clazz);
    }
    
    public JavaType containedType(final int n) {
        return null;
    }
    
    public int containedTypeCount() {
        return 0;
    }
    
    public String containedTypeName(final int n) {
        return null;
    }
    
    @Override
    public abstract boolean equals(final Object p0);
    
    public JavaType forcedNarrowBy(final Class<?> clazz) {
        if (clazz == this._class) {
            return this;
        }
        JavaType javaType = this._narrow(clazz);
        if (this._valueHandler != javaType.getValueHandler()) {
            javaType = javaType.withValueHandler(this._valueHandler);
        }
        if (this._typeHandler != javaType.getTypeHandler()) {
            javaType = javaType.withTypeHandler(this._typeHandler);
        }
        return javaType;
    }
    
    public JavaType getContentType() {
        return null;
    }
    
    public String getErasedSignature() {
        final StringBuilder sb = new StringBuilder(40);
        this.getErasedSignature(sb);
        return sb.toString();
    }
    
    public abstract StringBuilder getErasedSignature(final StringBuilder p0);
    
    public String getGenericSignature() {
        final StringBuilder sb = new StringBuilder(40);
        this.getGenericSignature(sb);
        return sb.toString();
    }
    
    public abstract StringBuilder getGenericSignature(final StringBuilder p0);
    
    public JavaType getKeyType() {
        return null;
    }
    
    public final Class<?> getRawClass() {
        return this._class;
    }
    
    public <T> T getTypeHandler() {
        return (T)this._typeHandler;
    }
    
    public <T> T getValueHandler() {
        return (T)this._valueHandler;
    }
    
    public boolean hasGenericTypes() {
        return this.containedTypeCount() > 0;
    }
    
    public final boolean hasRawClass(final Class<?> clazz) {
        return this._class == clazz;
    }
    
    @Override
    public final int hashCode() {
        return this._hashCode;
    }
    
    public boolean isAbstract() {
        return Modifier.isAbstract(this._class.getModifiers());
    }
    
    public boolean isArrayType() {
        return false;
    }
    
    public boolean isCollectionLikeType() {
        return false;
    }
    
    public boolean isConcrete() {
        return (0x600 & this._class.getModifiers()) == 0x0 || this._class.isPrimitive();
    }
    
    public abstract boolean isContainerType();
    
    public final boolean isEnumType() {
        return this._class.isEnum();
    }
    
    public final boolean isFinal() {
        return Modifier.isFinal(this._class.getModifiers());
    }
    
    public final boolean isInterface() {
        return this._class.isInterface();
    }
    
    public boolean isMapLikeType() {
        return false;
    }
    
    public final boolean isPrimitive() {
        return this._class.isPrimitive();
    }
    
    public boolean isThrowable() {
        return Throwable.class.isAssignableFrom(this._class);
    }
    
    public JavaType narrowBy(final Class<?> clazz) {
        if (clazz == this._class) {
            return this;
        }
        this._assertSubclass(clazz, this._class);
        JavaType javaType = this._narrow(clazz);
        if (this._valueHandler != javaType.getValueHandler()) {
            javaType = javaType.withValueHandler(this._valueHandler);
        }
        if (this._typeHandler != javaType.getTypeHandler()) {
            javaType = javaType.withTypeHandler(this._typeHandler);
        }
        return javaType;
    }
    
    public abstract JavaType narrowContentsBy(final Class<?> p0);
    
    @Deprecated
    public void setValueHandler(final Object valueHandler) {
        if (valueHandler != null && this._valueHandler != null) {
            throw new IllegalStateException("Trying to reset value handler for type [" + this.toString() + "]; old handler of type " + this._valueHandler.getClass().getName() + ", new handler of type " + valueHandler.getClass().getName());
        }
        this._valueHandler = valueHandler;
    }
    
    public abstract String toCanonical();
    
    @Override
    public abstract String toString();
    
    public JavaType widenBy(final Class<?> clazz) {
        if (clazz == this._class) {
            return this;
        }
        this._assertSubclass(this._class, clazz);
        return this._widen(clazz);
    }
    
    public abstract JavaType widenContentsBy(final Class<?> p0);
    
    public abstract JavaType withContentTypeHandler(final Object p0);
    
    public JavaType withContentValueHandler(final Object valueHandler) {
        this.getContentType().setValueHandler(valueHandler);
        return this;
    }
    
    public abstract JavaType withTypeHandler(final Object p0);
    
    public JavaType withValueHandler(final Object valueHandler) {
        this.setValueHandler(valueHandler);
        return this;
    }
}
