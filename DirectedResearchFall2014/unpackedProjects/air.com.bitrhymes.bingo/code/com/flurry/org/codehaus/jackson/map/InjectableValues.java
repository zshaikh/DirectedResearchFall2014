package com.flurry.org.codehaus.jackson.map;

import java.util.*;

public abstract class InjectableValues
{
    public abstract Object findInjectableValue(final Object p0, final DeserializationContext p1, final BeanProperty p2, final Object p3);
    
    public static class Std extends InjectableValues
    {
        protected final Map<String, Object> _values;
        
        public Std() {
            this(new HashMap<String, Object>());
        }
        
        public Std(final Map<String, Object> values) {
            super();
            this._values = values;
        }
        
        public Std addValue(final Class<?> clazz, final Object o) {
            this._values.put(clazz.getName(), o);
            return this;
        }
        
        public Std addValue(final String s, final Object o) {
            this._values.put(s, o);
            return this;
        }
        
        @Override
        public Object findInjectableValue(final Object o, final DeserializationContext deserializationContext, final BeanProperty beanProperty, final Object o2) {
            if (!(o instanceof String)) {
                String name;
                if (o == null) {
                    name = "[null]";
                }
                else {
                    name = o.getClass().getName();
                }
                throw new IllegalArgumentException("Unrecognized inject value id type (" + name + "), expecting String");
            }
            final String str = (String)o;
            final Object value = this._values.get(str);
            if (value == null && !this._values.containsKey(str)) {
                throw new IllegalArgumentException("No injectable id with value '" + str + "' found (for property '" + beanProperty.getName() + "')");
            }
            return value;
        }
    }
}
