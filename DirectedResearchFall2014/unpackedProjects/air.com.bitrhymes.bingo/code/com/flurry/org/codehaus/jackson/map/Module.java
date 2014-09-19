package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.map.ser.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class Module implements Versioned
{
    public abstract String getModuleName();
    
    public abstract void setupModule(final SetupContext p0);
    
    @Override
    public abstract Version version();
    
    public interface SetupContext
    {
        void addAbstractTypeResolver(AbstractTypeResolver p0);
        
        void addBeanDeserializerModifier(BeanDeserializerModifier p0);
        
        void addBeanSerializerModifier(BeanSerializerModifier p0);
        
        void addDeserializers(Deserializers p0);
        
        void addKeyDeserializers(KeyDeserializers p0);
        
        void addKeySerializers(Serializers p0);
        
        void addSerializers(Serializers p0);
        
        void addTypeModifier(TypeModifier p0);
        
        void addValueInstantiators(ValueInstantiators p0);
        
        void appendAnnotationIntrospector(AnnotationIntrospector p0);
        
        DeserializationConfig getDeserializationConfig();
        
        Version getMapperVersion();
        
        SerializationConfig getSerializationConfig();
        
        void insertAnnotationIntrospector(AnnotationIntrospector p0);
        
        boolean isEnabled(JsonGenerator.Feature p0);
        
        boolean isEnabled(JsonParser.Feature p0);
        
        boolean isEnabled(DeserializationConfig.Feature p0);
        
        boolean isEnabled(SerializationConfig.Feature p0);
        
        void setMixInAnnotations(Class<?> p0, Class<?> p1);
    }
}
