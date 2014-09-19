package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.ext.*;
import java.util.concurrent.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.concurrent.atomic.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;

public abstract class BasicDeserializerFactory extends DeserializerFactory
{
    protected static final HashMap<JavaType, JsonDeserializer<Object>> _arrayDeserializers;
    static final HashMap<String, Class<? extends Collection>> _collectionFallbacks;
    static final HashMap<JavaType, KeyDeserializer> _keyDeserializers;
    static final HashMap<String, Class<? extends Map>> _mapFallbacks;
    static final HashMap<ClassKey, JsonDeserializer<Object>> _simpleDeserializers;
    protected OptionalHandlerFactory optionalHandlers;
    
    static {
        _simpleDeserializers = StdDeserializers.constructAll();
        _keyDeserializers = StdKeyDeserializers.constructAll();
        (_mapFallbacks = new HashMap<String, Class<? extends Map>>()).put(Map.class.getName(), LinkedHashMap.class);
        BasicDeserializerFactory._mapFallbacks.put(ConcurrentMap.class.getName(), ConcurrentHashMap.class);
        BasicDeserializerFactory._mapFallbacks.put(SortedMap.class.getName(), TreeMap.class);
        BasicDeserializerFactory._mapFallbacks.put("java.util.NavigableMap", TreeMap.class);
        while (true) {
            try {
                BasicDeserializerFactory._mapFallbacks.put(Class.forName("java.util.ConcurrentNavigableMap").getName(), (Class<? extends Map>)Class.forName("java.util.ConcurrentSkipListMap"));
                (_collectionFallbacks = new HashMap<String, Class<? extends Collection>>()).put(Collection.class.getName(), ArrayList.class);
                BasicDeserializerFactory._collectionFallbacks.put(List.class.getName(), ArrayList.class);
                BasicDeserializerFactory._collectionFallbacks.put(Set.class.getName(), HashSet.class);
                BasicDeserializerFactory._collectionFallbacks.put(SortedSet.class.getName(), TreeSet.class);
                BasicDeserializerFactory._collectionFallbacks.put(Queue.class.getName(), LinkedList.class);
                BasicDeserializerFactory._collectionFallbacks.put("java.util.Deque", LinkedList.class);
                BasicDeserializerFactory._collectionFallbacks.put("java.util.NavigableSet", TreeSet.class);
                _arrayDeserializers = PrimitiveArrayDeserializers.getAll();
            }
            catch (ClassNotFoundException ex) {
                continue;
            }
            break;
        }
    }
    
    protected BasicDeserializerFactory() {
        super();
        this.optionalHandlers = OptionalHandlerFactory.instance;
    }
    
    JsonDeserializer<Object> _constructDeserializer(final DeserializationConfig deserializationConfig, final Annotated annotated, final BeanProperty beanProperty, final Object o) throws JsonMappingException {
        JsonDeserializer<Object> jsonDeserializer;
        if (o instanceof JsonDeserializer) {
            jsonDeserializer = (JsonDeserializer<Object>)o;
            if (jsonDeserializer instanceof ContextualDeserializer) {
                jsonDeserializer = ((ContextualDeserializer<Object>)jsonDeserializer).createContextual(deserializationConfig, beanProperty);
            }
        }
        else {
            if (!(o instanceof Class)) {
                throw new IllegalStateException("AnnotationIntrospector returned deserializer definition of type " + o.getClass().getName() + "; expected type JsonDeserializer or Class<JsonDeserializer> instead");
            }
            final Class clazz = (Class)o;
            if (!JsonDeserializer.class.isAssignableFrom(clazz)) {
                throw new IllegalStateException("AnnotationIntrospector returned Class " + clazz.getName() + "; expected Class<JsonDeserializer>");
            }
            jsonDeserializer = deserializationConfig.deserializerInstance(annotated, clazz);
            if (jsonDeserializer instanceof ContextualDeserializer) {
                return ((ContextualDeserializer<Object>)jsonDeserializer).createContextual(deserializationConfig, beanProperty);
            }
        }
        return jsonDeserializer;
    }
    
