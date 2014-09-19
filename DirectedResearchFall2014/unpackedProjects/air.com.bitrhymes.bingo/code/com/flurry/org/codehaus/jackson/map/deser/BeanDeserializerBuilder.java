package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.deser.impl.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;

public class BeanDeserializerBuilder
{
    protected SettableAnyProperty _anySetter;
    protected HashMap<String, SettableBeanProperty> _backRefProperties;
    protected final BasicBeanDescription _beanDesc;
    protected HashSet<String> _ignorableProps;
    protected boolean _ignoreAllUnknown;
    protected List<ValueInjector> _injectables;
    protected final HashMap<String, SettableBeanProperty> _properties;
    protected ValueInstantiator _valueInstantiator;
    
    protected BeanDeserializerBuilder(final BeanDeserializerBuilder beanDeserializerBuilder) {
        super();
        this._properties = new LinkedHashMap<String, SettableBeanProperty>();
        this._beanDesc = beanDeserializerBuilder._beanDesc;
        this._anySetter = beanDeserializerBuilder._anySetter;
        this._ignoreAllUnknown = beanDeserializerBuilder._ignoreAllUnknown;
        this._properties.putAll(beanDeserializerBuilder._properties);
        this._backRefProperties = _copy(beanDeserializerBuilder._backRefProperties);
        this._ignorableProps = beanDeserializerBuilder._ignorableProps;
        this._valueInstantiator = beanDeserializerBuilder._valueInstantiator;
    }
    
    public BeanDeserializerBuilder(final BasicBeanDescription beanDesc) {
        super();
        this._properties = new LinkedHashMap<String, SettableBeanProperty>();
        this._beanDesc = beanDesc;
    }
    
    private static HashMap<String, SettableBeanProperty> _copy(final HashMap<String, SettableBeanProperty> m) {
        if (m == null) {
            return null;
        }
        return new HashMap<String, SettableBeanProperty>(m);
    }
    
    public void addBackReferenceProperty(final String key, final SettableBeanProperty value) {
        if (this._backRefProperties == null) {
            this._backRefProperties = new HashMap<String, SettableBeanProperty>(4);
        }
        this._backRefProperties.put(key, value);
        if (this._properties != null) {
            this._properties.remove(value.getName());
        }
    }
    
    public void addCreatorProperty(final BeanPropertyDefinition beanPropertyDefinition) {
    }
    
    public void addIgnorable(final String e) {
        if (this._ignorableProps == null) {
            this._ignorableProps = new HashSet<String>();
        }
        this._ignorableProps.add(e);
    }
    
    public void addInjectable(final String s, final JavaType javaType, final Annotations annotations, final AnnotatedMember annotatedMember, final Object o) {
        if (this._injectables == null) {
            this._injectables = new ArrayList<ValueInjector>();
        }
        this._injectables.add(new ValueInjector(s, javaType, annotations, annotatedMember, o));
    }
    
    public void addOrReplaceProperty(final SettableBeanProperty value, final boolean b) {
        this._properties.put(value.getName(), value);
    }
    
    public void addProperty(final SettableBeanProperty value) {
        final SettableBeanProperty settableBeanProperty = this._properties.put(value.getName(), value);
        if (settableBeanProperty != null && settableBeanProperty != value) {
            throw new IllegalArgumentException("Duplicate property '" + value.getName() + "' for " + this._beanDesc.getType());
        }
    }
    
    public JsonDeserializer<?> build(final BeanProperty beanProperty) {
        final BeanPropertyMap beanPropertyMap = new BeanPropertyMap(this._properties.values());
        beanPropertyMap.assignIndexes();
        return new BeanDeserializer(this._beanDesc, beanProperty, this._valueInstantiator, beanPropertyMap, this._backRefProperties, this._ignorableProps, this._ignoreAllUnknown, this._anySetter, this._injectables);
    }
    
    public Iterator<SettableBeanProperty> getProperties() {
        return this._properties.values().iterator();
    }
    
    public ValueInstantiator getValueInstantiator() {
        return this._valueInstantiator;
    }
    
    public boolean hasProperty(final String key) {
        return this._properties.containsKey(key);
    }
    
    public SettableBeanProperty removeProperty(final String key) {
        return this._properties.remove(key);
    }
    
    public void setAnySetter(final SettableAnyProperty anySetter) {
        if (this._anySetter != null && anySetter != null) {
            throw new IllegalStateException("_anySetter already set to non-null");
        }
        this._anySetter = anySetter;
    }
    
    public void setIgnoreUnknownProperties(final boolean ignoreAllUnknown) {
        this._ignoreAllUnknown = ignoreAllUnknown;
    }
    
    public void setValueInstantiator(final ValueInstantiator valueInstantiator) {
        this._valueInstantiator = valueInstantiator;
    }
}
