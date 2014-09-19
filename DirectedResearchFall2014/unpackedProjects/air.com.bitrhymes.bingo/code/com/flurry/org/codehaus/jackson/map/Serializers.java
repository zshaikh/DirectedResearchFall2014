package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.type.*;

public interface Serializers
{
    JsonSerializer<?> findArraySerializer(SerializationConfig p0, ArrayType p1, BeanDescription p2, BeanProperty p3, TypeSerializer p4, JsonSerializer<Object> p5);
    
    JsonSerializer<?> findCollectionLikeSerializer(SerializationConfig p0, CollectionLikeType p1, BeanDescription p2, BeanProperty p3, TypeSerializer p4, JsonSerializer<Object> p5);
    
    JsonSerializer<?> findCollectionSerializer(SerializationConfig p0, CollectionType p1, BeanDescription p2, BeanProperty p3, TypeSerializer p4, JsonSerializer<Object> p5);
    
    JsonSerializer<?> findMapLikeSerializer(SerializationConfig p0, MapLikeType p1, BeanDescription p2, BeanProperty p3, JsonSerializer<Object> p4, TypeSerializer p5, JsonSerializer<Object> p6);
    
    JsonSerializer<?> findMapSerializer(SerializationConfig p0, MapType p1, BeanDescription p2, BeanProperty p3, JsonSerializer<Object> p4, TypeSerializer p5, JsonSerializer<Object> p6);
    
    JsonSerializer<?> findSerializer(SerializationConfig p0, JavaType p1, BeanDescription p2, BeanProperty p3);
    
    public static class Base implements Serializers
    {
        @Override
        public JsonSerializer<?> findArraySerializer(SerializationConfig serializationConfig, ArrayType arrayType, BeanDescription beanDescription, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
            return null;
        }
        
        @Override
        public JsonSerializer<?> findCollectionLikeSerializer(SerializationConfig serializationConfig, CollectionLikeType collectionLikeType, BeanDescription beanDescription, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
            return null;
        }
        
        @Override
        public JsonSerializer<?> findCollectionSerializer(SerializationConfig serializationConfig, CollectionType collectionType, BeanDescription beanDescription, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
            return null;
        }
        
        @Override
        public JsonSerializer<?> findMapLikeSerializer(SerializationConfig serializationConfig, MapLikeType mapLikeType, BeanDescription beanDescription, BeanProperty beanProperty, JsonSerializer<Object> jsonSerializer, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer2) {
            return null;
        }
        
        @Override
        public JsonSerializer<?> findMapSerializer(SerializationConfig serializationConfig, MapType mapType, BeanDescription beanDescription, BeanProperty beanProperty, JsonSerializer<Object> jsonSerializer, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer2) {
            return null;
        }
        
        @Override
        public JsonSerializer<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, BeanProperty beanProperty) {
            return null;
        }
    }
    
    @Deprecated
    public static class None extends Base
    {
    }
}
