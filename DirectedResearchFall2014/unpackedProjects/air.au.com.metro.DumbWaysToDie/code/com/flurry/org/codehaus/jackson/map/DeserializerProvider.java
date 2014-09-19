package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.map.deser.*;

public abstract class DeserializerProvider
{
    public abstract int cachedDeserializersCount();
    
    public abstract SerializedString findExpectedRootName(final DeserializationConfig p0, final JavaType p1) throws JsonMappingException;
    
    public abstract KeyDeserializer findKeyDeserializer(final DeserializationConfig p0, final JavaType p1, final BeanProperty p2) throws JsonMappingException;
    
    public abstract JsonDeserializer<Object> findTypedValueDeserializer(final DeserializationConfig p0, final JavaType p1, final BeanProperty p2) throws JsonMappingException;
    
    public abstract JsonDeserializer<Object> findValueDeserializer(final DeserializationConfig p0, final JavaType p1, final BeanProperty p2) throws JsonMappingException;
    
    public abstract void flushCachedDeserializers();
    
    public abstract boolean hasValueDeserializerFor(final DeserializationConfig p0, final JavaType p1);
    
    public abstract JavaType mapAbstractType(final DeserializationConfig p0, final JavaType p1) throws JsonMappingException;
    
    public abstract DeserializerProvider withAbstractTypeResolver(final AbstractTypeResolver p0);
    
    public abstract DeserializerProvider withAdditionalDeserializers(final Deserializers p0);
    
    public abstract DeserializerProvider withAdditionalKeyDeserializers(final KeyDeserializers p0);
    
    public abstract DeserializerProvider withDeserializerModifier(final BeanDeserializerModifier p0);
    
    public abstract DeserializerProvider withFactory(final DeserializerFactory p0);
    
    public abstract DeserializerProvider withValueInstantiators(final ValueInstantiators p0);
}
