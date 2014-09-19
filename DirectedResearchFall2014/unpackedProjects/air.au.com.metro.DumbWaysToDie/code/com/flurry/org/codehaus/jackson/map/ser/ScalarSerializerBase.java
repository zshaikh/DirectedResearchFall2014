package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.ser.std.*;

@Deprecated
public abstract class ScalarSerializerBase<T> extends SerializerBase<T>
{
    protected ScalarSerializerBase(final Class<T> clazz) {
        super(clazz);
    }
    
    protected ScalarSerializerBase(final Class<?> clazz, final boolean b) {
        super(clazz);
    }
}
