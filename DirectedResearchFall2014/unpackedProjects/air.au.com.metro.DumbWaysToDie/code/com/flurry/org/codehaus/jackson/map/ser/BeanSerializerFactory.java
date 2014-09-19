package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import java.util.*;

public class BeanSerializerFactory extends BasicSerializerFactory
{
    public static final BeanSerializerFactory instance;
    protected final Config _factoryConfig;
    
    static {
        instance = new BeanSerializerFactory(null);
    }
    
    protected BeanSerializerFactory(Config factoryConfig) {
        super();
        if (factoryConfig == null) {
            factoryConfig = new ConfigImpl();
        }
        this._factoryConfig = factoryConfig;
    }
    
    protected BeanPropertyWriter _constructWriter(final SerializationConfig serializationConfig, final TypeBindings typeBindings, final PropertyBuilder propertyBuilder, final boolean b, final String s, final AnnotatedMember annotatedMember) throws JsonMappingException {
        if (serializationConfig.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            annotatedMember.fixAccess();
        }
        final JavaType type = annotatedMember.getType(typeBindings);
        final BeanProperty.Std std = new BeanProperty.Std(s, type, propertyBuilder.getClassAnnotations(), annotatedMember);
        final JsonSerializer<Object> serializerFromAnnotation = this.findSerializerFromAnnotation(serializationConfig, annotatedMember, std);
        final boolean collectionMapOrArray = ClassUtil.isCollectionMapOrArray(type.getRawClass());
        TypeSerializer propertyContentTypeSerializer = null;
        if (collectionMapOrArray) {
            propertyContentTypeSerializer = this.findPropertyContentTypeSerializer(type, serializationConfig, annotatedMember, std);
        }
        final BeanPropertyWriter buildWriter = propertyBuilder.buildWriter(s, type, serializerFromAnnotation, this.findPropertyTypeSerializer(type, serializationConfig, annotatedMember, std), propertyContentTypeSerializer, annotatedMember, b);
        buildWriter.setViews(serializationConfig.getAnnotationIntrospector().findSerializationViews(annotatedMember));
        return buildWriter;
    }
    
    protected JsonSerializer<Object> constructBeanSerializer(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty) throws JsonMappingException {
        if (basicBeanDescription.getBeanClass() == Object.class) {
            throw new IllegalArgumentException("Can not create bean serializer for Object.class");
        }
        BeanSerializerBuilder beanSerializerBuilder = this.constructBeanSerializerBuilder(basicBeanDescription);
        List<BeanPropertyWriter> list = this.findBeanProperties(serializationConfig, basicBeanDescription);
        if (list == null) {
            list = new ArrayList<BeanPropertyWriter>();
        }
        if (this._factoryConfig.hasSerializerModifiers()) {
            final Iterator<BeanSerializerModifier> iterator = this._factoryConfig.serializerModifiers().iterator();
            while (iterator.hasNext()) {
                list = iterator.next().changeProperties(serializationConfig, basicBeanDescription, list);
            }
        }
        List<BeanPropertyWriter> properties = this.sortBeanProperties(serializationConfig, basicBeanDescription, this.filterBeanProperties(serializationConfig, basicBeanDescription, list));
        if (this._factoryConfig.hasSerializerModifiers()) {
            final Iterator<BeanSerializerModifier> iterator2 = this._factoryConfig.serializerModifiers().iterator();
            while (iterator2.hasNext()) {
                properties = iterator2.next().orderProperties(serializationConfig, basicBeanDescription, properties);
            }
        }
        beanSerializerBuilder.setProperties(properties);
        beanSerializerBuilder.setFilterId(this.findFilterId(serializationConfig, basicBeanDescription));
        final AnnotatedMethod anyGetter = basicBeanDescription.findAnyGetter();
        if (anyGetter != null) {
            if (serializationConfig.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                anyGetter.fixAccess();
            }
            final JavaType type = anyGetter.getType(basicBeanDescription.bindingsForBeanType());
            beanSerializerBuilder.setAnyGetter(new AnyGetterWriter(anyGetter, MapSerializer.construct(null, type, serializationConfig.isEnabled(SerializationConfig.Feature.USE_STATIC_TYPING), this.createTypeSerializer(serializationConfig, type.getContentType(), beanProperty), beanProperty, null, null)));
        }
        this.processViews(serializationConfig, beanSerializerBuilder);
        if (this._factoryConfig.hasSerializerModifiers()) {
            final Iterator<BeanSerializerModifier> iterator3 = this._factoryConfig.serializerModifiers().iterator();
            while (iterator3.hasNext()) {
                beanSerializerBuilder = iterator3.next().updateBuilder(serializationConfig, basicBeanDescription, beanSerializerBuilder);
            }
        }
        final JsonSerializer<?> build = beanSerializerBuilder.build();
        if (build == null && basicBeanDescription.hasKnownClassAnnotations()) {
            return beanSerializerBuilder.createDummy();
        }
        return (JsonSerializer<Object>)build;
    }
    
