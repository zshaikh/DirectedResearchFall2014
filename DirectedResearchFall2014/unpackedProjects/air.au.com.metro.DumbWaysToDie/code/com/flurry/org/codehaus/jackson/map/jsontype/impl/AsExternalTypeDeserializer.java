package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class AsExternalTypeDeserializer extends AsArrayTypeDeserializer
{
    protected final String _typePropertyName;
    
    public AsExternalTypeDeserializer(final JavaType javaType, final TypeIdResolver typeIdResolver, final BeanProperty beanProperty, final Class<?> clazz, final String typePropertyName) {
        super(javaType, typeIdResolver, beanProperty, clazz);
        this._typePropertyName = typePropertyName;
    }
    
    @Override
    public String getPropertyName() {
        return this._typePropertyName;
    }
    
    @Override
    public JsonTypeInfo.As getTypeInclusion() {
        return JsonTypeInfo.As.EXTERNAL_PROPERTY;
    }
}
