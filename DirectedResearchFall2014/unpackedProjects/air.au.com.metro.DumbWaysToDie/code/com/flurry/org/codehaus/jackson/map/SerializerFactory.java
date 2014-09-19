package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.ser.*;

public abstract class SerializerFactory
{
    public abstract JsonSerializer<Object> createKeySerializer(final SerializationConfig p0, final JavaType p1, final BeanProperty p2) throws JsonMappingException;
    
    public abstract JsonSerializer<Object> createSerializer(final SerializationConfig p0, final JavaType p1, final BeanProperty p2) throws JsonMappingException;
    
    @Deprecated
    public final JsonSerializer<Object> createSerializer(final JavaType javaType, final SerializationConfig serializationConfig) {
        try {
            return this.createSerializer(serializationConfig, javaType, null);
        }
        catch (JsonMappingException ex) {
            throw new RuntimeJsonMappingException(ex);
        }
    }
    
    public abstract TypeSerializer createTypeSerializer(final SerializationConfig p0, final JavaType p1, final BeanProperty p2) throws JsonMappingException;
    
    @Deprecated
    public final TypeSerializer createTypeSerializer(final JavaType javaType, final SerializationConfig serializationConfig) {
        try {
            return this.createTypeSerializer(serializationConfig, javaType, null);
        }
        catch (JsonMappingException cause) {
            throw new RuntimeException(cause);
        }
    }
    
    public abstract Config getConfig();
    
    public final SerializerFactory withAdditionalKeySerializers(final Serializers serializers) {
        return this.withConfig(this.getConfig().withAdditionalKeySerializers(serializers));
    }
    
    public final SerializerFactory withAdditionalSerializers(final Serializers serializers) {
        return this.withConfig(this.getConfig().withAdditionalSerializers(serializers));
    }
    
    public abstract SerializerFactory withConfig(final Config p0);
    
    public final SerializerFactory withSerializerModifier(final BeanSerializerModifier beanSerializerModifier) {
        return this.withConfig(this.getConfig().withSerializerModifier(beanSerializerModifier));
    }
    
    public abstract static class Config
    {
        public abstract boolean hasKeySerializers();
        
        public abstract boolean hasSerializerModifiers();
        
        public abstract boolean hasSerializers();
        
        public abstract Iterable<Serializers> keySerializers();
        
        public abstract Iterable<BeanSerializerModifier> serializerModifiers();
        
        public abstract Iterable<Serializers> serializers();
        
        public abstract Config withAdditionalKeySerializers(final Serializers p0);
        
        public abstract Config withAdditionalSerializers(final Serializers p0);
        
        public abstract Config withSerializerModifier(final BeanSerializerModifier p0);
    }
}
