package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;

public abstract class BeanSerializerModifier
{
    public List<BeanPropertyWriter> changeProperties(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final List<BeanPropertyWriter> list) {
        return list;
    }
    
    public JsonSerializer<?> modifySerializer(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final JsonSerializer<?> jsonSerializer) {
        return jsonSerializer;
    }
    
    public List<BeanPropertyWriter> orderProperties(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final List<BeanPropertyWriter> list) {
        return list;
    }
    
    public BeanSerializerBuilder updateBuilder(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final BeanSerializerBuilder beanSerializerBuilder) {
        return beanSerializerBuilder;
    }
}
