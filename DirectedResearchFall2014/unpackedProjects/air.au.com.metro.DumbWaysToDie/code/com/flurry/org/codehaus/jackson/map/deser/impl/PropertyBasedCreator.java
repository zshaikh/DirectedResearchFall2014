package com.flurry.org.codehaus.jackson.map.deser.impl;

import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.io.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public final class PropertyBasedCreator
{
    protected Object[] _defaultValues;
    protected final HashMap<String, SettableBeanProperty> _properties;
    protected final SettableBeanProperty[] _propertiesWithInjectables;
    protected final ValueInstantiator _valueInstantiator;
    
    public PropertyBasedCreator(final ValueInstantiator valueInstantiator) {
        super();
        this._valueInstantiator = valueInstantiator;
        this._properties = new HashMap<String, SettableBeanProperty>();
        Object[] defaultValues = null;
        final SettableBeanProperty[] fromObjectArguments = valueInstantiator.getFromObjectArguments();
        SettableBeanProperty[] propertiesWithInjectables = null;
        for (int i = 0, length = fromObjectArguments.length; i < length; ++i) {
            final SettableBeanProperty value = fromObjectArguments[i];
            this._properties.put(value.getName(), value);
            if (value.getType().isPrimitive()) {
                if (defaultValues == null) {
                    defaultValues = new Object[length];
                }
                defaultValues[i] = ClassUtil.defaultValue(value.getType().getRawClass());
            }
            if (value.getInjectableValueId() != null) {
                if (propertiesWithInjectables == null) {
                    propertiesWithInjectables = new SettableBeanProperty[length];
                }
                propertiesWithInjectables[i] = value;
            }
        }
        this._defaultValues = defaultValues;
        this._propertiesWithInjectables = propertiesWithInjectables;
    }
    
    public void assignDeserializer(final SettableBeanProperty settableBeanProperty, final JsonDeserializer<Object> jsonDeserializer) {
        final SettableBeanProperty withValueDeserializer = settableBeanProperty.withValueDeserializer(jsonDeserializer);
        this._properties.put(withValueDeserializer.getName(), withValueDeserializer);
        final Object nullValue = jsonDeserializer.getNullValue();
        if (nullValue != null) {
            if (this._defaultValues == null) {
                this._defaultValues = new Object[this._properties.size()];
            }
            this._defaultValues[withValueDeserializer.getPropertyIndex()] = nullValue;
        }
    }
    
    public Object build(final PropertyValueBuffer propertyValueBuffer) throws IOException {
        final Object fromObjectWith = this._valueInstantiator.createFromObjectWith(propertyValueBuffer.getParameters(this._defaultValues));
        for (PropertyValue propertyValue = propertyValueBuffer.buffered(); propertyValue != null; propertyValue = propertyValue.next) {
            propertyValue.assign(fromObjectWith);
        }
        return fromObjectWith;
    }
    
    public SettableBeanProperty findCreatorProperty(final String key) {
        return this._properties.get(key);
    }
    
    public Collection<SettableBeanProperty> getCreatorProperties() {
        return this._properties.values();
    }
    
    public PropertyValueBuffer startBuilding(final JsonParser jsonParser, final DeserializationContext deserializationContext) {
        final PropertyValueBuffer propertyValueBuffer = new PropertyValueBuffer(jsonParser, deserializationContext, this._properties.size());
        if (this._propertiesWithInjectables != null) {
            propertyValueBuffer.inject(this._propertiesWithInjectables);
        }
        return propertyValueBuffer;
    }
}
