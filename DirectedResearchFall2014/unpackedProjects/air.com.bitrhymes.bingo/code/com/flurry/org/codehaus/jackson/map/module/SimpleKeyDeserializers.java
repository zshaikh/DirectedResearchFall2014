package com.flurry.org.codehaus.jackson.map.module;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;

public class SimpleKeyDeserializers implements KeyDeserializers
{
    protected HashMap<ClassKey, KeyDeserializer> _classMappings;
    
    public SimpleKeyDeserializers() {
        super();
        this._classMappings = null;
    }
    
    public SimpleKeyDeserializers addDeserializer(final Class<?> clazz, final KeyDeserializer value) {
        if (this._classMappings == null) {
            this._classMappings = new HashMap<ClassKey, KeyDeserializer>();
        }
        this._classMappings.put(new ClassKey(clazz), value);
        return this;
    }
    
    @Override
    public KeyDeserializer findKeyDeserializer(final JavaType javaType, final DeserializationConfig deserializationConfig, final BeanDescription beanDescription, final BeanProperty beanProperty) {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(javaType.getRawClass()));
    }
}
