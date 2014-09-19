package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.type.*;

public abstract class ContainerDeserializerBase<T> extends StdDeserializer<T>
{
    protected ContainerDeserializerBase(final Class<?> clazz) {
        super(clazz);
    }
    
    public abstract JsonDeserializer<Object> getContentDeserializer();
    
    public abstract JavaType getContentType();
}
