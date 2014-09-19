package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.*;

public interface ValueInstantiators
{
    ValueInstantiator findValueInstantiator(DeserializationConfig p0, BeanDescription p1, ValueInstantiator p2);
    
    public static class Base implements ValueInstantiators
    {
        @Override
        public ValueInstantiator findValueInstantiator(DeserializationConfig deserializationConfig, BeanDescription beanDescription, ValueInstantiator valueInstantiator) {
            return valueInstantiator;
        }
    }
}
