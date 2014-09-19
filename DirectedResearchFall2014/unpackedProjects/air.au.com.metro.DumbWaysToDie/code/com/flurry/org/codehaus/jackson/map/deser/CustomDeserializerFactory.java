package com.flurry.org.codehaus.jackson.map.deser;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.type.*;

@Deprecated
public class CustomDeserializerFactory extends BeanDeserializerFactory
{
    protected HashMap<ClassKey, JsonDeserializer<Object>> _directClassMappings;
    protected HashMap<ClassKey, Class<?>> _mixInAnnotations;
    
    public CustomDeserializerFactory() {
        this(null);
    }
    
    protected CustomDeserializerFactory(final Config config) {
        super(config);
        this._directClassMappings = null;
    }
    
    public void addMixInAnnotationMapping(final Class<?> clazz, final Class<?> value) {
        if (this._mixInAnnotations == null) {
            this._mixInAnnotations = new HashMap<ClassKey, Class<?>>();
        }
        this._mixInAnnotations.put(new ClassKey(clazz), value);
    }
    
    public <T> void addSpecificMapping(final Class<T> clazz, final JsonDeserializer<? extends T> value) {
        final ClassKey key = new ClassKey(clazz);
        if (this._directClassMappings == null) {
            this._directClassMappings = new HashMap<ClassKey, JsonDeserializer<Object>>();
        }
        this._directClassMappings.put(key, (JsonDeserializer<Object>)value);
    }
    
    @Override
    public JsonDeserializer<?> createArrayDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final ArrayType arrayType, final BeanProperty beanProperty) throws JsonMappingException {
        final ClassKey key = new ClassKey(arrayType.getRawClass());
        if (this._directClassMappings != null) {
            final JsonDeserializer<Object> jsonDeserializer = this._directClassMappings.get(key);
            if (jsonDeserializer != null) {
                return jsonDeserializer;
            }
        }
        return super.createArrayDeserializer(deserializationConfig, deserializerProvider, arrayType, beanProperty);
    }
    
    @Override
    public JsonDeserializer<Object> createBeanDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final ClassKey key = new ClassKey(javaType.getRawClass());
        if (this._directClassMappings != null) {
            final JsonDeserializer<Object> jsonDeserializer = this._directClassMappings.get(key);
            if (jsonDeserializer != null) {
                return jsonDeserializer;
            }
        }
        return super.createBeanDeserializer(deserializationConfig, deserializerProvider, javaType, beanProperty);
    }
    
    @Override
    public JsonDeserializer<?> createEnumDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        if (this._directClassMappings != null) {
            final JsonDeserializer<Object> jsonDeserializer = this._directClassMappings.get(new ClassKey(javaType.getRawClass()));
            if (jsonDeserializer != null) {
                return jsonDeserializer;
            }
        }
        return super.createEnumDeserializer(deserializationConfig, deserializerProvider, javaType, beanProperty);
    }
    
    @Override
    public DeserializerFactory withConfig(final Config config) {
        if (this.getClass() != CustomDeserializerFactory.class) {
            throw new IllegalStateException("Subtype of CustomDeserializerFactory (" + this.getClass().getName() + ") has not properly overridden method 'withAdditionalDeserializers': can not instantiate subtype with " + "additional deserializer definitions");
        }
        return new CustomDeserializerFactory(config);
    }
}
