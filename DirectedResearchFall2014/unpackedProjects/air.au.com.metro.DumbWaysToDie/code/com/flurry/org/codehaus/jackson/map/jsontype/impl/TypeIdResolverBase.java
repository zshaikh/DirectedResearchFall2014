package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;

public abstract class TypeIdResolverBase implements TypeIdResolver
{
    protected final JavaType _baseType;
    protected final TypeFactory _typeFactory;
    
    protected TypeIdResolverBase(final JavaType baseType, final TypeFactory typeFactory) {
        super();
        this._baseType = baseType;
        this._typeFactory = typeFactory;
    }
    
    public String idFromBaseType() {
        return this.idFromValueAndType(null, this._baseType.getRawClass());
    }
    
    @Override
    public void init(final JavaType javaType) {
    }
}
