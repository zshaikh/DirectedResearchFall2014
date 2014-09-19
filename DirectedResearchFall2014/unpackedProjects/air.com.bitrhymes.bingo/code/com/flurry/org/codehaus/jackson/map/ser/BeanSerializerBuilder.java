package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;

public class BeanSerializerBuilder
{
    private static final BeanPropertyWriter[] NO_PROPERTIES;
    protected AnyGetterWriter _anyGetter;
    protected final BasicBeanDescription _beanDesc;
    protected Object _filterId;
    protected BeanPropertyWriter[] _filteredProperties;
    protected List<BeanPropertyWriter> _properties;
    
    static {
        NO_PROPERTIES = new BeanPropertyWriter[0];
    }
    
    public BeanSerializerBuilder(final BasicBeanDescription beanDesc) {
        super();
        this._beanDesc = beanDesc;
    }
    
    protected BeanSerializerBuilder(final BeanSerializerBuilder beanSerializerBuilder) {
        super();
        this._beanDesc = beanSerializerBuilder._beanDesc;
        this._properties = beanSerializerBuilder._properties;
        this._filteredProperties = beanSerializerBuilder._filteredProperties;
        this._anyGetter = beanSerializerBuilder._anyGetter;
        this._filterId = beanSerializerBuilder._filterId;
    }
    
    public JsonSerializer<?> build() {
        BeanPropertyWriter[] no_PROPERTIES;
        if (this._properties == null || this._properties.isEmpty()) {
            if (this._anyGetter == null) {
                return null;
            }
            no_PROPERTIES = BeanSerializerBuilder.NO_PROPERTIES;
        }
        else {
            no_PROPERTIES = this._properties.toArray(new BeanPropertyWriter[this._properties.size()]);
        }
        return new BeanSerializer(this._beanDesc.getType(), no_PROPERTIES, this._filteredProperties, this._anyGetter, this._filterId);
    }
    
    public BeanSerializer createDummy() {
        return BeanSerializer.createDummy(this._beanDesc.getBeanClass());
    }
    
    public BasicBeanDescription getBeanDescription() {
        return this._beanDesc;
    }
    
    public BeanPropertyWriter[] getFilteredProperties() {
        return this._filteredProperties;
    }
    
    public List<BeanPropertyWriter> getProperties() {
        return this._properties;
    }
    
    public boolean hasProperties() {
        return this._properties != null && this._properties.size() > 0;
    }
    
    public void setAnyGetter(final AnyGetterWriter anyGetter) {
        this._anyGetter = anyGetter;
    }
    
    public void setFilterId(final Object filterId) {
        this._filterId = filterId;
    }
    
    public void setFilteredProperties(final BeanPropertyWriter[] filteredProperties) {
        this._filteredProperties = filteredProperties;
    }
    
    public void setProperties(final List<BeanPropertyWriter> properties) {
        this._properties = properties;
    }
}
