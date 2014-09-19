package com.flurry.org.codehaus.jackson.map.ser.impl;

import com.flurry.org.codehaus.jackson.map.ser.*;
import java.util.*;

public class SimpleFilterProvider extends FilterProvider
{
    protected boolean _cfgFailOnUnknownId;
    protected BeanPropertyFilter _defaultFilter;
    protected final Map<String, BeanPropertyFilter> _filtersById;
    
    public SimpleFilterProvider() {
        this(new HashMap<String, BeanPropertyFilter>());
    }
    
    public SimpleFilterProvider(final Map<String, BeanPropertyFilter> filtersById) {
        super();
        this._cfgFailOnUnknownId = true;
        this._filtersById = filtersById;
    }
    
    public SimpleFilterProvider addFilter(final String s, final BeanPropertyFilter beanPropertyFilter) {
        this._filtersById.put(s, beanPropertyFilter);
        return this;
    }
    
    @Override
    public BeanPropertyFilter findFilter(final Object obj) {
        BeanPropertyFilter defaultFilter = this._filtersById.get(obj);
        if (defaultFilter == null) {
            defaultFilter = this._defaultFilter;
            if (defaultFilter == null && this._cfgFailOnUnknownId) {
                throw new IllegalArgumentException("No filter configured with id '" + obj + "' (type " + obj.getClass().getName() + ")");
            }
        }
        return defaultFilter;
    }
    
    public BeanPropertyFilter getDefaultFilter() {
        return this._defaultFilter;
    }
    
    public BeanPropertyFilter removeFilter(final String s) {
        return this._filtersById.remove(s);
    }
    
    public SimpleFilterProvider setDefaultFilter(final BeanPropertyFilter defaultFilter) {
        this._defaultFilter = defaultFilter;
        return this;
    }
    
    public SimpleFilterProvider setFailOnUnknownId(final boolean cfgFailOnUnknownId) {
        this._cfgFailOnUnknownId = cfgFailOnUnknownId;
        return this;
    }
    
    public boolean willFailOnUnknownId() {
        return this._cfgFailOnUnknownId;
    }
}
