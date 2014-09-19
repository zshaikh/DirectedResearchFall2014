package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.*;

public interface Deserializers
{
    JsonDeserializer<?> findArrayDeserializer(ArrayType p0, DeserializationConfig p1, DeserializerProvider p2, BeanProperty p3, TypeDeserializer p4, JsonDeserializer<?> p5) throws JsonMappingException;
    
    JsonDeserializer<?> findBeanDeserializer(JavaType p0, DeserializationConfig p1, DeserializerProvider p2, BeanDescription p3, BeanProperty p4) throws JsonMappingException;
    
    JsonDeserializer<?> findCollectionDeserializer(CollectionType p0, DeserializationConfig p1, DeserializerProvider p2, BeanDescription p3, BeanProperty p4, TypeDeserializer p5, JsonDeserializer<?> p6) throws JsonMappingException;
    
    JsonDeserializer<?> findCollectionLikeDeserializer(CollectionLikeType p0, DeserializationConfig p1, DeserializerProvider p2, BeanDescription p3, BeanProperty p4, TypeDeserializer p5, JsonDeserializer<?> p6) throws JsonMappingException;
    
    JsonDeserializer<?> findEnumDeserializer(Class<?> p0, DeserializationConfig p1, BeanDescription p2, BeanProperty p3) throws JsonMappingException;
    
    JsonDeserializer<?> findMapDeserializer(MapType p0, DeserializationConfig p1, DeserializerProvider p2, BeanDescription p3, BeanProperty p4, KeyDeserializer p5, TypeDeserializer p6, JsonDeserializer<?> p7) throws JsonMappingException;
    
    JsonDeserializer<?> findMapLikeDeserializer(MapLikeType p0, DeserializationConfig p1, DeserializerProvider p2, BeanDescription p3, BeanProperty p4, KeyDeserializer p5, TypeDeserializer p6, JsonDeserializer<?> p7) throws JsonMappingException;
    
    JsonDeserializer<?> findTreeNodeDeserializer(Class<? extends JsonNode> p0, DeserializationConfig p1, BeanProperty p2) throws JsonMappingException;
    
    public static class Base implements Deserializers
    {
        @Override
        public JsonDeserializer<?> findArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, DeserializerProvider deserializerProvider, BeanProperty beanProperty, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
            return null;
        }
        
        @Override
        public JsonDeserializer<?> findBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, DeserializerProvider deserializerProvider, BeanDescription beanDescription, BeanProperty beanProperty) throws JsonMappingException {
            return null;
        }
        
        @Override
        public JsonDeserializer<?> findCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, DeserializerProvider deserializerProvider, BeanDescription beanDescription, BeanProperty beanProperty, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
            return null;
        }
        
        @Override
        public JsonDeserializer<?> findCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, DeserializerProvider deserializerProvider, BeanDescription beanDescription, BeanProperty beanProperty, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
            return null;
        }
        
        @Override
        public JsonDeserializer<?> findEnumDeserializer(Class<?> clazz, DeserializationConfig deserializationConfig, BeanDescription beanDescription, BeanProperty beanProperty) throws JsonMappingException {
            return null;
        }
        
        @Override
        public JsonDeserializer<?> findMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, DeserializerProvider deserializerProvider, BeanDescription beanDescription, BeanProperty beanProperty, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
            return null;
        }
        
        @Override
        public JsonDeserializer<?> findMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, DeserializerProvider deserializerProvider, BeanDescription beanDescription, BeanProperty beanProperty, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
            return null;
        }
        
        @Override
        public JsonDeserializer<?> findTreeNodeDeserializer(Class<? extends JsonNode> clazz, DeserializationConfig deserializationConfig, BeanProperty beanProperty) throws JsonMappingException {
            return null;
        }
    }
    
    @Deprecated
    public static class None extends Base
    {
    }
}
