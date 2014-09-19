package com.flurry.org.codehaus.jackson.map.ser.impl;

import java.util.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.ser.*;

public abstract class SimpleBeanPropertyFilter implements BeanPropertyFilter
{
    public static SimpleBeanPropertyFilter filterOutAllExcept(final Set<String> set) {
        return new FilterExceptFilter(set);
    }
    
    public static SimpleBeanPropertyFilter filterOutAllExcept(final String... elements) {
        final HashSet<Object> c = new HashSet<Object>(elements.length);
        Collections.addAll(c, elements);
        return new FilterExceptFilter((Set<String>)c);
    }
    
    public static SimpleBeanPropertyFilter serializeAllExcept(final Set<String> set) {
        return new SerializeExceptFilter(set);
    }
    
    public static SimpleBeanPropertyFilter serializeAllExcept(final String... elements) {
        final HashSet<Object> c = new HashSet<Object>(elements.length);
        Collections.addAll(c, elements);
        return new SerializeExceptFilter((Set<String>)c);
    }
    
    public static class FilterExceptFilter extends SimpleBeanPropertyFilter
    {
        protected final Set<String> _propertiesToInclude;
        
        public FilterExceptFilter(final Set<String> propertiesToInclude) {
            super();
            this._propertiesToInclude = propertiesToInclude;
        }
        
        @Override
        public void serializeAsField(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final BeanPropertyWriter beanPropertyWriter) throws Exception {
            if (this._propertiesToInclude.contains(beanPropertyWriter.getName())) {
                beanPropertyWriter.serializeAsField(o, jsonGenerator, serializerProvider);
            }
        }
    }
    
    public static class SerializeExceptFilter extends SimpleBeanPropertyFilter
    {
        protected final Set<String> _propertiesToExclude;
        
        public SerializeExceptFilter(final Set<String> propertiesToExclude) {
            super();
            this._propertiesToExclude = propertiesToExclude;
        }
        
        @Override
        public void serializeAsField(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final BeanPropertyWriter beanPropertyWriter) throws Exception {
            if (!this._propertiesToExclude.contains(beanPropertyWriter.getName())) {
                beanPropertyWriter.serializeAsField(o, jsonGenerator, serializerProvider);
            }
        }
    }
}