    protected BeanSerializerBuilder constructBeanSerializerBuilder(final BasicBeanDescription basicBeanDescription) {
        return new BeanSerializerBuilder(basicBeanDescription);
    }
    
    protected BeanPropertyWriter constructFilteredBeanWriter(final BeanPropertyWriter beanPropertyWriter, final Class<?>[] array) {
        return FilteredBeanPropertyWriter.constructViewBased(beanPropertyWriter, array);
    }
    
    protected PropertyBuilder constructPropertyBuilder(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription) {
        return new PropertyBuilder(serializationConfig, basicBeanDescription);
    }
    
    @Override
    public JsonSerializer<Object> createKeySerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BeanProperty beanProperty) {
        if (!this._factoryConfig.hasKeySerializers()) {
            return null;
        }
        final BasicBeanDescription basicBeanDescription = serializationConfig.introspectClassAnnotations(javaType.getRawClass());
        JsonSerializer<?> serializer = null;
        final Iterator<Serializers> iterator = this._factoryConfig.keySerializers().iterator();
        while (iterator.hasNext()) {
            serializer = iterator.next().findSerializer(serializationConfig, javaType, basicBeanDescription, beanProperty);
            if (serializer != null) {
                break;
            }
        }
        return (JsonSerializer<Object>)serializer;
    }
    
    @Override
    public JsonSerializer<Object> createSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final BasicBeanDescription basicBeanDescription = serializationConfig.introspect(javaType);
        final JsonSerializer<Object> serializerFromAnnotation = this.findSerializerFromAnnotation(serializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
        if (serializerFromAnnotation != null) {
            return serializerFromAnnotation;
        }
        final JavaType modifyTypeByAnnotation = this.modifyTypeByAnnotation(serializationConfig, basicBeanDescription.getClassInfo(), javaType);
        final boolean b = modifyTypeByAnnotation != javaType;
        if (javaType.isContainerType()) {
            return (JsonSerializer<Object>)this.buildContainerSerializer(serializationConfig, modifyTypeByAnnotation, basicBeanDescription, beanProperty, b);
        }
        final Iterator<Serializers> iterator = this._factoryConfig.serializers().iterator();
        while (iterator.hasNext()) {
            final JsonSerializer<?> serializer = iterator.next().findSerializer(serializationConfig, modifyTypeByAnnotation, basicBeanDescription, beanProperty);
            if (serializer != null) {
                return (JsonSerializer<Object>)serializer;
            }
        }
        JsonSerializer<?> jsonSerializer = this.findSerializerByLookup(modifyTypeByAnnotation, serializationConfig, basicBeanDescription, beanProperty, b);
        if (jsonSerializer == null) {
            jsonSerializer = this.findSerializerByPrimaryType(modifyTypeByAnnotation, serializationConfig, basicBeanDescription, beanProperty, b);
            if (jsonSerializer == null) {
                jsonSerializer = this.findBeanSerializer(serializationConfig, modifyTypeByAnnotation, basicBeanDescription, beanProperty);
                if (jsonSerializer == null) {
                    jsonSerializer = this.findSerializerByAddonType(serializationConfig, modifyTypeByAnnotation, basicBeanDescription, beanProperty, b);
                }
            }
        }
        return (JsonSerializer<Object>)jsonSerializer;
    }
    
    @Override
    protected Iterable<Serializers> customSerializers() {
        return this._factoryConfig.serializers();
    }
    
    protected List<BeanPropertyWriter> filterBeanProperties(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final List<BeanPropertyWriter> list) {
        final String[] propertiesToIgnore = serializationConfig.getAnnotationIntrospector().findPropertiesToIgnore(basicBeanDescription.getClassInfo());
        if (propertiesToIgnore != null && propertiesToIgnore.length > 0) {
            final HashSet<String> arrayToSet = ArrayBuilders.arrayToSet(propertiesToIgnore);
            final Iterator<BeanPropertyWriter> iterator = list.iterator();
            while (iterator.hasNext()) {
                if (arrayToSet.contains(iterator.next().getName())) {
                    iterator.remove();
                }
            }
        }
        return list;
    }
    
    protected List<BeanPropertyWriter> findBeanProperties(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription) throws JsonMappingException {
        final List<BeanPropertyDefinition> properties = basicBeanDescription.findProperties();
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        this.removeIgnorableTypes(serializationConfig, basicBeanDescription, properties);
        if (serializationConfig.isEnabled(SerializationConfig.Feature.REQUIRE_SETTERS_FOR_GETTERS)) {
            this.removeSetterlessGetters(serializationConfig, basicBeanDescription, properties);
        }
        if (properties.isEmpty()) {
            return null;
        }
        final boolean usesStaticTyping = this.usesStaticTyping(serializationConfig, basicBeanDescription, null, null);
        final PropertyBuilder constructPropertyBuilder = this.constructPropertyBuilder(serializationConfig, basicBeanDescription);
        final ArrayList list = new ArrayList<BeanPropertyWriter>(properties.size());
        final TypeBindings bindingsForBeanType = basicBeanDescription.bindingsForBeanType();
        for (final BeanPropertyDefinition beanPropertyDefinition : properties) {
            final AnnotatedMember accessor = beanPropertyDefinition.getAccessor();
            final AnnotationIntrospector.ReferenceProperty referenceType = annotationIntrospector.findReferenceType(accessor);
            if (referenceType == null || !referenceType.isBackReference()) {
                final String name = beanPropertyDefinition.getName();
                if (accessor instanceof AnnotatedMethod) {
                    list.add(this._constructWriter(serializationConfig, bindingsForBeanType, constructPropertyBuilder, usesStaticTyping, name, accessor));
                }
                else {
                    list.add(this._constructWriter(serializationConfig, bindingsForBeanType, constructPropertyBuilder, usesStaticTyping, name, accessor));
                }
            }
        }
        return (List<BeanPropertyWriter>)list;
    }
    
    public JsonSerializer<Object> findBeanSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty) throws JsonMappingException {
        if (!this.isPotentialBeanType(javaType.getRawClass())) {
            return null;
        }
        JsonSerializer<?> jsonSerializer = this.constructBeanSerializer(serializationConfig, basicBeanDescription, beanProperty);
        if (this._factoryConfig.hasSerializerModifiers()) {
            final Iterator<BeanSerializerModifier> iterator = this._factoryConfig.serializerModifiers().iterator();
            while (iterator.hasNext()) {
                jsonSerializer = iterator.next().modifySerializer(serializationConfig, basicBeanDescription, jsonSerializer);
            }
        }
        return (JsonSerializer<Object>)jsonSerializer;
    }
    
    protected Object findFilterId(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription) {
        return serializationConfig.getAnnotationIntrospector().findFilterId(basicBeanDescription.getClassInfo());
    }
    
    public TypeSerializer findPropertyContentTypeSerializer(final JavaType javaType, final SerializationConfig serializationConfig, final AnnotatedMember annotatedMember, final BeanProperty beanProperty) throws JsonMappingException {
        final JavaType contentType = javaType.getContentType();
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        final TypeResolverBuilder<?> propertyContentTypeResolver = annotationIntrospector.findPropertyContentTypeResolver(serializationConfig, annotatedMember, javaType);
        if (propertyContentTypeResolver == null) {
            return this.createTypeSerializer(serializationConfig, contentType, beanProperty);
        }
        return propertyContentTypeResolver.buildTypeSerializer(serializationConfig, contentType, serializationConfig.getSubtypeResolver().collectAndResolveSubtypes(annotatedMember, serializationConfig, annotationIntrospector), beanProperty);
    }
    
    public TypeSerializer findPropertyTypeSerializer(final JavaType javaType, final SerializationConfig serializationConfig, final AnnotatedMember annotatedMember, final BeanProperty beanProperty) throws JsonMappingException {
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        final TypeResolverBuilder<?> propertyTypeResolver = annotationIntrospector.findPropertyTypeResolver(serializationConfig, annotatedMember, javaType);
        if (propertyTypeResolver == null) {
            return this.createTypeSerializer(serializationConfig, javaType, beanProperty);
        }
        return propertyTypeResolver.buildTypeSerializer(serializationConfig, javaType, serializationConfig.getSubtypeResolver().collectAndResolveSubtypes(annotatedMember, serializationConfig, annotationIntrospector), beanProperty);
    }
    
    @Override
    public Config getConfig() {
        return this._factoryConfig;
    }
    
    protected boolean isPotentialBeanType(final Class<?> clazz) {
        return ClassUtil.canBeABeanType(clazz) == null && !ClassUtil.isProxyType(clazz);
    }
    
    protected void processViews(final SerializationConfig serializationConfig, final BeanSerializerBuilder beanSerializerBuilder) {
        final List<BeanPropertyWriter> properties = beanSerializerBuilder.getProperties();
        final boolean enabled = serializationConfig.isEnabled(SerializationConfig.Feature.DEFAULT_VIEW_INCLUSION);
        final int size = properties.size();
        int n = 0;
        final BeanPropertyWriter[] filteredProperties = new BeanPropertyWriter[size];
        for (int i = 0; i < size; ++i) {
            final BeanPropertyWriter beanPropertyWriter = properties.get(i);
            final Class<?>[] views = beanPropertyWriter.getViews();
            if (views == null) {
                if (enabled) {
                    filteredProperties[i] = beanPropertyWriter;
                }
            }
            else {
                ++n;
                filteredProperties[i] = this.constructFilteredBeanWriter(beanPropertyWriter, views);
            }
        }
        if (enabled && n == 0) {
            return;
        }
        beanSerializerBuilder.setFilteredProperties(filteredProperties);
    }
    
    protected void removeIgnorableTypes(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final List<BeanPropertyDefinition> list) {
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        final HashMap<Object, Boolean> hashMap = (HashMap<Object, Boolean>)new HashMap<Class<?>, Boolean>();
        final Iterator<BeanPropertyDefinition> iterator = list.iterator();
        while (iterator.hasNext()) {
            final AnnotatedMember accessor = iterator.next().getAccessor();
            if (accessor == null) {
                iterator.remove();
            }
            else {
                final Class<?> rawType = accessor.getRawType();
                Boolean value = hashMap.get(rawType);
                if (value == null) {
                    value = annotationIntrospector.isIgnorableType(serializationConfig.introspectClassAnnotations(rawType).getClassInfo());
                    if (value == null) {
                        value = Boolean.FALSE;
                    }
                    hashMap.put(rawType, value);
                }
                if (!value) {
                    continue;
                }
                iterator.remove();
            }
        }
    }
    
    protected void removeSetterlessGetters(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final List<BeanPropertyDefinition> list) {
        final Iterator<BeanPropertyDefinition> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (!iterator.next().couldDeserialize()) {
                iterator.remove();
            }
        }
    }
    
    @Deprecated
    protected List<BeanPropertyWriter> sortBeanProperties(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final List<BeanPropertyWriter> list) {
        return list;
    }
    
    @Override
    public SerializerFactory withConfig(final Config config) {
        if (this._factoryConfig == config) {
            return this;
        }
        if (this.getClass() != BeanSerializerFactory.class) {
            throw new IllegalStateException("Subtype of BeanSerializerFactory (" + this.getClass().getName() + ") has not properly overridden method 'withAdditionalSerializers': can not instantiate subtype with " + "additional serializer definitions");
        }
        return new BeanSerializerFactory(config);
    }
    
    public static class ConfigImpl extends Config
    {
        protected static final BeanSerializerModifier[] NO_MODIFIERS;
        protected static final Serializers[] NO_SERIALIZERS;
        protected final Serializers[] _additionalKeySerializers;
        protected final Serializers[] _additionalSerializers;
        protected final BeanSerializerModifier[] _modifiers;
        
        static {
            NO_SERIALIZERS = new Serializers[0];
            NO_MODIFIERS = new BeanSerializerModifier[0];
        }
        
        public ConfigImpl() {
            this(null, null, null);
        }
        
        protected ConfigImpl(final Serializers[] array, final Serializers[] array2, final BeanSerializerModifier[] array3) {
            super();
            Serializers[] no_SERIALIZERS;
            if (array == null) {
                no_SERIALIZERS = ConfigImpl.NO_SERIALIZERS;
            }
            else {
                no_SERIALIZERS = array;
            }
            this._additionalSerializers = no_SERIALIZERS;
            Serializers[] no_SERIALIZERS2;
            if (array2 == null) {
                no_SERIALIZERS2 = ConfigImpl.NO_SERIALIZERS;
            }
            else {
                no_SERIALIZERS2 = array2;
            }
            this._additionalKeySerializers = no_SERIALIZERS2;
            BeanSerializerModifier[] no_MODIFIERS;
            if (array3 == null) {
                no_MODIFIERS = ConfigImpl.NO_MODIFIERS;
            }
            else {
                no_MODIFIERS = array3;
            }
            this._modifiers = no_MODIFIERS;
        }
        
        @Override
        public boolean hasKeySerializers() {
            return this._additionalKeySerializers.length > 0;
        }
        
        @Override
        public boolean hasSerializerModifiers() {
            return this._modifiers.length > 0;
        }
        
        @Override
        public boolean hasSerializers() {
            return this._additionalSerializers.length > 0;
        }
        
        @Override
        public Iterable<Serializers> keySerializers() {
            return ArrayBuilders.arrayAsIterable(this._additionalKeySerializers);
        }
        
        @Override
        public Iterable<BeanSerializerModifier> serializerModifiers() {
            return ArrayBuilders.arrayAsIterable(this._modifiers);
        }
        
        @Override
        public Iterable<Serializers> serializers() {
            return ArrayBuilders.arrayAsIterable(this._additionalSerializers);
        }
        
        @Override
        public Config withAdditionalKeySerializers(final Serializers serializers) {
            if (serializers == null) {
                throw new IllegalArgumentException("Can not pass null Serializers");
            }
            return new ConfigImpl(this._additionalSerializers, ArrayBuilders.insertInListNoDup(this._additionalKeySerializers, serializers), this._modifiers);
        }
        
        @Override
        public Config withAdditionalSerializers(final Serializers serializers) {
            if (serializers == null) {
                throw new IllegalArgumentException("Can not pass null Serializers");
            }
            return new ConfigImpl(ArrayBuilders.insertInListNoDup(this._additionalSerializers, serializers), this._additionalKeySerializers, this._modifiers);
        }
        
        @Override
        public Config withSerializerModifier(final BeanSerializerModifier beanSerializerModifier) {
            if (beanSerializerModifier == null) {
                throw new IllegalArgumentException("Can not pass null modifier");
            }
            return new ConfigImpl(this._additionalSerializers, this._additionalKeySerializers, ArrayBuilders.insertInListNoDup(this._modifiers, beanSerializerModifier));
        }
    }
}
