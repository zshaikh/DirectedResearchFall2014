package com.flurry.org.codehaus.jackson.map.module;

import java.util.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.*;

public class SimpleDeserializers implements Deserializers
{
    protected HashMap<ClassKey, JsonDeserializer<?>> _classMappings;
    
    public SimpleDeserializers() {
        super();
        this._classMappings = null;
    }
    
    public <T> void addDeserializer(final Class<T> clazz, final JsonDeserializer<? extends T> value) {
        final ClassKey key = new ClassKey(clazz);
        if (this._classMappings == null) {
            this._classMappings = new HashMap<ClassKey, JsonDeserializer<?>>();
        }
        this._classMappings.put(key, value);
    }
    
    @Override
    public JsonDeserializer<?> findArrayDeserializer(final ArrayType arrayType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BeanProperty beanProperty, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(arrayType.getRawClass()));
    }
    
    @Override
    public JsonDeserializer<?> findBeanDeserializer(final JavaType javaType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BeanDescription beanDescription, final BeanProperty beanProperty) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(javaType.getRawClass()));
    }
    
    @Override
    public JsonDeserializer<?> findCollectionDeserializer(final CollectionType collectionType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BeanDescription beanDescription, final BeanProperty beanProperty, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(collectionType.getRawClass()));
    }
    
    @Override
    public JsonDeserializer<?> findCollectionLikeDeserializer(final CollectionLikeType collectionLikeType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BeanDescription beanDescription, final BeanProperty beanProperty, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(collectionLikeType.getRawClass()));
    }
    
    @Override
    public JsonDeserializer<?> findEnumDeserializer(final Class<?> clazz, final DeserializationConfig deserializationConfig, final BeanDescription beanDescription, final BeanProperty beanProperty) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(clazz));
    }
    
    @Override
    public JsonDeserializer<?> findMapDeserializer(final MapType mapType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BeanDescription beanDescription, final BeanProperty beanProperty, final KeyDeserializer keyDeserializer, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(mapType.getRawClass()));
    }
    
    @Override
    public JsonDeserializer<?> findMapLikeDeserializer(final MapLikeType mapLikeType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BeanDescription beanDescription, final BeanProperty beanProperty, final KeyDeserializer keyDeserializer, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(mapLikeType.getRawClass()));
    }
    
    @Override
    public JsonDeserializer<?> findTreeNodeDeserializer(final Class<? extends JsonNode> clazz, final DeserializationConfig deserializationConfig, final BeanProperty beanProperty) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(clazz));
    }
}
