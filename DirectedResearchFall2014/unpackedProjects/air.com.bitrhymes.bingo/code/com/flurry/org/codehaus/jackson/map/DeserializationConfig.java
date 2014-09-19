package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.node.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import java.text.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class DeserializationConfig extends Impl<Feature, DeserializationConfig>
{
    protected final JsonNodeFactory _nodeFactory;
    protected LinkedNode<DeserializationProblemHandler> _problemHandlers;
    protected boolean _sortPropertiesAlphabetically;
    
    public DeserializationConfig(final ClassIntrospector<? extends BeanDescription> classIntrospector, final AnnotationIntrospector annotationIntrospector, final VisibilityChecker<?> visibilityChecker, final SubtypeResolver subtypeResolver, final PropertyNamingStrategy propertyNamingStrategy, final TypeFactory typeFactory, final HandlerInstantiator handlerInstantiator) {
        super(classIntrospector, annotationIntrospector, visibilityChecker, subtypeResolver, propertyNamingStrategy, typeFactory, handlerInstantiator, Impl.collectFeatureDefaults(Feature.class));
        this._nodeFactory = JsonNodeFactory.instance;
    }
    
    protected DeserializationConfig(final DeserializationConfig deserializationConfig) {
        this(deserializationConfig, deserializationConfig._base);
    }
    
    protected DeserializationConfig(final DeserializationConfig deserializationConfig, final int n) {
        super((Impl)deserializationConfig, n);
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._sortPropertiesAlphabetically = deserializationConfig._sortPropertiesAlphabetically;
    }
    
    protected DeserializationConfig(final DeserializationConfig deserializationConfig, final Base base) {
        super((Impl)deserializationConfig, base, deserializationConfig._subtypeResolver);
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._sortPropertiesAlphabetically = deserializationConfig._sortPropertiesAlphabetically;
    }
    
    protected DeserializationConfig(final DeserializationConfig deserializationConfig, final JsonNodeFactory nodeFactory) {
        super((Impl)deserializationConfig);
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = nodeFactory;
        this._sortPropertiesAlphabetically = deserializationConfig._sortPropertiesAlphabetically;
    }
    
    private DeserializationConfig(final DeserializationConfig deserializationConfig, final HashMap<ClassKey, Class<?>> mixInAnnotations, final SubtypeResolver subtypeResolver) {
        this(deserializationConfig, deserializationConfig._base);
        this._mixInAnnotations = mixInAnnotations;
        this._subtypeResolver = subtypeResolver;
    }
    
    public void addHandler(final DeserializationProblemHandler deserializationProblemHandler) {
        if (!LinkedNode.contains(this._problemHandlers, deserializationProblemHandler)) {
            this._problemHandlers = new LinkedNode<DeserializationProblemHandler>(deserializationProblemHandler, this._problemHandlers);
        }
    }
    
    @Override
    public boolean canOverrideAccessModifiers() {
        return this.isEnabled(Feature.CAN_OVERRIDE_ACCESS_MODIFIERS);
    }
    
    public void clearHandlers() {
        this._problemHandlers = null;
    }
    
    public DeserializationConfig createUnshared(final SubtypeResolver subtypeResolver) {
        final HashMap<ClassKey, Class<?>> mixInAnnotations = this._mixInAnnotations;
        this._mixInAnnotationsShared = true;
        return new DeserializationConfig(this, mixInAnnotations, subtypeResolver);
    }
    
    public JsonDeserializer<Object> deserializerInstance(final Annotated annotated, final Class<? extends JsonDeserializer<?>> clazz) {
        final HandlerInstantiator handlerInstantiator = this.getHandlerInstantiator();
        if (handlerInstantiator != null) {
            final JsonDeserializer<?> deserializerInstance = handlerInstantiator.deserializerInstance(this, annotated, clazz);
            if (deserializerInstance != null) {
                return (JsonDeserializer<Object>)deserializerInstance;
            }
        }
        return ClassUtil.createInstance(clazz, this.canOverrideAccessModifiers());
    }
    
    @Deprecated
    public void disable(final Feature feature) {
        super.disable(feature);
    }
    
    @Deprecated
    public void enable(final Feature feature) {
        super.enable(feature);
    }
    
    @Deprecated
    @Override
    public void fromAnnotations(final Class<?> clazz) {
        final AnnotationIntrospector annotationIntrospector = this.getAnnotationIntrospector();
        this._base = this._base.withVisibilityChecker(annotationIntrospector.findAutoDetectVisibility(AnnotatedClass.construct(clazz, annotationIntrospector, null), this.getDefaultVisibilityChecker()));
    }
    
    @Override
    public AnnotationIntrospector getAnnotationIntrospector() {
        if (this.isEnabled(Feature.USE_ANNOTATIONS)) {
            return super.getAnnotationIntrospector();
        }
        return NopAnnotationIntrospector.instance;
    }
    
    public Base64Variant getBase64Variant() {
        return Base64Variants.getDefaultVariant();
    }
    
    @Override
    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        Object o = super.getDefaultVisibilityChecker();
        if (!this.isEnabled(Feature.AUTO_DETECT_SETTERS)) {
            o = ((VisibilityChecker<?>)o).withSetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        if (!this.isEnabled(Feature.AUTO_DETECT_CREATORS)) {
            o = ((VisibilityChecker<?>)o).withCreatorVisibility(JsonAutoDetect.Visibility.NONE);
        }
        if (!this.isEnabled(Feature.AUTO_DETECT_FIELDS)) {
            o = ((VisibilityChecker<?>)o).withFieldVisibility(JsonAutoDetect.Visibility.NONE);
        }
        return (VisibilityChecker<?>)o;
    }
    
    public final JsonNodeFactory getNodeFactory() {
        return this._nodeFactory;
    }
    
    public LinkedNode<DeserializationProblemHandler> getProblemHandlers() {
        return this._problemHandlers;
    }
    
    public <T extends BeanDescription> T introspect(final JavaType javaType) {
        return (T)this.getClassIntrospector().forDeserialization(this, javaType, (ClassIntrospector.MixInResolver)this);
    }
    
    @Override
    public <T extends BeanDescription> T introspectClassAnnotations(final JavaType javaType) {
        return (T)this.getClassIntrospector().forClassAnnotations(this, javaType, (ClassIntrospector.MixInResolver)this);
    }
    
    @Override
    public <T extends BeanDescription> T introspectDirectClassAnnotations(final JavaType javaType) {
        return (T)this.getClassIntrospector().forDirectClassAnnotations(this, javaType, (ClassIntrospector.MixInResolver)this);
    }
    
    public <T extends BeanDescription> T introspectForCreation(final JavaType javaType) {
        return (T)this.getClassIntrospector().forCreation(this, javaType, (ClassIntrospector.MixInResolver)this);
    }
    
    @Override
    public boolean isAnnotationProcessingEnabled() {
        return this.isEnabled(Feature.USE_ANNOTATIONS);
    }
    
    public boolean isEnabled(final Feature feature) {
        return (this._featureFlags & feature.getMask()) != 0x0;
    }
    
    public KeyDeserializer keyDeserializerInstance(final Annotated annotated, final Class<? extends KeyDeserializer> clazz) {
        final HandlerInstantiator handlerInstantiator = this.getHandlerInstantiator();
        if (handlerInstantiator != null) {
            final KeyDeserializer keyDeserializerInstance = handlerInstantiator.keyDeserializerInstance(this, annotated, clazz);
            if (keyDeserializerInstance != null) {
                return keyDeserializerInstance;
            }
        }
        return ClassUtil.createInstance(clazz, this.canOverrideAccessModifiers());
    }
    
    protected DeserializationConfig passSerializationFeatures(final int n) {
        this._sortPropertiesAlphabetically = ((n & SerializationConfig.Feature.SORT_PROPERTIES_ALPHABETICALLY.getMask()) != 0x0);
        return this;
    }
    
    @Deprecated
    public void set(final Feature feature, final boolean b) {
        super.set(feature, b);
    }
    
    @Override
    public boolean shouldSortPropertiesAlphabetically() {
        return this._sortPropertiesAlphabetically;
    }
    
    public ValueInstantiator valueInstantiatorInstance(final Annotated annotated, final Class<? extends ValueInstantiator> clazz) {
        final HandlerInstantiator handlerInstantiator = this.getHandlerInstantiator();
        if (handlerInstantiator != null) {
            final ValueInstantiator valueInstantiatorInstance = handlerInstantiator.valueInstantiatorInstance(this, annotated, clazz);
            if (valueInstantiatorInstance != null) {
                return valueInstantiatorInstance;
            }
        }
        return ClassUtil.createInstance(clazz, this.canOverrideAccessModifiers());
    }
    
    public DeserializationConfig with(final Feature... array) {
        int featureFlags = this._featureFlags;
        for (int length = array.length, i = 0; i < length; ++i) {
            featureFlags |= array[i].getMask();
        }
        return new DeserializationConfig(this, featureFlags);
    }
    
    public DeserializationConfig withAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        return new DeserializationConfig(this, this._base.withAnnotationIntrospector(annotationIntrospector));
    }
    
    public DeserializationConfig withAppendedAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        return new DeserializationConfig(this, this._base.withAppendedAnnotationIntrospector(annotationIntrospector));
    }
    
    public DeserializationConfig withClassIntrospector(final ClassIntrospector<? extends BeanDescription> classIntrospector) {
        return new DeserializationConfig(this, this._base.withClassIntrospector(classIntrospector));
    }
    
    public DeserializationConfig withDateFormat(final DateFormat dateFormat) {
        if (dateFormat == this._base.getDateFormat()) {
            return this;
        }
        return new DeserializationConfig(this, this._base.withDateFormat(dateFormat));
    }
    
    public DeserializationConfig withHandlerInstantiator(final HandlerInstantiator handlerInstantiator) {
        if (handlerInstantiator == this._base.getHandlerInstantiator()) {
            return this;
        }
        return new DeserializationConfig(this, this._base.withHandlerInstantiator(handlerInstantiator));
    }
    
    public DeserializationConfig withInsertedAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        return new DeserializationConfig(this, this._base.withInsertedAnnotationIntrospector(annotationIntrospector));
    }
    
    public DeserializationConfig withNodeFactory(final JsonNodeFactory jsonNodeFactory) {
        return new DeserializationConfig(this, jsonNodeFactory);
    }
    
    public DeserializationConfig withPropertyNamingStrategy(final PropertyNamingStrategy propertyNamingStrategy) {
        return new DeserializationConfig(this, this._base.withPropertyNamingStrategy(propertyNamingStrategy));
    }
    
    public DeserializationConfig withSubtypeResolver(final SubtypeResolver subtypeResolver) {
        final DeserializationConfig deserializationConfig = new DeserializationConfig(this);
        deserializationConfig._subtypeResolver = subtypeResolver;
        return deserializationConfig;
    }
    
    public DeserializationConfig withTypeFactory(final TypeFactory typeFactory) {
        if (typeFactory == this._base.getTypeFactory()) {
            return this;
        }
        return new DeserializationConfig(this, this._base.withTypeFactory(typeFactory));
    }
    
    public DeserializationConfig withTypeResolverBuilder(final TypeResolverBuilder<?> typeResolverBuilder) {
        return new DeserializationConfig(this, this._base.withTypeResolverBuilder(typeResolverBuilder));
    }
    
    public DeserializationConfig withVisibility(final JsonMethod jsonMethod, final JsonAutoDetect.Visibility visibility) {
        return new DeserializationConfig(this, this._base.withVisibility(jsonMethod, visibility));
    }
    
    public DeserializationConfig withVisibilityChecker(final VisibilityChecker<?> visibilityChecker) {
        return new DeserializationConfig(this, this._base.withVisibilityChecker(visibilityChecker));
    }
    
    public DeserializationConfig without(final Feature... array) {
        int featureFlags = this._featureFlags;
        for (int length = array.length, i = 0; i < length; ++i) {
            featureFlags &= (-1 ^ array[i].getMask());
        }
        return new DeserializationConfig(this, featureFlags);
    }
    
    public enum Feature implements ConfigFeature
    {
        ACCEPT_EMPTY_STRING_AS_NULL_OBJECT(false), 
        ACCEPT_SINGLE_VALUE_AS_ARRAY(false), 
        AUTO_DETECT_CREATORS(true), 
        AUTO_DETECT_FIELDS(true), 
        AUTO_DETECT_SETTERS(true), 
        CAN_OVERRIDE_ACCESS_MODIFIERS(true), 
        FAIL_ON_NULL_FOR_PRIMITIVES(false), 
        FAIL_ON_NUMBERS_FOR_ENUMS(false), 
        FAIL_ON_UNKNOWN_PROPERTIES(true), 
        READ_ENUMS_USING_TO_STRING(false), 
        UNWRAP_ROOT_VALUE(false), 
        USE_ANNOTATIONS(true), 
        USE_BIG_DECIMAL_FOR_FLOATS(false), 
        USE_BIG_INTEGER_FOR_INTS(false), 
        USE_GETTERS_AS_SETTERS(true), 
        USE_JAVA_ARRAY_FOR_JSON_ARRAY(false), 
        WRAP_EXCEPTIONS(true);
        
        final boolean _defaultState;
        
        private Feature(final boolean defaultState) {
            this._defaultState = defaultState;
        }
        
        @Override
        public boolean enabledByDefault() {
            return this._defaultState;
        }
        
        @Override
        public int getMask() {
            return 1 << this.ordinal();
        }
    }
}
