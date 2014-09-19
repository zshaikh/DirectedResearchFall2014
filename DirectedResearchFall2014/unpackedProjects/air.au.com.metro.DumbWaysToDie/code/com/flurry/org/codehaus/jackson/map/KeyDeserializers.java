package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;

public interface KeyDeserializers
{
    KeyDeserializer findKeyDeserializer(JavaType p0, DeserializationConfig p1, BeanDescription p2, BeanProperty p3) throws JsonMappingException;
}
