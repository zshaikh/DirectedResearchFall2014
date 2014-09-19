package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.deser.*;

public abstract class DeserializerFactory
{
    protected static final Deserializers[] NO_DESERIALIZERS;
    
    static {
        NO_DESERIALIZERS = new Deserializers[0];
    }
    
    public abstract JsonDeserializer<?> createArrayDeserializer(final DeserializationConfig p0, final DeserializerProvider p1, final ArrayType p2, final BeanProperty p3) throws JsonMappingException;
    
    public abstract JsonDeserializer<Object> createBeanDeserializer(final DeserializationConfig p0, final DeserializerProvider p1, final JavaType p2, final BeanProperty p3) throws JsonMappingException;
    
    public abstract JsonDeserializer<?> createCollectionDeserializer(final DeserializationConfig p0, final DeserializerProvider p1, final CollectionType p2, final BeanProperty p3) throws JsonMappingException;
    
    public abstract JsonDeserializer<?> createCollectionLikeDeserializer(final DeserializationConfig p0, final DeserializerProvider p1, final CollectionLikeType p2, final BeanProperty p3) throws JsonMappingException;
    
    public abstract JsonDeserializer<?> createEnumDeserializer(final DeserializationConfig p0, final DeserializerProvider p1, final JavaType p2, final BeanProperty p3) throws JsonMappingException;
    
    public KeyDeserializer createKeyDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        return null;
    }
    
    public abstract JsonDeserializer<?> createMapDeserializer(final DeserializationConfig p0, final DeserializerProvider p1, final MapType p2, final BeanProperty p3) throws JsonMappingException;
    
    public abstract JsonDeserializer<?> createMapLikeDeserializer(final DeserializationConfig p0, final DeserializerProvider p1, final MapLikeType p2, final BeanProperty p3) throws JsonMappingException;
    
    public abstract JsonDeserializer<?> createTreeDeserializer(final DeserializationConfig p0, final DeserializerProvider p1, final JavaType p2, final BeanProperty p3) throws JsonMappingException;
    
    public TypeDeserializer findTypeDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        return null;
    }
    
    public abstract ValueInstantiator findValueInstantiator(final DeserializationConfig p0, final BasicBeanDescription p1) throws JsonMappingException;
    
    public abstract Config getConfig();
    
    public abstract JavaType mapAbstractType(final DeserializationConfig p0, final JavaType p1) throws JsonMappingException;
    
    public final DeserializerFactory withAbstractTypeResolver(final AbstractTypeResolver abstractTypeResolver) {
        return this.withConfig(this.getConfig().withAbstractTypeResolver(abstractTypeResolver));
    }
    
    public final DeserializerFactory withAdditionalDeserializers(final Deserializers deserializers) {
        return this.withConfig(this.getConfig().withAdditionalDeserializers(deserializers));
    }
    
    public final DeserializerFactory withAdditionalKeyDeserializers(final KeyDeserializers keyDeserializers) {
        return this.withConfig(this.getConfig().withAdditionalKeyDeserializers(keyDeserializers));
    }
    
    public abstract DeserializerFactory withConfig(final Config p0);
    
    public final DeserializerFactory withDeserializerModifier(final BeanDeserializerModifier beanDeserializerModifier) {
        return this.withConfig(this.getConfig().withDeserializerModifier(beanDeserializerModifier));
    }
    
    public final DeserializerFactory withValueInstantiators(final ValueInstantiators valueInstantiators) {
        return this.withConfig(this.getConfig().withValueInstantiators(valueInstantiators));
    }
    
    public abstract static class Config
    {
        public abstract Iterable<AbstractTypeResolver> abstractTypeResolvers();
        
        public abstract Iterable<BeanDeserializerModifier> deserializerModifiers();
        
        public abstract Iterable<Deserializers> deserializers();
        
        public abstract boolean hasAbstractTypeResolvers();
        
        public abstract boolean hasDeserializerModifiers();
        
        public abstract boolean hasDeserializers();
        
        public abstract boolean hasKeyDeserializers();
        
        public abstract boolean hasValueInstantiators();
        
        public abstract Iterable<KeyDeserializers> keyDeserializers();
        
        public abstract Iterable<ValueInstantiators> valueInstantiators();
        
        public abstract Config withAbstractTypeResolver(final AbstractTypeResolver p0);
        
        public abstract Config withAdditionalDeserializers(final Deserializers p0);
        
        public abstract Config withAdditionalKeyDeserializers(final KeyDeserializers p0);
        
        public abstract Config withDeserializerModifier(final BeanDeserializerModifier p0);
        
        public abstract Config withValueInstantiators(final ValueInstantiators p0);
    }
}
