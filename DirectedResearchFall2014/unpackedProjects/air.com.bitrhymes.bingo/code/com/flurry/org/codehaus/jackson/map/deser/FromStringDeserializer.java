package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.deser.std.*;

@Deprecated
public abstract class FromStringDeserializer<T> extends com.flurry.org.codehaus.jackson.map.deser.std.FromStringDeserializer<T>
{
    protected FromStringDeserializer(final Class<?> clazz) {
        super(clazz);
    }
}