    protected abstract JsonDeserializer<?> _findCustomArrayDeserializer(final ArrayType p0, final DeserializationConfig p1, final DeserializerProvider p2, final BeanProperty p3, final TypeDeserializer p4, final JsonDeserializer<?> p5) throws JsonMappingException;
    
    protected abstract JsonDeserializer<?> _findCustomCollectionDeserializer(final CollectionType p0, final DeserializationConfig p1, final DeserializerProvider p2, final BasicBeanDescription p3, final BeanProperty p4, final TypeDeserializer p5, final JsonDeserializer<?> p6) throws JsonMappingException;
    
    protected abstract JsonDeserializer<?> _findCustomCollectionLikeDeserializer(final CollectionLikeType p0, final DeserializationConfig p1, final DeserializerProvider p2, final BasicBeanDescription p3, final BeanProperty p4, final TypeDeserializer p5, final JsonDeserializer<?> p6) throws JsonMappingException;
    
    protected abstract JsonDeserializer<?> _findCustomEnumDeserializer(final Class<?> p0, final DeserializationConfig p1, final BasicBeanDescription p2, final BeanProperty p3) throws JsonMappingException;
    
    protected abstract JsonDeserializer<?> _findCustomMapDeserializer(final MapType p0, final DeserializationConfig p1, final DeserializerProvider p2, final BasicBeanDescription p3, final BeanProperty p4, final KeyDeserializer p5, final TypeDeserializer p6, final JsonDeserializer<?> p7) throws JsonMappingException;
    
    protected abstract JsonDeserializer<?> _findCustomMapLikeDeserializer(final MapLikeType p0, final DeserializationConfig p1, final DeserializerProvider p2, final BasicBeanDescription p3, final BeanProperty p4, final KeyDeserializer p5, final TypeDeserializer p6, final JsonDeserializer<?> p7) throws JsonMappingException;
    
    protected abstract JsonDeserializer<?> _findCustomTreeNodeDeserializer(final Class<? extends JsonNode> p0, final DeserializationConfig p1, final BeanProperty p2) throws JsonMappingException;
    
