package com.flurry.org.codehaus.jackson.map.jsontype;

import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public interface TypeResolverBuilder<T extends TypeResolverBuilder<T>>
{
    TypeDeserializer buildTypeDeserializer(DeserializationConfig p0, JavaType p1, Collection<NamedType> p2, BeanProperty p3);
    
    TypeSerializer buildTypeSerializer(SerializationConfig p0, JavaType p1, Collection<NamedType> p2, BeanProperty p3);
    
    T defaultImpl(Class<?> p0);
    
    Class<?> getDefaultImpl();
    
    T inclusion(JsonTypeInfo.As p0);
    
    T init(JsonTypeInfo.Id p0, TypeIdResolver p1);
    
    T typeProperty(String p0);
}
