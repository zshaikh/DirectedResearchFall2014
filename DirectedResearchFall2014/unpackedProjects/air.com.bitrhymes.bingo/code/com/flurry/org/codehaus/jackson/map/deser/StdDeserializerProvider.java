package com.flurry.org.codehaus.jackson.map.deser;

import java.util.concurrent.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class StdDeserializerProvider extends DeserializerProvider
{
    protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _cachedDeserializers;
    protected DeserializerFactory _factory;
    protected final HashMap<JavaType, JsonDeserializer<Object>> _incompleteDeserializers;
    protected final RootNameLookup _rootNames;
    
    public StdDeserializerProvider() {
        this(BeanDeserializerFactory.instance);
    }
    
    public StdDeserializerProvider(final DeserializerFactory factory) {
        super();
        this._cachedDeserializers = new ConcurrentHashMap<JavaType, JsonDeserializer<Object>>(64, 0.75f, 2);
        this._incompleteDeserializers = new HashMap<JavaType, JsonDeserializer<Object>>(8);
        this._factory = factory;
        this._rootNames = new RootNameLookup();
    }
    
    protected JsonDeserializer<Object> _createAndCache2(final DeserializationConfig deserializationConfig, final JavaType key, final BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<Object> createDeserializer;
        try {
            createDeserializer = this._createDeserializer(deserializationConfig, key, beanProperty);
            if (createDeserializer == null) {
                return null;
            }
        }
        catch (IllegalArgumentException ex) {
            throw new JsonMappingException(ex.getMessage(), null, ex);
        }
        final boolean b = createDeserializer instanceof ResolvableDeserializer;
        boolean booleanValue;
        if (createDeserializer.getClass() == BeanDeserializer.class) {
            booleanValue = true;
        }
        else {
            booleanValue = false;
        }
        if (!booleanValue && deserializationConfig.isEnabled(DeserializationConfig.Feature.USE_ANNOTATIONS)) {
            final AnnotationIntrospector annotationIntrospector = deserializationConfig.getAnnotationIntrospector();
            final Boolean cachability = annotationIntrospector.findCachability(AnnotatedClass.construct(createDeserializer.getClass(), annotationIntrospector, null));
            if (cachability != null) {
                booleanValue = cachability;
            }
        }
        if (b) {
            this._incompleteDeserializers.put(key, createDeserializer);
            this._resolveDeserializer(deserializationConfig, (ResolvableDeserializer)createDeserializer);
            this._incompleteDeserializers.remove(key);
        }
        if (booleanValue) {
            this._cachedDeserializers.put(key, createDeserializer);
        }
        return createDeserializer;
    }
    
    protected JsonDeserializer<Object> _createAndCacheValueDeserializer(final DeserializationConfig deserializationConfig, final JavaType key, final BeanProperty beanProperty) throws JsonMappingException {
        synchronized (this._incompleteDeserializers) {
            final JsonDeserializer<Object> findCachedDeserializer = this._findCachedDeserializer(key);
            if (findCachedDeserializer != null) {
                return findCachedDeserializer;
            }
            final int size = this._incompleteDeserializers.size();
            if (size > 0) {
                final JsonDeserializer<Object> jsonDeserializer = this._incompleteDeserializers.get(key);
                if (jsonDeserializer != null) {
                    return jsonDeserializer;
                }
            }
            try {
                return this._createAndCache2(deserializationConfig, key, beanProperty);
            }
            finally {
                if (size == 0 && this._incompleteDeserializers.size() > 0) {
                    this._incompleteDeserializers.clear();
                }
            }
        }
    }
    
    protected JsonDeserializer<Object> _createDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        if (javaType.isEnumType()) {
            return (JsonDeserializer<Object>)this._factory.createEnumDeserializer(deserializationConfig, this, javaType, beanProperty);
        }
        if (javaType.isContainerType()) {
            if (javaType.isArrayType()) {
                return (JsonDeserializer<Object>)this._factory.createArrayDeserializer(deserializationConfig, this, (ArrayType)javaType, beanProperty);
            }
            if (javaType.isMapLikeType()) {
                final MapLikeType mapLikeType = (MapLikeType)javaType;
                if (mapLikeType.isTrueMapType()) {
                    return (JsonDeserializer<Object>)this._factory.createMapDeserializer(deserializationConfig, this, (MapType)mapLikeType, beanProperty);
                }
                return (JsonDeserializer<Object>)this._factory.createMapLikeDeserializer(deserializationConfig, this, mapLikeType, beanProperty);
            }
            else if (javaType.isCollectionLikeType()) {
                final CollectionLikeType collectionLikeType = (CollectionLikeType)javaType;
                if (collectionLikeType.isTrueCollectionType()) {
                    return (JsonDeserializer<Object>)this._factory.createCollectionDeserializer(deserializationConfig, this, (CollectionType)collectionLikeType, beanProperty);
                }
                return (JsonDeserializer<Object>)this._factory.createCollectionLikeDeserializer(deserializationConfig, this, collectionLikeType, beanProperty);
            }
        }
        if (JsonNode.class.isAssignableFrom(javaType.getRawClass())) {
            return (JsonDeserializer<Object>)this._factory.createTreeDeserializer(deserializationConfig, this, javaType, beanProperty);
        }
        return this._factory.createBeanDeserializer(deserializationConfig, this, javaType, beanProperty);
    }
    
    protected JsonDeserializer<Object> _findCachedDeserializer(final JavaType key) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        return this._cachedDeserializers.get(key);
    }
    
    protected KeyDeserializer _handleUnknownKeyDeserializer(final JavaType obj) throws JsonMappingException {
        throw new JsonMappingException("Can not find a (Map) Key deserializer for type " + obj);
    }
    
    protected JsonDeserializer<Object> _handleUnknownValueDeserializer(final JavaType javaType) throws JsonMappingException {
        if (!ClassUtil.isConcrete(javaType.getRawClass())) {
            throw new JsonMappingException("Can not find a Value deserializer for abstract type " + javaType);
        }
        throw new JsonMappingException("Can not find a Value deserializer for type " + javaType);
    }
    
    protected void _resolveDeserializer(final DeserializationConfig deserializationConfig, final ResolvableDeserializer resolvableDeserializer) throws JsonMappingException {
        resolvableDeserializer.resolve(deserializationConfig, this);
    }
    
    @Override
    public int cachedDeserializersCount() {
        return this._cachedDeserializers.size();
    }
    
    @Override
    public SerializedString findExpectedRootName(final DeserializationConfig deserializationConfig, final JavaType javaType) throws JsonMappingException {
        return this._rootNames.findRootName(javaType, deserializationConfig);
    }
    
    @Override
    public KeyDeserializer findKeyDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        KeyDeserializer keyDeserializer = this._factory.createKeyDeserializer(deserializationConfig, javaType, beanProperty);
        if (keyDeserializer instanceof ContextualKeyDeserializer) {
            keyDeserializer = ((ContextualKeyDeserializer)keyDeserializer).createContextual(deserializationConfig, beanProperty);
        }
        if (keyDeserializer == null) {
            return this._handleUnknownKeyDeserializer(javaType);
        }
        return keyDeserializer;
    }
    
    @Override
    public JsonDeserializer<Object> findTypedValueDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final JsonDeserializer<Object> valueDeserializer = this.findValueDeserializer(deserializationConfig, javaType, beanProperty);
        final TypeDeserializer typeDeserializer = this._factory.findTypeDeserializer(deserializationConfig, javaType, beanProperty);
        if (typeDeserializer != null) {
            return new WrappedDeserializer(typeDeserializer, valueDeserializer);
        }
        return valueDeserializer;
    }
    
    @Override
    public JsonDeserializer<Object> findValueDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<Object> jsonDeserializer = this._findCachedDeserializer(javaType);
        if (jsonDeserializer != null) {
            if (jsonDeserializer instanceof ContextualDeserializer) {
                jsonDeserializer = ((ContextualDeserializer<Object>)jsonDeserializer).createContextual(deserializationConfig, beanProperty);
            }
            return jsonDeserializer;
        }
        JsonDeserializer<Object> jsonDeserializer2 = this._createAndCacheValueDeserializer(deserializationConfig, javaType, beanProperty);
        if (jsonDeserializer2 == null) {
            jsonDeserializer2 = this._handleUnknownValueDeserializer(javaType);
        }
        if (jsonDeserializer2 instanceof ContextualDeserializer) {
            jsonDeserializer2 = ((ContextualDeserializer<Object>)jsonDeserializer2).createContextual(deserializationConfig, beanProperty);
        }
        return jsonDeserializer2;
    }
    
    @Override
    public void flushCachedDeserializers() {
        this._cachedDeserializers.clear();
    }
    
    @Override
    public boolean hasValueDeserializerFor(final DeserializationConfig deserializationConfig, final JavaType javaType) {
        JsonDeserializer<Object> jsonDeserializer = this._findCachedDeserializer(javaType);
        while (true) {
            if (jsonDeserializer == null) {
                try {
                    jsonDeserializer = this._createAndCacheValueDeserializer(deserializationConfig, javaType, null);
                    if (jsonDeserializer != null) {
                        return true;
                    }
                }
                catch (Exception ex) {
                    return false;
                }
                return false;
            }
            continue;
        }
    }
    
    @Override
    public JavaType mapAbstractType(final DeserializationConfig deserializationConfig, final JavaType javaType) throws JsonMappingException {
        return this._factory.mapAbstractType(deserializationConfig, javaType);
    }
    
    @Override
    public DeserializerProvider withAbstractTypeResolver(final AbstractTypeResolver abstractTypeResolver) {
        return this.withFactory(this._factory.withAbstractTypeResolver(abstractTypeResolver));
    }
    
    @Override
    public DeserializerProvider withAdditionalDeserializers(final Deserializers deserializers) {
        return this.withFactory(this._factory.withAdditionalDeserializers(deserializers));
    }
    
    @Override
    public DeserializerProvider withAdditionalKeyDeserializers(final KeyDeserializers keyDeserializers) {
        return this.withFactory(this._factory.withAdditionalKeyDeserializers(keyDeserializers));
    }
    
    @Override
    public DeserializerProvider withDeserializerModifier(final BeanDeserializerModifier beanDeserializerModifier) {
        return this.withFactory(this._factory.withDeserializerModifier(beanDeserializerModifier));
    }
    
    @Override
    public StdDeserializerProvider withFactory(final DeserializerFactory deserializerFactory) {
        if (this.getClass() != StdDeserializerProvider.class) {
            throw new IllegalStateException("DeserializerProvider of type " + this.getClass().getName() + " does not override 'withFactory()' method");
        }
        return new StdDeserializerProvider(deserializerFactory);
    }
    
    @Override
    public DeserializerProvider withValueInstantiators(final ValueInstantiators valueInstantiators) {
        return this.withFactory(this._factory.withValueInstantiators(valueInstantiators));
    }
    
    protected static final class WrappedDeserializer extends JsonDeserializer<Object>
    {
        final JsonDeserializer<Object> _deserializer;
        final TypeDeserializer _typeDeserializer;
        
        public WrappedDeserializer(final TypeDeserializer typeDeserializer, final JsonDeserializer<Object> deserializer) {
            super();
            this._typeDeserializer = typeDeserializer;
            this._deserializer = deserializer;
        }
        
        @Override
        public Object deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return this._deserializer.deserializeWithType(jsonParser, deserializationContext, this._typeDeserializer);
        }
        
        @Override
        public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
            throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
        }
    }
}
