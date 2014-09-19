package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.deser.impl.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;

public class BeanDeserializerFactory extends BasicDeserializerFactory
{
    private static final Class<?>[] INIT_CAUSE_PARAMS;
    public static final BeanDeserializerFactory instance;
    protected final Config _factoryConfig;
    
    static {
        INIT_CAUSE_PARAMS = new Class[] { Throwable.class };
        instance = new BeanDeserializerFactory(null);
    }
    
    public BeanDeserializerFactory() {
        this(null);
    }
    
    public BeanDeserializerFactory(Config factoryConfig) {
        super();
        if (factoryConfig == null) {
            factoryConfig = new ConfigImpl();
        }
        this._factoryConfig = factoryConfig;
    }
    
    private KeyDeserializer _createEnumKeyDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        final BasicBeanDescription basicBeanDescription = deserializationConfig.introspect(javaType);
        final Class<?> rawClass = javaType.getRawClass();
        final EnumResolver<?> constructEnumResolver = this.constructEnumResolver(rawClass, deserializationConfig);
        for (final AnnotatedMethod annotatedMethod : basicBeanDescription.getFactoryMethods()) {
            if (deserializationConfig.getAnnotationIntrospector().hasCreatorAnnotation(annotatedMethod)) {
                if (annotatedMethod.getParameterCount() != 1 || !annotatedMethod.getRawType().isAssignableFrom(rawClass)) {
                    throw new IllegalArgumentException("Unsuitable method (" + annotatedMethod + ") decorated with @JsonCreator (for Enum type " + rawClass.getName() + ")");
                }
                if (annotatedMethod.getParameterType(0) != String.class) {
                    throw new IllegalArgumentException("Parameter #0 type for factory method (" + annotatedMethod + ") not suitable, must be java.lang.String");
                }
                if (deserializationConfig.canOverrideAccessModifiers()) {
                    ClassUtil.checkAndFixAccess(annotatedMethod.getMember());
                }
                return StdKeyDeserializers.constructEnumKeyDeserializer(constructEnumResolver, annotatedMethod);
            }
        }
        return StdKeyDeserializers.constructEnumKeyDeserializer(constructEnumResolver);
    }
    
    protected void _addDeserializerConstructors(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final VisibilityChecker<?> visibilityChecker, final AnnotationIntrospector annotationIntrospector, final CreatorCollector creatorCollector) throws JsonMappingException {
        for (final AnnotatedConstructor annotatedConstructor : basicBeanDescription.getConstructors()) {
            final int parameterCount = annotatedConstructor.getParameterCount();
            if (parameterCount >= 1) {
                final boolean hasCreatorAnnotation = annotationIntrospector.hasCreatorAnnotation(annotatedConstructor);
                final boolean creatorVisible = visibilityChecker.isCreatorVisible(annotatedConstructor);
                if (parameterCount == 1) {
                    this._handleSingleArgumentConstructor(deserializationConfig, basicBeanDescription, visibilityChecker, annotationIntrospector, creatorCollector, annotatedConstructor, hasCreatorAnnotation, creatorVisible);
                }
                else {
                    if (!hasCreatorAnnotation && !creatorVisible) {
                        continue;
                    }
                    AnnotatedParameter annotatedParameter = null;
                    int n = 0;
                    int n2 = 0;
                    final CreatorProperty[] array = new CreatorProperty[parameterCount];
                    for (int i = 0; i < parameterCount; ++i) {
                        final AnnotatedParameter parameter = annotatedConstructor.getParameter(i);
                        String propertyNameForParam;
                        if (parameter == null) {
                            propertyNameForParam = null;
                        }
                        else {
                            propertyNameForParam = annotationIntrospector.findPropertyNameForParam(parameter);
                        }
                        final Object injectableValueId = annotationIntrospector.findInjectableValueId(parameter);
                        if (propertyNameForParam != null && propertyNameForParam.length() > 0) {
                            ++n;
                            array[i] = this.constructCreatorProperty(deserializationConfig, basicBeanDescription, propertyNameForParam, i, parameter, injectableValueId);
                        }
                        else if (injectableValueId != null) {
                            ++n2;
                            array[i] = this.constructCreatorProperty(deserializationConfig, basicBeanDescription, propertyNameForParam, i, parameter, injectableValueId);
                        }
                        else if (annotatedParameter == null) {
                            annotatedParameter = parameter;
                        }
                    }
                    if (hasCreatorAnnotation || n > 0 || n2 > 0) {
                        if (n + n2 == parameterCount) {
                            creatorCollector.addPropertyCreator(annotatedConstructor, array);
                        }
                        else {
                            if (n == 0 && n2 + 1 == parameterCount) {
                                throw new IllegalArgumentException("Delegated constructor with Injectables not yet supported (see [JACKSON-712]) for " + annotatedConstructor);
                            }
                            throw new IllegalArgumentException("Argument #" + annotatedParameter.getIndex() + " of constructor " + annotatedConstructor + " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator");
                        }
                    }
                    if (0 == 0) {
                        continue;
                    }
                    creatorCollector.addPropertyCreator(annotatedConstructor, array);
                }
            }
        }
    }
    
    protected void _addDeserializerFactoryMethods(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final VisibilityChecker<?> visibilityChecker, final AnnotationIntrospector annotationIntrospector, final CreatorCollector creatorCollector) throws JsonMappingException {
        for (final AnnotatedMethod obj : basicBeanDescription.getFactoryMethods()) {
            final int parameterCount = obj.getParameterCount();
            if (parameterCount >= 1) {
                final boolean hasCreatorAnnotation = annotationIntrospector.hasCreatorAnnotation(obj);
                if (parameterCount == 1) {
                    final AnnotatedParameter parameter = obj.getParameter(0);
                    final String propertyNameForParam = annotationIntrospector.findPropertyNameForParam(parameter);
                    if (annotationIntrospector.findInjectableValueId(parameter) == null && (propertyNameForParam == null || propertyNameForParam.length() == 0)) {
                        this._handleSingleArgumentFactory(deserializationConfig, basicBeanDescription, visibilityChecker, annotationIntrospector, creatorCollector, obj, hasCreatorAnnotation);
                        continue;
                    }
                }
                else if (!annotationIntrospector.hasCreatorAnnotation(obj)) {
                    continue;
                }
                final CreatorProperty[] array = new CreatorProperty[parameterCount];
                for (int i = 0; i < parameterCount; ++i) {
                    final AnnotatedParameter parameter2 = obj.getParameter(i);
                    final String propertyNameForParam2 = annotationIntrospector.findPropertyNameForParam(parameter2);
                    final Object injectableValueId = annotationIntrospector.findInjectableValueId(parameter2);
                    if ((propertyNameForParam2 == null || propertyNameForParam2.length() == 0) && injectableValueId == null) {
                        throw new IllegalArgumentException("Argument #" + i + " of factory method " + obj + " has no property name annotation; must have when multiple-paramater static method annotated as Creator");
                    }
                    array[i] = this.constructCreatorProperty(deserializationConfig, basicBeanDescription, propertyNameForParam2, i, parameter2, injectableValueId);
                }
                creatorCollector.addPropertyCreator(obj, array);
            }
        }
    }
    
    @Override
    protected JsonDeserializer<?> _findCustomArrayDeserializer(final ArrayType arrayType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BeanProperty beanProperty, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        final Iterator<Deserializers> iterator = this._factoryConfig.deserializers().iterator();
        while (iterator.hasNext()) {
            final JsonDeserializer<?> arrayDeserializer = iterator.next().findArrayDeserializer(arrayType, deserializationConfig, deserializerProvider, beanProperty, typeDeserializer, jsonDeserializer);
            if (arrayDeserializer != null) {
                return arrayDeserializer;
            }
        }
        return null;
    }
    
    protected JsonDeserializer<Object> _findCustomBeanDeserializer(final JavaType javaType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty) throws JsonMappingException {
        final Iterator<Deserializers> iterator = this._factoryConfig.deserializers().iterator();
        while (iterator.hasNext()) {
            final JsonDeserializer<?> beanDeserializer = iterator.next().findBeanDeserializer(javaType, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty);
            if (beanDeserializer != null) {
                return (JsonDeserializer<Object>)beanDeserializer;
            }
        }
        return null;
    }
    
    @Override
    protected JsonDeserializer<?> _findCustomCollectionDeserializer(final CollectionType collectionType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        final Iterator<Deserializers> iterator = this._factoryConfig.deserializers().iterator();
        while (iterator.hasNext()) {
            final JsonDeserializer<?> collectionDeserializer = iterator.next().findCollectionDeserializer(collectionType, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty, typeDeserializer, jsonDeserializer);
            if (collectionDeserializer != null) {
                return collectionDeserializer;
            }
        }
        return null;
    }
    
    @Override
    protected JsonDeserializer<?> _findCustomCollectionLikeDeserializer(final CollectionLikeType collectionLikeType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        final Iterator<Deserializers> iterator = this._factoryConfig.deserializers().iterator();
        while (iterator.hasNext()) {
            final JsonDeserializer<?> collectionLikeDeserializer = iterator.next().findCollectionLikeDeserializer(collectionLikeType, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty, typeDeserializer, jsonDeserializer);
            if (collectionLikeDeserializer != null) {
                return collectionLikeDeserializer;
            }
        }
        return null;
    }
    
    @Override
    protected JsonDeserializer<?> _findCustomEnumDeserializer(final Class<?> clazz, final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty) throws JsonMappingException {
        final Iterator<Deserializers> iterator = this._factoryConfig.deserializers().iterator();
        while (iterator.hasNext()) {
            final JsonDeserializer<?> enumDeserializer = iterator.next().findEnumDeserializer(clazz, deserializationConfig, basicBeanDescription, beanProperty);
            if (enumDeserializer != null) {
                return enumDeserializer;
            }
        }
        return null;
    }
    
    @Override
    protected JsonDeserializer<?> _findCustomMapDeserializer(final MapType mapType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final KeyDeserializer keyDeserializer, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        final Iterator<Deserializers> iterator = this._factoryConfig.deserializers().iterator();
        while (iterator.hasNext()) {
            final JsonDeserializer<?> mapDeserializer = iterator.next().findMapDeserializer(mapType, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (mapDeserializer != null) {
                return mapDeserializer;
            }
        }
        return null;
    }
    
    @Override
    protected JsonDeserializer<?> _findCustomMapLikeDeserializer(final MapLikeType mapLikeType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final KeyDeserializer keyDeserializer, final TypeDeserializer typeDeserializer, final JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        final Iterator<Deserializers> iterator = this._factoryConfig.deserializers().iterator();
        while (iterator.hasNext()) {
            final JsonDeserializer<?> mapLikeDeserializer = iterator.next().findMapLikeDeserializer(mapLikeType, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (mapLikeDeserializer != null) {
                return mapLikeDeserializer;
            }
        }
        return null;
    }
    
    @Override
    protected JsonDeserializer<?> _findCustomTreeNodeDeserializer(final Class<? extends JsonNode> clazz, final DeserializationConfig deserializationConfig, final BeanProperty beanProperty) throws JsonMappingException {
        final Iterator<Deserializers> iterator = this._factoryConfig.deserializers().iterator();
        while (iterator.hasNext()) {
            final JsonDeserializer<?> treeNodeDeserializer = iterator.next().findTreeNodeDeserializer(clazz, deserializationConfig, beanProperty);
            if (treeNodeDeserializer != null) {
                return treeNodeDeserializer;
            }
        }
        return null;
    }
    
    protected boolean _handleSingleArgumentConstructor(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final VisibilityChecker<?> visibilityChecker, final AnnotationIntrospector annotationIntrospector, final CreatorCollector creatorCollector, final AnnotatedConstructor annotatedConstructor, final boolean b, final boolean b2) throws JsonMappingException {
        final AnnotatedParameter parameter = annotatedConstructor.getParameter(0);
        final String propertyNameForParam = annotationIntrospector.findPropertyNameForParam(parameter);
        final Object injectableValueId = annotationIntrospector.findInjectableValueId(parameter);
        if (injectableValueId != null || (propertyNameForParam != null && propertyNameForParam.length() > 0)) {
            creatorCollector.addPropertyCreator(annotatedConstructor, new CreatorProperty[] { this.constructCreatorProperty(deserializationConfig, basicBeanDescription, propertyNameForParam, 0, parameter, injectableValueId) });
            return true;
        }
        final Class<?> parameterClass = annotatedConstructor.getParameterClass(0);
        if (parameterClass == String.class) {
            if (b || b2) {
                creatorCollector.addStringCreator(annotatedConstructor);
            }
            return true;
        }
        if (parameterClass == Integer.TYPE || parameterClass == Integer.class) {
            if (b || b2) {
                creatorCollector.addIntCreator(annotatedConstructor);
            }
            return true;
        }
        if (parameterClass == Long.TYPE || parameterClass == Long.class) {
            if (b || b2) {
                creatorCollector.addLongCreator(annotatedConstructor);
            }
            return true;
        }
        if (parameterClass == Double.TYPE || parameterClass == Double.class) {
            if (b || b2) {
                creatorCollector.addDoubleCreator(annotatedConstructor);
            }
            return true;
        }
        if (b) {
            creatorCollector.addDelegatingCreator(annotatedConstructor);
            return true;
        }
        return false;
    }
    
    protected boolean _handleSingleArgumentFactory(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final VisibilityChecker<?> visibilityChecker, final AnnotationIntrospector annotationIntrospector, final CreatorCollector creatorCollector, final AnnotatedMethod annotatedMethod, final boolean b) throws JsonMappingException {
        final Class<?> parameterClass = annotatedMethod.getParameterClass(0);
        if (parameterClass == String.class) {
            if (b || visibilityChecker.isCreatorVisible(annotatedMethod)) {
                creatorCollector.addStringCreator(annotatedMethod);
            }
            return true;
        }
        if (parameterClass == Integer.TYPE || parameterClass == Integer.class) {
            if (b || visibilityChecker.isCreatorVisible(annotatedMethod)) {
                creatorCollector.addIntCreator(annotatedMethod);
            }
            return true;
        }
        if (parameterClass == Long.TYPE || parameterClass == Long.class) {
            if (b || visibilityChecker.isCreatorVisible(annotatedMethod)) {
                creatorCollector.addLongCreator(annotatedMethod);
            }
            return true;
        }
        if (parameterClass == Double.TYPE || parameterClass == Double.class) {
            if (b || visibilityChecker.isCreatorVisible(annotatedMethod)) {
                creatorCollector.addDoubleCreator(annotatedMethod);
            }
            return true;
        }
        if (parameterClass == Boolean.TYPE || parameterClass == Boolean.class) {
            if (b || visibilityChecker.isCreatorVisible(annotatedMethod)) {
                creatorCollector.addBooleanCreator(annotatedMethod);
            }
            return true;
        }
        if (annotationIntrospector.hasCreatorAnnotation(annotatedMethod)) {
            creatorCollector.addDelegatingCreator(annotatedMethod);
            return true;
        }
        return false;
    }
    
    protected JavaType _mapAbstractType2(final DeserializationConfig deserializationConfig, final JavaType javaType) throws JsonMappingException {
        final Class<?> rawClass = javaType.getRawClass();
        if (this._factoryConfig.hasAbstractTypeResolvers()) {
            final Iterator<AbstractTypeResolver> iterator = this._factoryConfig.abstractTypeResolvers().iterator();
            while (iterator.hasNext()) {
                final JavaType typeMapping = iterator.next().findTypeMapping(deserializationConfig, javaType);
                if (typeMapping != null && typeMapping.getRawClass() != rawClass) {
                    return typeMapping;
                }
            }
        }
        return null;
    }
    
    protected void addBeanProps(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        final List<BeanPropertyDefinition> properties = basicBeanDescription.findProperties();
        final AnnotationIntrospector annotationIntrospector = deserializationConfig.getAnnotationIntrospector();
        final Boolean ignoreUnknownProperties = annotationIntrospector.findIgnoreUnknownProperties(basicBeanDescription.getClassInfo());
        if (ignoreUnknownProperties != null) {
            beanDeserializerBuilder.setIgnoreUnknownProperties(ignoreUnknownProperties);
        }
        final HashSet<String> arrayToSet = ArrayBuilders.arrayToSet(annotationIntrospector.findPropertiesToIgnore(basicBeanDescription.getClassInfo()));
        final Iterator<String> iterator = arrayToSet.iterator();
        while (iterator.hasNext()) {
            beanDeserializerBuilder.addIgnorable(iterator.next());
        }
        final AnnotatedMethod anySetter = basicBeanDescription.findAnySetter();
        Set<String> set;
        if (anySetter == null) {
            set = basicBeanDescription.getIgnoredPropertyNames();
        }
        else {
            set = basicBeanDescription.getIgnoredPropertyNamesForDeser();
        }
        if (set != null) {
            final Iterator<Object> iterator2 = set.iterator();
            while (iterator2.hasNext()) {
                beanDeserializerBuilder.addIgnorable(iterator2.next());
            }
        }
        final HashMap<Class<?>, Boolean> hashMap = new HashMap<Class<?>, Boolean>();
        for (final BeanPropertyDefinition beanPropertyDefinition : properties) {
            final String name = beanPropertyDefinition.getName();
            if (!arrayToSet.contains(name)) {
                if (beanPropertyDefinition.hasConstructorParameter()) {
                    beanDeserializerBuilder.addCreatorProperty(beanPropertyDefinition);
                }
                else if (beanPropertyDefinition.hasSetter()) {
                    final AnnotatedMethod setter = beanPropertyDefinition.getSetter();
                    if (this.isIgnorableType(deserializationConfig, basicBeanDescription, setter.getParameterClass(0), hashMap)) {
                        beanDeserializerBuilder.addIgnorable(name);
                    }
                    else {
                        final SettableBeanProperty constructSettableProperty = this.constructSettableProperty(deserializationConfig, basicBeanDescription, name, setter);
                        if (constructSettableProperty == null) {
                            continue;
                        }
                        beanDeserializerBuilder.addProperty(constructSettableProperty);
                    }
                }
                else {
                    if (!beanPropertyDefinition.hasField()) {
                        continue;
                    }
                    final AnnotatedField field = beanPropertyDefinition.getField();
                    if (this.isIgnorableType(deserializationConfig, basicBeanDescription, field.getRawType(), hashMap)) {
                        beanDeserializerBuilder.addIgnorable(name);
                    }
                    else {
                        final SettableBeanProperty constructSettableProperty2 = this.constructSettableProperty(deserializationConfig, basicBeanDescription, name, field);
                        if (constructSettableProperty2 == null) {
                            continue;
                        }
                        beanDeserializerBuilder.addProperty(constructSettableProperty2);
                    }
                }
            }
        }
        if (anySetter != null) {
            beanDeserializerBuilder.setAnySetter(this.constructAnySetter(deserializationConfig, basicBeanDescription, anySetter));
        }
        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.USE_GETTERS_AS_SETTERS)) {
            for (final BeanPropertyDefinition beanPropertyDefinition2 : properties) {
                if (beanPropertyDefinition2.hasGetter()) {
                    final String name2 = beanPropertyDefinition2.getName();
                    if (beanDeserializerBuilder.hasProperty(name2) || arrayToSet.contains(name2)) {
                        continue;
                    }
                    final AnnotatedMethod getter = beanPropertyDefinition2.getGetter();
                    final Class<?> rawType = getter.getRawType();
                    if ((!Collection.class.isAssignableFrom(rawType) && !Map.class.isAssignableFrom(rawType)) || arrayToSet.contains(name2) || beanDeserializerBuilder.hasProperty(name2)) {
                        continue;
                    }
                    beanDeserializerBuilder.addProperty(this.constructSetterlessProperty(deserializationConfig, basicBeanDescription, name2, getter));
                }
            }
        }
    }
    
    protected void addInjectables(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        final Map<Object, AnnotatedMember> injectables = basicBeanDescription.findInjectables();
        if (injectables != null) {
            final boolean enabled = deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS);
            for (final Map.Entry<K, AnnotatedMember> entry : injectables.entrySet()) {
                final AnnotatedMember annotatedMember = entry.getValue();
                if (enabled) {
                    annotatedMember.fixAccess();
                }
                beanDeserializerBuilder.addInjectable(annotatedMember.getName(), basicBeanDescription.resolveType(annotatedMember.getGenericType()), basicBeanDescription.getClassAnnotations(), annotatedMember, entry.getKey());
            }
        }
    }
    
    protected void addReferenceProperties(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        final Map<String, AnnotatedMember> backReferenceProperties = basicBeanDescription.findBackReferenceProperties();
        if (backReferenceProperties != null) {
            for (final Map.Entry<String, AnnotatedMember> entry : backReferenceProperties.entrySet()) {
                final String s = entry.getKey();
                final AnnotatedMember annotatedMember = entry.getValue();
                if (annotatedMember instanceof AnnotatedMethod) {
                    beanDeserializerBuilder.addBackReferenceProperty(s, this.constructSettableProperty(deserializationConfig, basicBeanDescription, annotatedMember.getName(), (AnnotatedMethod)annotatedMember));
                }
                else {
                    beanDeserializerBuilder.addBackReferenceProperty(s, this.constructSettableProperty(deserializationConfig, basicBeanDescription, annotatedMember.getName(), (AnnotatedField)annotatedMember));
                }
            }
        }
    }
    
    public JsonDeserializer<Object> buildBeanDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty) throws JsonMappingException {
        final ValueInstantiator valueInstantiator = this.findValueInstantiator(deserializationConfig, basicBeanDescription);
        if (javaType.isAbstract() && !valueInstantiator.canInstantiate()) {
            return new AbstractDeserializer(javaType);
        }
        BeanDeserializerBuilder beanDeserializerBuilder = this.constructBeanDeserializerBuilder(basicBeanDescription);
        beanDeserializerBuilder.setValueInstantiator(valueInstantiator);
        this.addBeanProps(deserializationConfig, basicBeanDescription, beanDeserializerBuilder);
        this.addReferenceProperties(deserializationConfig, basicBeanDescription, beanDeserializerBuilder);
        this.addInjectables(deserializationConfig, basicBeanDescription, beanDeserializerBuilder);
        if (this._factoryConfig.hasDeserializerModifiers()) {
            final Iterator<BeanDeserializerModifier> iterator = this._factoryConfig.deserializerModifiers().iterator();
            while (iterator.hasNext()) {
                beanDeserializerBuilder = iterator.next().updateBuilder(deserializationConfig, basicBeanDescription, beanDeserializerBuilder);
            }
        }
        JsonDeserializer<?> jsonDeserializer = beanDeserializerBuilder.build(beanProperty);
        if (this._factoryConfig.hasDeserializerModifiers()) {
            final Iterator<BeanDeserializerModifier> iterator2 = this._factoryConfig.deserializerModifiers().iterator();
            while (iterator2.hasNext()) {
                jsonDeserializer = iterator2.next().modifyDeserializer(deserializationConfig, basicBeanDescription, jsonDeserializer);
            }
        }
        return (JsonDeserializer<Object>)jsonDeserializer;
    }
    
    public JsonDeserializer<Object> buildThrowableDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty) throws JsonMappingException {
        BeanDeserializerBuilder beanDeserializerBuilder = this.constructBeanDeserializerBuilder(basicBeanDescription);
        beanDeserializerBuilder.setValueInstantiator(this.findValueInstantiator(deserializationConfig, basicBeanDescription));
        this.addBeanProps(deserializationConfig, basicBeanDescription, beanDeserializerBuilder);
        final AnnotatedMethod method = basicBeanDescription.findMethod("initCause", BeanDeserializerFactory.INIT_CAUSE_PARAMS);
        if (method != null) {
            final SettableBeanProperty constructSettableProperty = this.constructSettableProperty(deserializationConfig, basicBeanDescription, "cause", method);
            if (constructSettableProperty != null) {
                beanDeserializerBuilder.addOrReplaceProperty(constructSettableProperty, true);
            }
        }
        beanDeserializerBuilder.addIgnorable("localizedMessage");
        beanDeserializerBuilder.addIgnorable("message");
        if (this._factoryConfig.hasDeserializerModifiers()) {
            final Iterator<BeanDeserializerModifier> iterator = this._factoryConfig.deserializerModifiers().iterator();
            while (iterator.hasNext()) {
                beanDeserializerBuilder = iterator.next().updateBuilder(deserializationConfig, basicBeanDescription, beanDeserializerBuilder);
            }
        }
        JsonDeserializer<?> jsonDeserializer = beanDeserializerBuilder.build(beanProperty);
        if (jsonDeserializer instanceof BeanDeserializer) {
            jsonDeserializer = new ThrowableDeserializer((BeanDeserializer)jsonDeserializer);
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            final Iterator<BeanDeserializerModifier> iterator2 = this._factoryConfig.deserializerModifiers().iterator();
            while (iterator2.hasNext()) {
                jsonDeserializer = iterator2.next().modifyDeserializer(deserializationConfig, basicBeanDescription, jsonDeserializer);
            }
        }
        return (JsonDeserializer<Object>)jsonDeserializer;
    }
    
    protected SettableAnyProperty constructAnySetter(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final AnnotatedMethod annotatedMethod) throws JsonMappingException {
        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            annotatedMethod.fixAccess();
        }
        final JavaType resolveType = basicBeanDescription.bindingsForBeanType().resolveType(annotatedMethod.getParameterType(1));
        final BeanProperty.Std std = new BeanProperty.Std(annotatedMethod.getName(), resolveType, basicBeanDescription.getClassAnnotations(), annotatedMethod);
        final JavaType resolveType2 = this.resolveType(deserializationConfig, basicBeanDescription, resolveType, annotatedMethod, std);
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, annotatedMethod, std);
        if (deserializerFromAnnotation != null) {
            return new SettableAnyProperty(std, annotatedMethod, resolveType2, deserializerFromAnnotation);
        }
        return new SettableAnyProperty(std, annotatedMethod, this.modifyTypeByAnnotation(deserializationConfig, annotatedMethod, resolveType2, std.getName()), null);
    }
    
    protected BeanDeserializerBuilder constructBeanDeserializerBuilder(final BasicBeanDescription basicBeanDescription) {
        return new BeanDeserializerBuilder(basicBeanDescription);
    }
    
    protected CreatorProperty constructCreatorProperty(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final String s, final int n, final AnnotatedParameter annotatedParameter, final Object o) throws JsonMappingException {
        final JavaType constructType = deserializationConfig.getTypeFactory().constructType(annotatedParameter.getParameterType(), basicBeanDescription.bindingsForBeanType());
        BeanProperty.Std withType = new BeanProperty.Std(s, constructType, basicBeanDescription.getClassAnnotations(), annotatedParameter);
        final JavaType resolveType = this.resolveType(deserializationConfig, basicBeanDescription, constructType, annotatedParameter, withType);
        if (resolveType != constructType) {
            withType = withType.withType(resolveType);
        }
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, annotatedParameter, withType);
        final JavaType modifyTypeByAnnotation = this.modifyTypeByAnnotation(deserializationConfig, annotatedParameter, resolveType, s);
        TypeDeserializer typeDeserializer = modifyTypeByAnnotation.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = this.findTypeDeserializer(deserializationConfig, modifyTypeByAnnotation, withType);
        }
        CreatorProperty withValueDeserializer = new CreatorProperty(s, modifyTypeByAnnotation, typeDeserializer, basicBeanDescription.getClassAnnotations(), annotatedParameter, n, o);
        if (deserializerFromAnnotation != null) {
            withValueDeserializer = withValueDeserializer.withValueDeserializer(deserializerFromAnnotation);
        }
        return withValueDeserializer;
    }
    
    protected ValueInstantiator constructDefaultValueInstantiator(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription) throws JsonMappingException {
        final boolean enabled = deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS);
        final CreatorCollector creatorCollector = new CreatorCollector(basicBeanDescription, enabled);
        final AnnotationIntrospector annotationIntrospector = deserializationConfig.getAnnotationIntrospector();
        if (basicBeanDescription.getType().isConcrete()) {
            final AnnotatedConstructor defaultConstructor = basicBeanDescription.findDefaultConstructor();
            if (defaultConstructor != null) {
                if (enabled) {
                    ClassUtil.checkAndFixAccess(defaultConstructor.getAnnotated());
                }
                creatorCollector.setDefaultConstructor(defaultConstructor);
            }
        }
        final VisibilityChecker<?> autoDetectVisibility = deserializationConfig.getAnnotationIntrospector().findAutoDetectVisibility(basicBeanDescription.getClassInfo(), deserializationConfig.getDefaultVisibilityChecker());
        this._addDeserializerFactoryMethods(deserializationConfig, basicBeanDescription, autoDetectVisibility, annotationIntrospector, creatorCollector);
        this._addDeserializerConstructors(deserializationConfig, basicBeanDescription, autoDetectVisibility, annotationIntrospector, creatorCollector);
        return creatorCollector.constructValueInstantiator(deserializationConfig);
    }
    
    protected SettableBeanProperty constructSettableProperty(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final String s, final AnnotatedField annotatedField) throws JsonMappingException {
        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            annotatedField.fixAccess();
        }
        final JavaType resolveType = basicBeanDescription.bindingsForBeanType().resolveType(annotatedField.getGenericType());
        BeanProperty.Std withType = new BeanProperty.Std(s, resolveType, basicBeanDescription.getClassAnnotations(), annotatedField);
        final JavaType resolveType2 = this.resolveType(deserializationConfig, basicBeanDescription, resolveType, annotatedField, withType);
        if (resolveType2 != resolveType) {
            withType = withType.withType(resolveType2);
        }
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, annotatedField, withType);
        final JavaType modifyTypeByAnnotation = this.modifyTypeByAnnotation(deserializationConfig, annotatedField, resolveType2, s);
        SettableBeanProperty withValueDeserializer = new SettableBeanProperty.FieldProperty(s, modifyTypeByAnnotation, modifyTypeByAnnotation.getTypeHandler(), basicBeanDescription.getClassAnnotations(), annotatedField);
        if (deserializerFromAnnotation != null) {
            withValueDeserializer = withValueDeserializer.withValueDeserializer(deserializerFromAnnotation);
        }
        final AnnotationIntrospector.ReferenceProperty referenceType = deserializationConfig.getAnnotationIntrospector().findReferenceType(annotatedField);
        if (referenceType != null && referenceType.isManagedReference()) {
            withValueDeserializer.setManagedReferenceName(referenceType.getName());
        }
        return withValueDeserializer;
    }
    
    protected SettableBeanProperty constructSettableProperty(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final String s, final AnnotatedMethod annotatedMethod) throws JsonMappingException {
        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            annotatedMethod.fixAccess();
        }
        final JavaType resolveType = basicBeanDescription.bindingsForBeanType().resolveType(annotatedMethod.getParameterType(0));
        BeanProperty.Std withType = new BeanProperty.Std(s, resolveType, basicBeanDescription.getClassAnnotations(), annotatedMethod);
        final JavaType resolveType2 = this.resolveType(deserializationConfig, basicBeanDescription, resolveType, annotatedMethod, withType);
        if (resolveType2 != resolveType) {
            withType = withType.withType(resolveType2);
        }
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, annotatedMethod, withType);
        final JavaType modifyTypeByAnnotation = this.modifyTypeByAnnotation(deserializationConfig, annotatedMethod, resolveType2, s);
        SettableBeanProperty withValueDeserializer = new SettableBeanProperty.MethodProperty(s, modifyTypeByAnnotation, modifyTypeByAnnotation.getTypeHandler(), basicBeanDescription.getClassAnnotations(), annotatedMethod);
        if (deserializerFromAnnotation != null) {
            withValueDeserializer = withValueDeserializer.withValueDeserializer(deserializerFromAnnotation);
        }
        final AnnotationIntrospector.ReferenceProperty referenceType = deserializationConfig.getAnnotationIntrospector().findReferenceType(annotatedMethod);
        if (referenceType != null && referenceType.isManagedReference()) {
            withValueDeserializer.setManagedReferenceName(referenceType.getName());
        }
        return withValueDeserializer;
    }
    
    protected SettableBeanProperty constructSetterlessProperty(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final String s, final AnnotatedMethod annotatedMethod) throws JsonMappingException {
        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            annotatedMethod.fixAccess();
        }
        final JavaType type = annotatedMethod.getType(basicBeanDescription.bindingsForBeanType());
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, annotatedMethod, new BeanProperty.Std(s, type, basicBeanDescription.getClassAnnotations(), annotatedMethod));
        final JavaType modifyTypeByAnnotation = this.modifyTypeByAnnotation(deserializationConfig, annotatedMethod, type, s);
        SettableBeanProperty withValueDeserializer = new SettableBeanProperty.SetterlessProperty(s, modifyTypeByAnnotation, modifyTypeByAnnotation.getTypeHandler(), basicBeanDescription.getClassAnnotations(), annotatedMethod);
        if (deserializerFromAnnotation != null) {
            withValueDeserializer = withValueDeserializer.withValueDeserializer(deserializerFromAnnotation);
        }
        return withValueDeserializer;
    }
    
    @Override
    public JsonDeserializer<Object> createBeanDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, JavaType mapAbstractType, final BeanProperty beanProperty) throws JsonMappingException {
        if (mapAbstractType.isAbstract()) {
            mapAbstractType = this.mapAbstractType(deserializationConfig, mapAbstractType);
        }
        BasicBeanDescription basicBeanDescription = deserializationConfig.introspect(mapAbstractType);
        final JsonDeserializer<Object> deserializerFromAnnotation = this.findDeserializerFromAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
        if (deserializerFromAnnotation != null) {
            return deserializerFromAnnotation;
        }
        final JavaType modifyTypeByAnnotation = this.modifyTypeByAnnotation(deserializationConfig, basicBeanDescription.getClassInfo(), mapAbstractType, null);
        if (modifyTypeByAnnotation.getRawClass() != mapAbstractType.getRawClass()) {
            mapAbstractType = modifyTypeByAnnotation;
            basicBeanDescription = deserializationConfig.introspect(mapAbstractType);
        }
        final JsonDeserializer<Object> findCustomBeanDeserializer = this._findCustomBeanDeserializer(mapAbstractType, deserializationConfig, deserializerProvider, basicBeanDescription, beanProperty);
        if (findCustomBeanDeserializer != null) {
            return findCustomBeanDeserializer;
        }
        if (mapAbstractType.isThrowable()) {
            return this.buildThrowableDeserializer(deserializationConfig, mapAbstractType, basicBeanDescription, beanProperty);
        }
        if (mapAbstractType.isAbstract()) {
            final JavaType materializeAbstractType = this.materializeAbstractType(deserializationConfig, basicBeanDescription);
            if (materializeAbstractType != null) {
                return this.buildBeanDeserializer(deserializationConfig, materializeAbstractType, (BasicBeanDescription)deserializationConfig.introspect(materializeAbstractType), beanProperty);
            }
        }
        final JsonDeserializer<Object> stdBeanDeserializer = this.findStdBeanDeserializer(deserializationConfig, deserializerProvider, mapAbstractType, beanProperty);
        if (stdBeanDeserializer != null) {
            return stdBeanDeserializer;
        }
        if (!this.isPotentialBeanType(mapAbstractType.getRawClass())) {
            return null;
        }
        return this.buildBeanDeserializer(deserializationConfig, mapAbstractType, basicBeanDescription, beanProperty);
    }
    
    @Override
    public KeyDeserializer createKeyDeserializer(final DeserializationConfig deserializationConfig, final JavaType key, final BeanProperty beanProperty) throws JsonMappingException {
        if (this._factoryConfig.hasKeyDeserializers()) {
            final BasicBeanDescription basicBeanDescription = deserializationConfig.introspectClassAnnotations(key.getRawClass());
            final Iterator<KeyDeserializers> iterator = this._factoryConfig.keyDeserializers().iterator();
            while (iterator.hasNext()) {
                final KeyDeserializer keyDeserializer = iterator.next().findKeyDeserializer(key, deserializationConfig, basicBeanDescription, beanProperty);
                if (keyDeserializer != null) {
                    return keyDeserializer;
                }
            }
        }
        final Class<?> rawClass = key.getRawClass();
        if (rawClass == String.class || rawClass == Object.class) {
            return StdKeyDeserializers.constructStringKeyDeserializer(deserializationConfig, key);
        }
        final KeyDeserializer keyDeserializer2 = BeanDeserializerFactory._keyDeserializers.get(key);
        if (keyDeserializer2 != null) {
            return keyDeserializer2;
        }
        if (key.isEnumType()) {
            return this._createEnumKeyDeserializer(deserializationConfig, key, beanProperty);
        }
        return StdKeyDeserializers.findStringBasedKeyDeserializer(deserializationConfig, key);
    }
    
    @Override
    public ValueInstantiator findValueInstantiator(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription) throws JsonMappingException {
        final AnnotatedClass classInfo = basicBeanDescription.getClassInfo();
        final Object valueInstantiator = deserializationConfig.getAnnotationIntrospector().findValueInstantiator(classInfo);
        ValueInstantiator valueInstantiator2;
        if (valueInstantiator != null) {
            if (valueInstantiator instanceof ValueInstantiator) {
                valueInstantiator2 = (ValueInstantiator)valueInstantiator;
            }
            else {
                if (!(valueInstantiator instanceof Class)) {
                    throw new IllegalStateException("Invalid value instantiator returned for type " + basicBeanDescription + ": neither a Class nor ValueInstantiator");
                }
                final Class<?> clazz = (Class<?>)valueInstantiator;
                if (!ValueInstantiator.class.isAssignableFrom(clazz)) {
                    throw new IllegalStateException("Invalid instantiator Class<?> returned for type " + basicBeanDescription + ": " + clazz.getName() + " not a ValueInstantiator");
                }
                valueInstantiator2 = deserializationConfig.valueInstantiatorInstance(classInfo, (Class<? extends ValueInstantiator>)clazz);
            }
        }
        else {
            valueInstantiator2 = this.constructDefaultValueInstantiator(deserializationConfig, basicBeanDescription);
        }
        if (this._factoryConfig.hasValueInstantiators()) {
            for (final ValueInstantiators valueInstantiators : this._factoryConfig.valueInstantiators()) {
                valueInstantiator2 = valueInstantiators.findValueInstantiator(deserializationConfig, basicBeanDescription, valueInstantiator2);
                if (valueInstantiator2 == null) {
                    throw new JsonMappingException("Broken registered ValueInstantiators (of type " + valueInstantiators.getClass().getName() + "): returned null ValueInstantiator");
                }
            }
        }
        return valueInstantiator2;
    }
    
    @Override
    public final Config getConfig() {
        return this._factoryConfig;
    }
    
    protected boolean isIgnorableType(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription, final Class<?> clazz, final Map<Class<?>, Boolean> map) {
        Boolean b = map.get(clazz);
        if (b == null) {
            b = deserializationConfig.getAnnotationIntrospector().isIgnorableType(deserializationConfig.introspectClassAnnotations(clazz).getClassInfo());
            if (b == null) {
                b = Boolean.FALSE;
            }
        }
        return b;
    }
    
    protected boolean isPotentialBeanType(final Class<?> clazz) {
        final String canBeABeanType = ClassUtil.canBeABeanType(clazz);
        if (canBeABeanType != null) {
            throw new IllegalArgumentException("Can not deserialize Class " + clazz.getName() + " (of type " + canBeABeanType + ") as a Bean");
        }
        if (ClassUtil.isProxyType(clazz)) {
            throw new IllegalArgumentException("Can not deserialize Proxy class " + clazz.getName() + " as a Bean");
        }
        final String localType = ClassUtil.isLocalType(clazz, true);
        if (localType != null) {
            throw new IllegalArgumentException("Can not deserialize Class " + clazz.getName() + " (of type " + localType + ") as a Bean");
        }
        return true;
    }
    
    @Override
    public JavaType mapAbstractType(final DeserializationConfig deserializationConfig, JavaType obj) throws JsonMappingException {
        while (true) {
            final JavaType mapAbstractType2 = this._mapAbstractType2(deserializationConfig, obj);
            if (mapAbstractType2 == null) {
                return obj;
            }
            final Class<?> rawClass = obj.getRawClass();
            final Class<?> rawClass2 = mapAbstractType2.getRawClass();
            if (rawClass == rawClass2 || !rawClass.isAssignableFrom(rawClass2)) {
                throw new IllegalArgumentException("Invalid abstract type resolution from " + obj + " to " + mapAbstractType2 + ": latter is not a subtype of former");
            }
            obj = mapAbstractType2;
        }
    }
    
    protected JavaType materializeAbstractType(final DeserializationConfig deserializationConfig, final BasicBeanDescription basicBeanDescription) throws JsonMappingException {
        final JavaType type = basicBeanDescription.getType();
        final Iterator<AbstractTypeResolver> iterator = this._factoryConfig.abstractTypeResolvers().iterator();
        while (iterator.hasNext()) {
            final JavaType resolveAbstractType = iterator.next().resolveAbstractType(deserializationConfig, type);
            if (resolveAbstractType != null) {
                return resolveAbstractType;
            }
        }
        return null;
    }
    
    @Override
    public DeserializerFactory withConfig(final Config config) {
        if (this._factoryConfig == config) {
            return this;
        }
        if (this.getClass() != BeanDeserializerFactory.class) {
            throw new IllegalStateException("Subtype of BeanDeserializerFactory (" + this.getClass().getName() + ") has not properly overridden method 'withAdditionalDeserializers': can not instantiate subtype with " + "additional deserializer definitions");
        }
        return new BeanDeserializerFactory(config);
    }
    
    public static class ConfigImpl extends Config
    {
        protected static final AbstractTypeResolver[] NO_ABSTRACT_TYPE_RESOLVERS;
        protected static final KeyDeserializers[] NO_KEY_DESERIALIZERS;
        protected static final BeanDeserializerModifier[] NO_MODIFIERS;
        protected static final ValueInstantiators[] NO_VALUE_INSTANTIATORS;
        protected final AbstractTypeResolver[] _abstractTypeResolvers;
        protected final Deserializers[] _additionalDeserializers;
        protected final KeyDeserializers[] _additionalKeyDeserializers;
        protected final BeanDeserializerModifier[] _modifiers;
        protected final ValueInstantiators[] _valueInstantiators;
        
        static {
            NO_KEY_DESERIALIZERS = new KeyDeserializers[0];
            NO_MODIFIERS = new BeanDeserializerModifier[0];
            NO_ABSTRACT_TYPE_RESOLVERS = new AbstractTypeResolver[0];
            NO_VALUE_INSTANTIATORS = new ValueInstantiators[0];
        }
        
        public ConfigImpl() {
            this(null, null, null, null, null);
        }
        
        protected ConfigImpl(final Deserializers[] array, final KeyDeserializers[] array2, final BeanDeserializerModifier[] array3, final AbstractTypeResolver[] array4, final ValueInstantiators[] array5) {
            super();
            Deserializers[] access$000;
            if (array == null) {
                access$000 = BeanDeserializerFactory.NO_DESERIALIZERS;
            }
            else {
                access$000 = array;
            }
            this._additionalDeserializers = access$000;
            KeyDeserializers[] no_KEY_DESERIALIZERS;
            if (array2 == null) {
                no_KEY_DESERIALIZERS = ConfigImpl.NO_KEY_DESERIALIZERS;
            }
            else {
                no_KEY_DESERIALIZERS = array2;
            }
            this._additionalKeyDeserializers = no_KEY_DESERIALIZERS;
            BeanDeserializerModifier[] no_MODIFIERS;
            if (array3 == null) {
                no_MODIFIERS = ConfigImpl.NO_MODIFIERS;
            }
            else {
                no_MODIFIERS = array3;
            }
            this._modifiers = no_MODIFIERS;
            AbstractTypeResolver[] no_ABSTRACT_TYPE_RESOLVERS;
            if (array4 == null) {
                no_ABSTRACT_TYPE_RESOLVERS = ConfigImpl.NO_ABSTRACT_TYPE_RESOLVERS;
            }
            else {
                no_ABSTRACT_TYPE_RESOLVERS = array4;
            }
            this._abstractTypeResolvers = no_ABSTRACT_TYPE_RESOLVERS;
            ValueInstantiators[] no_VALUE_INSTANTIATORS;
            if (array5 == null) {
                no_VALUE_INSTANTIATORS = ConfigImpl.NO_VALUE_INSTANTIATORS;
            }
            else {
                no_VALUE_INSTANTIATORS = array5;
            }
            this._valueInstantiators = no_VALUE_INSTANTIATORS;
        }
        
        @Override
        public Iterable<AbstractTypeResolver> abstractTypeResolvers() {
            return ArrayBuilders.arrayAsIterable(this._abstractTypeResolvers);
        }
        
        @Override
        public Iterable<BeanDeserializerModifier> deserializerModifiers() {
            return ArrayBuilders.arrayAsIterable(this._modifiers);
        }
        
        @Override
        public Iterable<Deserializers> deserializers() {
            return ArrayBuilders.arrayAsIterable(this._additionalDeserializers);
        }
        
        @Override
        public boolean hasAbstractTypeResolvers() {
            return this._abstractTypeResolvers.length > 0;
        }
        
        @Override
        public boolean hasDeserializerModifiers() {
            return this._modifiers.length > 0;
        }
        
        @Override
        public boolean hasDeserializers() {
            return this._additionalDeserializers.length > 0;
        }
        
        @Override
        public boolean hasKeyDeserializers() {
            return this._additionalKeyDeserializers.length > 0;
        }
        
        @Override
        public boolean hasValueInstantiators() {
            return this._valueInstantiators.length > 0;
        }
        
        @Override
        public Iterable<KeyDeserializers> keyDeserializers() {
            return ArrayBuilders.arrayAsIterable(this._additionalKeyDeserializers);
        }
        
        @Override
        public Iterable<ValueInstantiators> valueInstantiators() {
            return ArrayBuilders.arrayAsIterable(this._valueInstantiators);
        }
        
        @Override
        public Config withAbstractTypeResolver(final AbstractTypeResolver abstractTypeResolver) {
            if (abstractTypeResolver == null) {
                throw new IllegalArgumentException("Can not pass null resolver");
            }
            return new ConfigImpl(this._additionalDeserializers, this._additionalKeyDeserializers, this._modifiers, ArrayBuilders.insertInListNoDup(this._abstractTypeResolvers, abstractTypeResolver), this._valueInstantiators);
        }
        
        @Override
        public Config withAdditionalDeserializers(final Deserializers deserializers) {
            if (deserializers == null) {
                throw new IllegalArgumentException("Can not pass null Deserializers");
            }
            return new ConfigImpl(ArrayBuilders.insertInListNoDup(this._additionalDeserializers, deserializers), this._additionalKeyDeserializers, this._modifiers, this._abstractTypeResolvers, this._valueInstantiators);
        }
        
        @Override
        public Config withAdditionalKeyDeserializers(final KeyDeserializers keyDeserializers) {
            if (keyDeserializers == null) {
                throw new IllegalArgumentException("Can not pass null KeyDeserializers");
            }
            return new ConfigImpl(this._additionalDeserializers, ArrayBuilders.insertInListNoDup(this._additionalKeyDeserializers, keyDeserializers), this._modifiers, this._abstractTypeResolvers, this._valueInstantiators);
        }
        
        @Override
        public Config withDeserializerModifier(final BeanDeserializerModifier beanDeserializerModifier) {
            if (beanDeserializerModifier == null) {
                throw new IllegalArgumentException("Can not pass null modifier");
            }
            return new ConfigImpl(this._additionalDeserializers, this._additionalKeyDeserializers, ArrayBuilders.insertInListNoDup(this._modifiers, beanDeserializerModifier), this._abstractTypeResolvers, this._valueInstantiators);
        }
        
        @Override
        public Config withValueInstantiators(final ValueInstantiators valueInstantiators) {
            if (valueInstantiators == null) {
                throw new IllegalArgumentException("Can not pass null resolver");
            }
            return new ConfigImpl(this._additionalDeserializers, this._additionalKeyDeserializers, this._modifiers, this._abstractTypeResolvers, ArrayBuilders.insertInListNoDup(this._valueInstantiators, valueInstantiators));
        }
    }
}