    protected EnumResolver<?> constructEnumResolver(final Class<?> clazz, final DeserializationConfig deserializationConfig) {
        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.READ_ENUMS_USING_TO_STRING)) {
            return EnumResolver.constructUnsafeUsingToString(clazz);
        }
        return EnumResolver.constructUnsafe(clazz, deserializationConfig.getAnnotationIntrospector());
    }
    
    @Override
    public JsonDeserializer<?> createArrayDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final ArrayType obj, final BeanProperty beanProperty) throws JsonMappingException {
        final JavaType contentType = obj.getContentType();
        JsonDeserializer<?> valueDeserializer = contentType.getValueHandler();
        if (valueDeserializer == null) {
            final JsonDeserializer<Object> jsonDeserializer = BasicDeserializerFactory._arrayDeserializers.get(contentType);
            if (jsonDeserializer != null) {
                final JsonDeserializer<?> findCustomArrayDeserializer = this._findCustomArrayDeserializer(obj, deserializationConfig, deserializerProvider, beanProperty, null, null);
                if (findCustomArrayDeserializer != null) {
                    return findCustomArrayDeserializer;
                }
                return jsonDeserializer;
            }
            else if (contentType.isPrimitive()) {
                throw new IllegalArgumentException("Internal error: primitive type (" + obj + ") passed, no array deserializer found");
            }
        }
        TypeDeserializer typeDeserializer = contentType.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = this.findTypeDeserializer(deserializationConfig, contentType, beanProperty);
        }
        final JsonDeserializer<?> findCustomArrayDeserializer2 = this._findCustomArrayDeserializer(obj, deserializationConfig, deserializerProvider, beanProperty, typeDeserializer, valueDeserializer);
        if (findCustomArrayDeserializer2 != null) {
            return findCustomArrayDeserializer2;
        }
        if (valueDeserializer == null) {
            valueDeserializer = deserializerProvider.findValueDeserializer(deserializationConfig, contentType, beanProperty);
        }
        return new ObjectArrayDeserializer(obj, (JsonDeserializer<Object>)valueDeserializer, typeDeserializer);
    }
    
    @Override
    public JsonDeserializer<?> createCollectionDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final CollectionType collectionType, final BeanProperty beanProperty) throws JsonMappingException {
        final CollectionType collectionType2 = (CollectionType)this.mapAbstractType(deserializationConfig, collectionType);
        final Class<?> rawClass = collectionType2.getRawClass();
        BasicBeanDescription basicBeanDescription = deserializationConfig.introspectForCreation(collectionType2);
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
        if (deserializerFromAnnotation != null) {
            return deserializerFromAnnotation;
        }
        CollectionType obj = this.modifyTypeByAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), collectionType2, null);
        final JavaType contentType = obj.getContentType();
        JsonDeserializer<?> valueDeserializer = contentType.getValueHandler();
        TypeDeserializer typeDeserializer = contentType.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = this.findTypeDeserializer(deserializationConfig, contentType, beanProperty);
        }
        final JsonDeserializer<?> findCustomCollectionDeserializer = this._findCustomCollectionDeserializer(obj, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty, typeDeserializer, valueDeserializer);
        if (findCustomCollectionDeserializer != null) {
            return findCustomCollectionDeserializer;
        }
        if (valueDeserializer == null) {
            if (EnumSet.class.isAssignableFrom(rawClass)) {
                return new EnumSetDeserializer(contentType.getRawClass(), this.createEnumDeserializer(deserializationConfig, deserializerProvider, contentType, beanProperty));
            }
            valueDeserializer = deserializerProvider.findValueDeserializer(deserializationConfig, contentType, beanProperty);
        }
        if (obj.isInterface() || obj.isAbstract()) {
            final Class<? extends Collection> clazz = BasicDeserializerFactory._collectionFallbacks.get(rawClass.getName());
            if (clazz == null) {
                throw new IllegalArgumentException("Can not find a deserializer for non-concrete Collection type " + obj);
            }
            obj = (CollectionType)deserializationConfig.constructSpecializedType(obj, clazz);
            basicBeanDescription = (BasicBeanDescription)deserializationConfig.introspectForCreation(obj);
        }
        final ValueInstantiator valueInstantiator = this.findValueInstantiator(deserializationConfig, basicBeanDescription);
        if (contentType.getRawClass() == String.class) {
            return new StringCollectionDeserializer(obj, valueDeserializer, valueInstantiator);
        }
        return new CollectionDeserializer(obj, (JsonDeserializer<Object>)valueDeserializer, typeDeserializer, valueInstantiator);
    }
    
    @Override
    public JsonDeserializer<?> createCollectionLikeDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final CollectionLikeType collectionLikeType, final BeanProperty beanProperty) throws JsonMappingException {
        final CollectionLikeType collectionLikeType2 = (CollectionLikeType)this.mapAbstractType(deserializationConfig, collectionLikeType);
        final BasicBeanDescription basicBeanDescription = deserializationConfig.introspectClassAnnotations(collectionLikeType2.getRawClass());
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
        if (deserializerFromAnnotation != null) {
            return deserializerFromAnnotation;
        }
        final CollectionLikeType collectionLikeType3 = this.modifyTypeByAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), collectionLikeType2, null);
        final JavaType contentType = collectionLikeType3.getContentType();
        final JsonDeserializer<?> jsonDeserializer = contentType.getValueHandler();
        TypeDeserializer typeDeserializer = contentType.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = this.findTypeDeserializer(deserializationConfig, contentType, beanProperty);
        }
        return this._findCustomCollectionLikeDeserializer(collectionLikeType3, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty, typeDeserializer, jsonDeserializer);
    }
    
    @Override
    public JsonDeserializer<?> createEnumDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final BasicBeanDescription basicBeanDescription = deserializationConfig.introspectForCreation(javaType);
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
        if (deserializerFromAnnotation != null) {
            return deserializerFromAnnotation;
        }
        final Class<?> rawClass = javaType.getRawClass();
        final JsonDeserializer<?> findCustomEnumDeserializer = this._findCustomEnumDeserializer(rawClass, deserializationConfig, basicBeanDescription, beanProperty);
        if (findCustomEnumDeserializer != null) {
            return findCustomEnumDeserializer;
        }
        for (final AnnotatedMethod obj : basicBeanDescription.getFactoryMethods()) {
            if (deserializationConfig.getAnnotationIntrospector().hasCreatorAnnotation(obj)) {
                if (obj.getParameterCount() == 1 && obj.getRawType().isAssignableFrom(rawClass)) {
                    return EnumDeserializer.deserializerForCreator(deserializationConfig, rawClass, obj);
                }
                throw new IllegalArgumentException("Unsuitable method (" + obj + ") decorated with @JsonCreator (for Enum type " + rawClass.getName() + ")");
            }
        }
        return new EnumDeserializer(this.constructEnumResolver(rawClass, deserializationConfig));
    }
    
    @Override
    public JsonDeserializer<?> createMapDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final MapType mapType, final BeanProperty beanProperty) throws JsonMappingException {
        final MapType mapType2 = (MapType)this.mapAbstractType(deserializationConfig, mapType);
        BasicBeanDescription basicBeanDescription = deserializationConfig.introspectForCreation(mapType2);
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
        if (deserializerFromAnnotation != null) {
            return deserializerFromAnnotation;
        }
        MapType obj = this.modifyTypeByAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), mapType2, null);
        final JavaType keyType = obj.getKeyType();
        final JavaType contentType = obj.getContentType();
        JsonDeserializer<?> valueDeserializer = contentType.getValueHandler();
        KeyDeserializer keyDeserializer = keyType.getValueHandler();
        if (keyDeserializer == null) {
            keyDeserializer = deserializerProvider.findKeyDeserializer(deserializationConfig, keyType, beanProperty);
        }
        TypeDeserializer typeDeserializer = contentType.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = this.findTypeDeserializer(deserializationConfig, contentType, beanProperty);
        }
        final JsonDeserializer<?> findCustomMapDeserializer = this._findCustomMapDeserializer(obj, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty, keyDeserializer, typeDeserializer, valueDeserializer);
        if (findCustomMapDeserializer != null) {
            return findCustomMapDeserializer;
        }
        if (valueDeserializer == null) {
            valueDeserializer = deserializerProvider.findValueDeserializer(deserializationConfig, contentType, beanProperty);
        }
        final Class<?> rawClass = obj.getRawClass();
        if (!EnumMap.class.isAssignableFrom(rawClass)) {
            if (obj.isInterface() || obj.isAbstract()) {
                final Class<? extends Map> clazz = BasicDeserializerFactory._mapFallbacks.get(rawClass.getName());
                if (clazz == null) {
                    throw new IllegalArgumentException("Can not find a deserializer for non-concrete Map type " + obj);
                }
                obj = (MapType)deserializationConfig.constructSpecializedType(obj, clazz);
                basicBeanDescription = (BasicBeanDescription)deserializationConfig.introspectForCreation(obj);
            }
            final MapDeserializer mapDeserializer = new MapDeserializer(obj, this.findValueInstantiator(deserializationConfig, basicBeanDescription), keyDeserializer, (JsonDeserializer<Object>)valueDeserializer, typeDeserializer);
            mapDeserializer.setIgnorableProperties(deserializationConfig.getAnnotationIntrospector().findPropertiesToIgnore(basicBeanDescription.getClassInfo()));
            return mapDeserializer;
        }
        final Class<?> rawClass2 = keyType.getRawClass();
        if (rawClass2 == null || !rawClass2.isEnum()) {
            throw new IllegalArgumentException("Can not construct EnumMap; generic (key) type not available");
        }
        return new EnumMapDeserializer(keyType.getRawClass(), this.createEnumDeserializer(deserializationConfig, deserializerProvider, keyType, beanProperty), (JsonDeserializer<Object>)valueDeserializer);
    }
    
    @Override
    public JsonDeserializer<?> createMapLikeDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final MapLikeType mapLikeType, final BeanProperty beanProperty) throws JsonMappingException {
        final MapLikeType mapLikeType2 = (MapLikeType)this.mapAbstractType(deserializationConfig, mapLikeType);
        final BasicBeanDescription basicBeanDescription = deserializationConfig.introspectForCreation(mapLikeType2);
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
        if (deserializerFromAnnotation != null) {
            return deserializerFromAnnotation;
        }
        final MapLikeType mapLikeType3 = this.modifyTypeByAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), mapLikeType2, null);
        final JavaType keyType = mapLikeType3.getKeyType();
        final JavaType contentType = mapLikeType3.getContentType();
        final JsonDeserializer<?> jsonDeserializer = contentType.getValueHandler();
        KeyDeserializer keyDeserializer = keyType.getValueHandler();
        if (keyDeserializer == null) {
            keyDeserializer = deserializerProvider.findKeyDeserializer(deserializationConfig, keyType, beanProperty);
        }
        TypeDeserializer typeDeserializer = contentType.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = this.findTypeDeserializer(deserializationConfig, contentType, beanProperty);
        }
        return this._findCustomMapLikeDeserializer(mapLikeType3, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty, keyDeserializer, typeDeserializer, jsonDeserializer);
    }
    
    @Override
    public JsonDeserializer<?> createTreeDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final Class<?> rawClass = javaType.getRawClass();
        final JsonDeserializer<?> findCustomTreeNodeDeserializer = this._findCustomTreeNodeDeserializer((Class<? extends JsonNode>)rawClass, deserializationConfig, beanProperty);
        if (findCustomTreeNodeDeserializer != null) {
            return findCustomTreeNodeDeserializer;
        }
        return JsonNodeDeserializer.getDeserializer(rawClass);
    }
    
    protected JsonDeserializer<Object> findDeserializerFromAnnotation(final DeserializationConfig deserializationConfig, final Annotated annotated, final BeanProperty beanProperty) throws JsonMappingException {
        final Object deserializer = deserializationConfig.getAnnotationIntrospector().findDeserializer(annotated);
        if (deserializer != null) {
            return this._constructDeserializer(deserializationConfig, annotated, beanProperty, deserializer);
        }
        return null;
    }
    
    public TypeDeserializer findPropertyContentTypeDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final AnnotatedMember annotatedMember, final BeanProperty beanProperty) throws JsonMappingException {
        final AnnotationIntrospector annotationIntrospector = deserializationConfig.getAnnotationIntrospector();
        final TypeResolverBuilder<?> propertyContentTypeResolver = annotationIntrospector.findPropertyContentTypeResolver(deserializationConfig, annotatedMember, javaType);
        final JavaType contentType = javaType.getContentType();
        if (propertyContentTypeResolver == null) {
            return this.findTypeDeserializer(deserializationConfig, contentType, beanProperty);
        }
        return propertyContentTypeResolver.buildTypeDeserializer(deserializationConfig, contentType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypes(annotatedMember, deserializationConfig, annotationIntrospector), beanProperty);
    }
    
    public TypeDeserializer findPropertyTypeDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final AnnotatedMember annotatedMember, final BeanProperty beanProperty) throws JsonMappingException {
        final AnnotationIntrospector annotationIntrospector = deserializationConfig.getAnnotationIntrospector();
        final TypeResolverBuilder<?> propertyTypeResolver = annotationIntrospector.findPropertyTypeResolver(deserializationConfig, annotatedMember, javaType);
        if (propertyTypeResolver == null) {
            return this.findTypeDeserializer(deserializationConfig, javaType, beanProperty);
        }
        return propertyTypeResolver.buildTypeDeserializer(deserializationConfig, javaType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypes(annotatedMember, deserializationConfig, annotationIntrospector), beanProperty);
    }
    
    protected JsonDeserializer<Object> findStdBeanDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final Class<?> rawClass = javaType.getRawClass();
        final JsonDeserializer<Object> jsonDeserializer = BasicDeserializerFactory._simpleDeserializers.get(new ClassKey(rawClass));
        if (jsonDeserializer != null) {
            return jsonDeserializer;
        }
        if (AtomicReference.class.isAssignableFrom(rawClass)) {
            final JavaType[] typeParameters = deserializationConfig.getTypeFactory().findTypeParameters(javaType, AtomicReference.class);
            JavaType unknownType;
            if (typeParameters == null || typeParameters.length < 1) {
                unknownType = TypeFactory.unknownType();
            }
            else {
                unknownType = typeParameters[0];
            }
            return (JsonDeserializer<Object>)new AtomicReferenceDeserializer(unknownType, beanProperty);
        }
        final JsonDeserializer<?> deserializer = this.optionalHandlers.findDeserializer(javaType, deserializationConfig, deserializerProvider);
        if (deserializer != null) {
            return (JsonDeserializer<Object>)deserializer;
        }
        return null;
    }
    
    @Override
    public TypeDeserializer findTypeDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final AnnotatedClass classInfo = deserializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        final AnnotationIntrospector annotationIntrospector = deserializationConfig.getAnnotationIntrospector();
        Object o = annotationIntrospector.findTypeResolver(deserializationConfig, classInfo, javaType);
        Collection<NamedType> collectAndResolveSubtypes;
        if (o == null) {
            o = deserializationConfig.getDefaultTyper(javaType);
            collectAndResolveSubtypes = null;
            if (o == null) {
                return null;
            }
        }
        else {
            collectAndResolveSubtypes = deserializationConfig.getSubtypeResolver().collectAndResolveSubtypes(classInfo, deserializationConfig, annotationIntrospector);
        }
        if (((TypeResolverBuilder)o).getDefaultImpl() == null && javaType.isAbstract()) {
            final JavaType mapAbstractType = this.mapAbstractType(deserializationConfig, javaType);
            if (mapAbstractType != null && mapAbstractType.getRawClass() != javaType.getRawClass()) {
                o = ((TypeResolverBuilder<?>)o).defaultImpl(mapAbstractType.getRawClass());
            }
        }
        return ((TypeResolverBuilder)o).buildTypeDeserializer(deserializationConfig, javaType, collectAndResolveSubtypes, beanProperty);
    }
    
    @Override
    public abstract ValueInstantiator findValueInstantiator(final DeserializationConfig p0, final BasicBeanDescription p1) throws JsonMappingException;
    
    @Override
    public abstract JavaType mapAbstractType(final DeserializationConfig p0, final JavaType p1) throws JsonMappingException;
    
    protected <T extends JavaType> T modifyTypeByAnnotation(final DeserializationConfig p0, final Annotated p1, final T p2, final String p3) throws JsonMappingException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: invokevirtual   com/flurry/org/codehaus/jackson/map/DeserializationConfig.getAnnotationIntrospector:()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
        //     4: astore          5
        //     6: aload           5
        //     8: aload_2        
        //     9: aload_3        
        //    10: aload           4
        //    12: invokevirtual   com/flurry/org/codehaus/jackson/map/AnnotationIntrospector.findDeserializationType:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
        //    15: astore          6
        //    17: aload           6
        //    19: ifnull          33
        //    22: aload_3        
        //    23: aload           6
        //    25: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.narrowBy:(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    28: astore          21
        //    30: aload           21
        //    32: astore_3       
        //    33: aload_3        
        //    34: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.isContainerType:()Z
        //    37: ifeq            323
        //    40: aload           5
        //    42: aload_2        
        //    43: aload_3        
        //    44: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getKeyType:()Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    47: aload           4
        //    49: invokevirtual   com/flurry/org/codehaus/jackson/map/AnnotationIntrospector.findDeserializationKeyType:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
        //    52: astore          7
        //    54: aload           7
        //    56: ifnull          192
        //    59: aload_3        
        //    60: instanceof      Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
        //    63: ifne            178
        //    66: new             Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        //    69: dup            
        //    70: new             Ljava/lang/StringBuilder;
        //    73: dup            
        //    74: invokespecial   java/lang/StringBuilder.<init>:()V
        //    77: ldc_w           "Illegal key-type annotation: type "
        //    80: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    83: aload_3        
        //    84: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    87: ldc_w           " is not a Map(-like) type"
        //    90: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    93: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    96: invokespecial   com/flurry/org/codehaus/jackson/map/JsonMappingException.<init>:(Ljava/lang/String;)V
        //    99: athrow         
        //   100: astore          19
        //   102: new             Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        //   105: dup            
        //   106: new             Ljava/lang/StringBuilder;
        //   109: dup            
        //   110: invokespecial   java/lang/StringBuilder.<init>:()V
        //   113: ldc_w           "Failed to narrow type "
        //   116: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   119: aload_3        
        //   120: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   123: ldc_w           " with concrete-type annotation (value "
        //   126: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   129: aload           6
        //   131: invokevirtual   java/lang/Class.getName:()Ljava/lang/String;
        //   134: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   137: ldc_w           "), method '"
        //   140: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   143: aload_2        
        //   144: invokevirtual   com/flurry/org/codehaus/jackson/map/introspect/Annotated.getName:()Ljava/lang/String;
        //   147: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   150: ldc_w           "': "
        //   153: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   156: aload           19
        //   158: invokevirtual   java/lang/IllegalArgumentException.getMessage:()Ljava/lang/String;
        //   161: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   164: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   167: aconst_null    
        //   168: aload           19
        //   170: invokespecial   com/flurry/org/codehaus/jackson/map/JsonMappingException.<init>:(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
        //   173: astore          20
        //   175: aload           20
        //   177: athrow         
        //   178: aload_3        
        //   179: checkcast       Lcom/flurry/org/codehaus/jackson/map/type/MapLikeType;
        //   182: aload           7
        //   184: invokevirtual   com/flurry/org/codehaus/jackson/map/type/MapLikeType.narrowKey:(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   187: astore          18
        //   189: aload           18
        //   191: astore_3       
        //   192: aload_3        
        //   193: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getKeyType:()Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   196: astore          8
        //   198: aload           8
        //   200: ifnull          244
        //   203: aload           8
        //   205: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getValueHandler:()Ljava/lang/Object;
        //   208: ifnonnull       244
        //   211: aload           5
        //   213: aload_2        
        //   214: invokevirtual   com/flurry/org/codehaus/jackson/map/AnnotationIntrospector.findKeyDeserializer:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
        //   217: astore          15
        //   219: aload           15
        //   221: ifnull          244
        //   224: aload           15
        //   226: ldc_w           Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer$None;.class
        //   229: if_acmpeq       244
        //   232: aload           8
        //   234: aload_1        
        //   235: aload_2        
        //   236: aload           15
        //   238: invokevirtual   com/flurry/org/codehaus/jackson/map/DeserializationConfig.keyDeserializerInstance:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer;
        //   241: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.setValueHandler:(Ljava/lang/Object;)V
        //   244: aload           5
        //   246: aload_2        
        //   247: aload_3        
        //   248: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getContentType:()Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   251: aload           4
        //   253: invokevirtual   com/flurry/org/codehaus/jackson/map/AnnotationIntrospector.findDeserializationContentType:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
        //   256: astore          9
        //   258: aload           9
        //   260: ifnull          274
        //   263: aload_3        
        //   264: aload           9
        //   266: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.narrowContentsBy:(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   269: astore          14
        //   271: aload           14
        //   273: astore_3       
        //   274: aload_3        
        //   275: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getContentType:()Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   278: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getValueHandler:()Ljava/lang/Object;
        //   281: ifnonnull       323
        //   284: aload           5
        //   286: aload_2        
        //   287: invokevirtual   com/flurry/org/codehaus/jackson/map/AnnotationIntrospector.findContentDeserializer:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
        //   290: astore          10
        //   292: aload           10
        //   294: ifnull          323
        //   297: aload           10
        //   299: ldc_w           Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer$None;.class
        //   302: if_acmpeq       323
        //   305: aload_1        
        //   306: aload_2        
        //   307: aload           10
        //   309: invokevirtual   com/flurry/org/codehaus/jackson/map/DeserializationConfig.deserializerInstance:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
        //   312: astore          11
        //   314: aload_3        
        //   315: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getContentType:()Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   318: aload           11
        //   320: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.setValueHandler:(Ljava/lang/Object;)V
        //   323: aload_3        
        //   324: areturn        
        //   325: astore          16
        //   327: new             Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        //   330: dup            
        //   331: new             Ljava/lang/StringBuilder;
        //   334: dup            
        //   335: invokespecial   java/lang/StringBuilder.<init>:()V
        //   338: ldc_w           "Failed to narrow key type "
        //   341: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   344: aload_3        
        //   345: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   348: ldc_w           " with key-type annotation ("
        //   351: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   354: aload           7
        //   356: invokevirtual   java/lang/Class.getName:()Ljava/lang/String;
        //   359: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   362: ldc_w           "): "
        //   365: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   368: aload           16
        //   370: invokevirtual   java/lang/IllegalArgumentException.getMessage:()Ljava/lang/String;
        //   373: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   376: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   379: aconst_null    
        //   380: aload           16
        //   382: invokespecial   com/flurry/org/codehaus/jackson/map/JsonMappingException.<init>:(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
        //   385: astore          17
        //   387: aload           17
        //   389: athrow         
        //   390: astore          12
        //   392: new             Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        //   395: dup            
        //   396: new             Ljava/lang/StringBuilder;
        //   399: dup            
        //   400: invokespecial   java/lang/StringBuilder.<init>:()V
        //   403: ldc_w           "Failed to narrow content type "
        //   406: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   409: aload_3        
        //   410: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   413: ldc_w           " with content-type annotation ("
        //   416: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   419: aload           9
        //   421: invokevirtual   java/lang/Class.getName:()Ljava/lang/String;
        //   424: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   427: ldc_w           "): "
        //   430: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   433: aload           12
        //   435: invokevirtual   java/lang/IllegalArgumentException.getMessage:()Ljava/lang/String;
        //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   441: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   444: aconst_null    
        //   445: aload           12
        //   447: invokespecial   com/flurry/org/codehaus/jackson/map/JsonMappingException.<init>:(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
        //   450: astore          13
        //   452: aload           13
        //   454: athrow         
        //    Exceptions:
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Signature:
        //  <T:Lcom/flurry/org/codehaus/jackson/type/JavaType;>(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;TT;Ljava/lang/String;)TT;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  22     30     100    178    Ljava/lang/IllegalArgumentException;
        //  178    189    325    390    Ljava/lang/IllegalArgumentException;
        //  263    271    390    455    Ljava/lang/IllegalArgumentException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0274:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    protected JavaType resolveType(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, JavaType javaType, final AnnotatedMember annotatedMember, final BeanProperty beanProperty) throws JsonMappingException {
        if (javaType.isContainerType()) {
            final AnnotationIntrospector annotationIntrospector = deserializationConfig.getAnnotationIntrospector();
            final JavaType keyType = javaType.getKeyType();
            if (keyType != null) {
                final Class<? extends KeyDeserializer> keyDeserializer = annotationIntrospector.findKeyDeserializer(annotatedMember);
                if (keyDeserializer != null && keyDeserializer != KeyDeserializer.None.class) {
                    keyType.setValueHandler(deserializationConfig.keyDeserializerInstance(annotatedMember, keyDeserializer));
                }
            }
            final Class<? extends JsonDeserializer<?>> contentDeserializer = annotationIntrospector.findContentDeserializer(annotatedMember);
            if (contentDeserializer != null && contentDeserializer != JsonDeserializer.None.class) {
                javaType.getContentType().setValueHandler(deserializationConfig.deserializerInstance(annotatedMember, contentDeserializer));
            }
            if (annotatedMember instanceof AnnotatedMember) {
                final TypeDeserializer propertyContentTypeDeserializer = this.findPropertyContentTypeDeserializer(deserializationConfig, javaType, annotatedMember, beanProperty);
                if (propertyContentTypeDeserializer != null) {
                    javaType = javaType.withContentTypeHandler(propertyContentTypeDeserializer);
                }
            }
        }
        TypeDeserializer typeDeserializer;
        if (annotatedMember instanceof AnnotatedMember) {
            typeDeserializer = this.findPropertyTypeDeserializer(deserializationConfig, javaType, annotatedMember, beanProperty);
        }
        else {
            typeDeserializer = this.findTypeDeserializer(deserializationConfig, javaType, null);
        }
        if (typeDeserializer != null) {
            javaType = javaType.withTypeHandler(typeDeserializer);
        }
        return javaType;
    }
    
    @Override
    public abstract DeserializerFactory withConfig(final Config p0);
}
