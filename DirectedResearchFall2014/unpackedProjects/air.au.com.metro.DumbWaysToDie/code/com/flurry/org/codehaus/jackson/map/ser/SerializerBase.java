package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.type.*;

@Deprecated
public abstract class SerializerBase<T> extends com.flurry.org.codehaus.jackson.map.ser.std.SerializerBase<T>
{
    protected SerializerBase(final JavaType javaType) {
        super(javaType);
    }
    
    protected SerializerBase(final Class<T> clazz) {
        super(clazz);
    }
    
    protected SerializerBase(final Class<?> clazz, final boolean b) {
        super(clazz, b);
    }
}
