package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.*;

public abstract class BeanDeserializerModifier
{
    public JsonDeserializer<?> modifyDeserializer(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final JsonDeserializer<?> jsonDeserializer) {
        return jsonDeserializer;
    }
    
    public BeanDeserializerBuilder updateBuilder(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final BeanDeserializerBuilder beanDeserializerBuilder) {
        return beanDeserializerBuilder;
    }
}
