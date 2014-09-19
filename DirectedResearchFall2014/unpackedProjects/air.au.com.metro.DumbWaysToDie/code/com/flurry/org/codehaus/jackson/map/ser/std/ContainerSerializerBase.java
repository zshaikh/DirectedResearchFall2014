package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.*;

public abstract class ContainerSerializerBase<T> extends SerializerBase<T>
{
    protected ContainerSerializerBase(final Class<T> clazz) {
        super(clazz);
    }
    
    protected ContainerSerializerBase(final Class<?> clazz, final boolean b) {
        super(clazz, b);
    }
    
    public abstract ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer p0);
    
    public ContainerSerializerBase<?> withValueTypeSerializer(final TypeSerializer typeSerializer) {
        if (typeSerializer == null) {
            return this;
        }
        return this._withValueTypeSerializer(typeSerializer);
    }
}
