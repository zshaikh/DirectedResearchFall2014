package com.flurry.org.codehaus.jackson.map.type;

import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;

public final class SimpleType extends TypeBase
{
    protected final String[] _typeNames;
    protected final JavaType[] _typeParameters;
    
    protected SimpleType(final Class<?> clazz) {
        this(clazz, null, null, null, null);
    }
    
    protected SimpleType(final Class<?> clazz, final String[] array, final JavaType[] array2) {
        this(clazz, array, array2, null, null);
    }
    
    protected SimpleType(final Class<?> clazz, final String[] typeNames, final JavaType[] typeParameters, final Object o, final Object o2) {
        super(clazz, 0, o, o2);
        if (typeNames == null || typeNames.length == 0) {
            this._typeNames = null;
            this._typeParameters = null;
            return;
        }
        this._typeNames = typeNames;
        this._typeParameters = typeParameters;
    }
    
    public static SimpleType construct(final Class<?> clazz) {
        if (Map.class.isAssignableFrom(clazz)) {
            throw new IllegalArgumentException("Can not construct SimpleType for a Map (class: " + clazz.getName() + ")");
        }
        if (Collection.class.isAssignableFrom(clazz)) {
            throw new IllegalArgumentException("Can not construct SimpleType for a Collection (class: " + clazz.getName() + ")");
        }
        if (clazz.isArray()) {
            throw new IllegalArgumentException("Can not construct SimpleType for an array (class: " + clazz.getName() + ")");
        }
        return new SimpleType(clazz);
    }
    
    public static SimpleType constructUnsafe(final Class<?> clazz) {
        return new SimpleType(clazz, null, null, null, null);
    }
    
    @Override
    protected JavaType _narrow(final Class<?> clazz) {
        return new SimpleType(clazz, this._typeNames, this._typeParameters, this._valueHandler, this._typeHandler);
    }
    
    @Override
    protected String buildCanonicalName() {
        final StringBuilder sb = new StringBuilder();
        sb.append(this._class.getName());
        if (this._typeParameters != null && this._typeParameters.length > 0) {
            sb.append('<');
            int n = 1;
            for (final JavaType javaType : this._typeParameters) {
                if (n != 0) {
                    n = 0;
                }
                else {
                    sb.append(',');
                }
                sb.append(javaType.toCanonical());
            }
            sb.append('>');
        }
        return sb.toString();
    }
    
    @Override
    public JavaType containedType(final int n) {
        if (n < 0 || this._typeParameters == null || n >= this._typeParameters.length) {
            return null;
        }
        return this._typeParameters[n];
    }
    
    @Override
    public int containedTypeCount() {
        if (this._typeParameters == null) {
            return 0;
        }
        return this._typeParameters.length;
    }
    
    @Override
    public String containedTypeName(final int n) {
        if (n < 0 || this._typeNames == null || n >= this._typeNames.length) {
            return null;
        }
        return this._typeNames[n];
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (o.getClass() != this.getClass()) {
            return false;
        }
        final SimpleType simpleType = (SimpleType)o;
        if (simpleType._class != this._class) {
            return false;
        }
        final JavaType[] typeParameters = this._typeParameters;
        final JavaType[] typeParameters2 = simpleType._typeParameters;
        if (typeParameters == null) {
            return typeParameters2 == null || typeParameters2.length == 0;
        }
        if (typeParameters2 == null) {
            return false;
        }
        if (typeParameters.length != typeParameters2.length) {
            return false;
        }
        for (int i = 0; i < typeParameters.length; ++i) {
            if (!typeParameters[i].equals(typeParameters2[i])) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public StringBuilder getErasedSignature(final StringBuilder sb) {
        return TypeBase._classSignature(this._class, sb, true);
    }
    
    @Override
    public StringBuilder getGenericSignature(StringBuilder genericSignature) {
        TypeBase._classSignature(this._class, genericSignature, false);
        if (this._typeParameters != null) {
            genericSignature.append('<');
            final JavaType[] typeParameters = this._typeParameters;
            for (int length = typeParameters.length, i = 0; i < length; ++i) {
                genericSignature = typeParameters[i].getGenericSignature(genericSignature);
            }
            genericSignature.append('>');
        }
        genericSignature.append(';');
        return genericSignature;
    }
    
    @Override
    public boolean isContainerType() {
        return false;
    }
    
    @Override
    public JavaType narrowContentsBy(final Class<?> clazz) {
        throw new IllegalArgumentException("Internal error: SimpleType.narrowContentsBy() should never be called");
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(40);
        sb.append("[simple type, class ").append(this.buildCanonicalName()).append(']');
        return sb.toString();
    }
    
    @Override
    public JavaType widenContentsBy(final Class<?> clazz) {
        throw new IllegalArgumentException("Internal error: SimpleType.widenContentsBy() should never be called");
    }
    
    @Override
    public JavaType withContentTypeHandler(final Object o) {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenTypeHandler()");
    }
    
    @Override
    public SimpleType withContentValueHandler(final Object o) {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenValueHandler()");
    }
    
    @Override
    public SimpleType withTypeHandler(final Object o) {
        return new SimpleType(this._class, this._typeNames, this._typeParameters, this._valueHandler, o);
    }
    
    @Override
    public SimpleType withValueHandler(final Object o) {
        if (o == this._valueHandler) {
            return this;
        }
        return new SimpleType(this._class, this._typeNames, this._typeParameters, o, this._typeHandler);
    }
}
