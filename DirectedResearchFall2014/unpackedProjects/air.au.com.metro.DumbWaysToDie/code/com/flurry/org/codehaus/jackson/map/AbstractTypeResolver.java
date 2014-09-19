package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;

public abstract class AbstractTypeResolver
{
    public JavaType findTypeMapping(final DeserializationConfig deserializationConfig, final JavaType javaType) {
        return null;
    }
    
    public JavaType resolveAbstractType(final DeserializationConfig deserializationConfig, final JavaType javaType) {
        return null;
    }
}
