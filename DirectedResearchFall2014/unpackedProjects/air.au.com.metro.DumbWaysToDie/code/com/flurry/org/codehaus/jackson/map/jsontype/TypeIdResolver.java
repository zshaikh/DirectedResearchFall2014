package com.flurry.org.codehaus.jackson.map.jsontype;

import com.flurry.org.codehaus.jackson.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;

public interface TypeIdResolver
{
    JsonTypeInfo.Id getMechanism();
    
    String idFromValue(Object p0);
    
    String idFromValueAndType(Object p0, Class<?> p1);
    
    void init(JavaType p0);
    
    JavaType typeFromId(String p0);
}
