package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public interface BeanPropertyFilter
{
    void serializeAsField(Object p0, JsonGenerator p1, SerializerProvider p2, BeanPropertyWriter p3) throws Exception;
}
