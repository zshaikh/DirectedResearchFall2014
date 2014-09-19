package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.deser.std.*;

@Deprecated
public abstract class ContainerDeserializer<T> extends ContainerDeserializerBase<T>
{
    protected ContainerDeserializer(final Class<?> clazz) {
        super(clazz);
    }
}
