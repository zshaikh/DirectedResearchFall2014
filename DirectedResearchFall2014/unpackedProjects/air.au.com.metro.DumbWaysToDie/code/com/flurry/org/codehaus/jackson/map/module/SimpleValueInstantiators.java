package com.flurry.org.codehaus.jackson.map.module;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.map.*;

public class SimpleValueInstantiators extends Base
{
    protected HashMap<ClassKey, ValueInstantiator> _classMappings;
    
    public SimpleValueInstantiators() {
        super();
        this._classMappings = new HashMap<ClassKey, ValueInstantiator>();
    }
    
    public SimpleValueInstantiators addValueInstantiator(final Class<?> clazz, final ValueInstantiator value) {
        this._classMappings.put(new ClassKey(clazz), value);
        return this;
    }
    
    @Override
    public ValueInstantiator findValueInstantiator(final DeserializationConfig deserializationConfig, final BeanDescription beanDescription, final ValueInstantiator valueInstantiator) {
        final ValueInstantiator valueInstantiator2 = this._classMappings.get(new ClassKey(beanDescription.getBeanClass()));
        if (valueInstantiator2 == null) {
            return valueInstantiator;
        }
        return valueInstantiator2;
    }
}
