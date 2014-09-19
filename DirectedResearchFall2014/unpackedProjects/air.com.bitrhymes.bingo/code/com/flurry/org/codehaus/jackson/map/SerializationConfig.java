package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.map.ser.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.text.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class SerializationConfig extends Impl<Feature, SerializationConfig>
{
    protected FilterProvider _filterProvider;
    protected JsonSerialize.Inclusion _serializationInclusion;
    protected Class<?> _serializationView;
    
    public SerializationConfig(final ClassIntrospector<? extends BeanDescription> classIntrospector, final AnnotationIntrospector annotationIntrospector, final VisibilityChecker<?> visibilityChecker, final SubtypeResolver subtypeResolver, final PropertyNamingStrategy propertyNamingStrategy, final TypeFactory typeFactory, final HandlerInstantiator handlerInstantiator) {
        super(classIntrospector, annotationIntrospector, visibilityChecker, subtypeResolver, propertyNamingStrategy, typeFactory, handlerInstantiator, Impl.collectFeatureDefaults(Feature.class));
        this._serializationInclusion = null;
        this._filterProvider = null;
    }
    
    protected SerializationConfig(final SerializationConfig serializationConfig) {
        this(serializationConfig, serializationConfig._base);
    }
    
    protected SerializationConfig(final SerializationConfig serializationConfig, final int n) {
        super((Impl)serializationConfig, n);
        this._serializationInclusion = null;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._serializationView = serializationConfig._serializationView;
        this._filterProvider = serializationConfig._filterProvider;
    }
    
    protected SerializationConfig(final SerializationConfig serializationConfig, final Base base) {
        super((Impl)serializationConfig, base, serializationConfig._subtypeResolver);
        this._serializationInclusion = null;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._serializationView = serializationConfig._serializationView;
        this._filterProvider = serializationConfig._filterProvider;
    }
    
    protected SerializationConfig(final SerializationConfig serializationConfig, final JsonSerialize.Inclusion serializationInclusion) {
        super((Impl)serializationConfig);
        this._serializationInclusion = null;
        this._serializationInclusion = serializationInclusion;
        if (serializationInclusion == JsonSerialize.Inclusion.NON_NULL) {
            this._featureFlags &= (-1 ^ Feature.WRITE_NULL_PROPERTIES.getMask());
        }
        else {
            this._featureFlags |= Feature.WRITE_NULL_PROPERTIES.getMask();
        }
        this._serializationView = serializationConfig._serializationView;
        this._filterProvider = serializationConfig._filterProvider;
    }
    
    protected SerializationConfig(final SerializationConfig serializationConfig, final FilterProvider filterProvider) {
        super((Impl)serializationConfig);
        this._serializationInclusion = null;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._serializationView = serializationConfig._serializationView;
        this._filterProvider = filterProvider;
    }
    
    protected SerializationConfig(final SerializationConfig serializationConfig, final Class<?> serializationView) {
        super((Impl)serializationConfig);
        this._serializationInclusion = null;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._serializationView = serializationView;
        this._filterProvider = serializationConfig._filterProvider;
    }
    
    protected SerializationConfig(final SerializationConfig serializationConfig, final HashMap<ClassKey, Class<?>> mixInAnnotations, final SubtypeResolver subtypeResolver) {
        this(serializationConfig, serializationConfig._base);
        this._mixInAnnotations = mixInAnnotations;
        this._subtypeResolver = subtypeResolver;
    }
    
    @Override
    public boolean canOverrideAccessModifiers() {
        return this.isEnabled(Feature.CAN_OVERRIDE_ACCESS_MODIFIERS);
    }
    
    public SerializationConfig createUnshared(final SubtypeResolver subtypeResolver) {
        final HashMap<ClassKey, Class<?>> mixInAnnotations = this._mixInAnnotations;
        this._mixInAnnotationsShared = true;
        return new SerializationConfig(this, mixInAnnotations, subtypeResolver);
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
        final AnnotatedClass construct = AnnotatedClass.construct(clazz, annotationIntrospector, null);
        this._base = this._base.withVisibilityChecker(annotationIntrospector.findAutoDetectVisibility(construct, this.getDefaultVisibilityChecker()));
        final JsonSerialize.Inclusion serializationInclusion = annotationIntrospector.findSerializationInclusion(construct, null);
        if (serializationInclusion != this._serializationInclusion) {
            this.setSerializationInclusion(serializationInclusion);
        }
        final JsonSerialize.Typing serializationTyping = annotationIntrospector.findSerializationTyping(construct);
        if (serializationTyping != null) {
            this.set(Feature.USE_STATIC_TYPING, serializationTyping == JsonSerialize.Typing.STATIC);
        }
    }
    
    @Override
    public AnnotationIntrospector getAnnotationIntrospector() {
        if (this.isEnabled(Feature.USE_ANNOTATIONS)) {
            return super.getAnnotationIntrospector();
        }
        return AnnotationIntrospector.nopInstance();
    }
    
    @Override
    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        Object o = super.getDefaultVisibilityChecker();
        if (!this.isEnabled(Feature.AUTO_DETECT_GETTERS)) {
            o = ((VisibilityChecker<?>)o).withGetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        if (!this.isEnabled(Feature.AUTO_DETECT_IS_GETTERS)) {
            o = ((VisibilityChecker<?>)o).withIsGetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        if (!this.isEnabled(Feature.AUTO_DETECT_FIELDS)) {
            o = ((VisibilityChecker<?>)o).withFieldVisibility(JsonAutoDetect.Visibility.NONE);
        }
        return (VisibilityChecker<?>)o;
    }
    
    public FilterProvider getFilterProvider() {
        return this._filterProvider;
    }
    
    public JsonSerialize.Inclusion getSerializationInclusion() {
        if (this._serializationInclusion != null) {
            return this._serializationInclusion;
        }
        if (this.isEnabled(Feature.WRITE_NULL_PROPERTIES)) {
            return JsonSerialize.Inclusion.ALWAYS;
        }
        return JsonSerialize.Inclusion.NON_NULL;
    }
    
    public Class<?> getSerializationView() {
        return this._serializationView;
    }
    
    public <T extends BeanDescription> T introspect(final JavaType javaType) {
        return (T)this.getClassIntrospector().forSerialization(this, javaType, (ClassIntrospector.MixInResolver)this);
    }
    
    @Override
    public <T extends BeanDescription> T introspectClassAnnotations(final JavaType javaType) {
        return (T)this.getClassIntrospector().forClassAnnotations(this, javaType, (ClassIntrospector.MixInResolver)this);
    }
    
    @Override
    public <T extends BeanDescription> T introspectDirectClassAnnotations(final JavaType javaType) {
        return (T)this.getClassIntrospector().forDirectClassAnnotations(this, javaType, (ClassIntrospector.MixInResolver)this);
    }
    
    @Override
    public boolean isAnnotationProcessingEnabled() {
        return this.isEnabled(Feature.USE_ANNOTATIONS);
    }
    
    public boolean isEnabled(final Feature feature) {
        return (this._featureFlags & feature.getMask()) != 0x0;
    }
    
    public JsonSerializer<Object> serializerInstance(final Annotated annotated, final Class<? extends JsonSerializer<?>> clazz) {
        final HandlerInstantiator handlerInstantiator = this.getHandlerInstantiator();
        if (handlerInstantiator != null) {
            final JsonSerializer<?> serializerInstance = handlerInstantiator.serializerInstance(this, annotated, clazz);
            if (serializerInstance != null) {
                return (JsonSerializer<Object>)serializerInstance;
            }
        }
        return ClassUtil.createInstance(clazz, this.canOverrideAccessModifiers());
    }
    
    @Deprecated
    public void set(final Feature feature, final boolean b) {
        super.set(feature, b);
    }
    
    @Deprecated
    @Override
    public final void setDateFormat(final DateFormat dateFormat) {
        super.setDateFormat(dateFormat);
        this.set(Feature.WRITE_DATES_AS_TIMESTAMPS, dateFormat == null);
    }
    
    @Deprecated
    public void setSerializationInclusion(final JsonSerialize.Inclusion serializationInclusion) {
        this._serializationInclusion = serializationInclusion;
        if (serializationInclusion == JsonSerialize.Inclusion.NON_NULL) {
            this.disable(Feature.WRITE_NULL_PROPERTIES);
            return;
        }
        this.enable(Feature.WRITE_NULL_PROPERTIES);
    }
    
    @Deprecated
    public void setSerializationView(final Class<?> serializationView) {
        this._serializationView = serializationView;
    }
    
    @Override
    public boolean shouldSortPropertiesAlphabetically() {
        return this.isEnabled(Feature.SORT_PROPERTIES_ALPHABETICALLY);
    }
    
    @Override
    public String toString() {
        return "[SerializationConfig: flags=0x" + Integer.toHexString(this._featureFlags) + "]";
    }
    
    public SerializationConfig with(final Feature... array) {
        int featureFlags = this._featureFlags;
        for (int length = array.length, i = 0; i < length; ++i) {
            featureFlags |= array[i].getMask();
        }
        return new SerializationConfig(this, featureFlags);
    }
    
    public SerializationConfig withAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        return new SerializationConfig(this, this._base.withAnnotationIntrospector(annotationIntrospector));
    }
    
    public SerializationConfig withAppendedAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        return new SerializationConfig(this, this._base.withAppendedAnnotationIntrospector(annotationIntrospector));
    }
    
    public SerializationConfig withClassIntrospector(final ClassIntrospector<? extends BeanDescription> classIntrospector) {
        return new SerializationConfig(this, this._base.withClassIntrospector(classIntrospector));
    }
    
    public SerializationConfig withDateFormat(final DateFormat dateFormat) {
        final SerializationConfig serializationConfig = new SerializationConfig(this, this._base.withDateFormat(dateFormat));
        if (dateFormat == null) {
            return serializationConfig.with(Feature.WRITE_DATES_AS_TIMESTAMPS);
        }
        return serializationConfig.without(Feature.WRITE_DATES_AS_TIMESTAMPS);
    }
    
    public SerializationConfig withFilters(final FilterProvider filterProvider) {
        return new SerializationConfig(this, filterProvider);
    }
    
    public SerializationConfig withHandlerInstantiator(final HandlerInstantiator handlerInstantiator) {
        return new SerializationConfig(this, this._base.withHandlerInstantiator(handlerInstantiator));
    }
    
    public SerializationConfig withInsertedAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        return new SerializationConfig(this, this._base.withInsertedAnnotationIntrospector(annotationIntrospector));
    }
    
    public SerializationConfig withPropertyNamingStrategy(final PropertyNamingStrategy propertyNamingStrategy) {
        return new SerializationConfig(this, this._base.withPropertyNamingStrategy(propertyNamingStrategy));
    }
    
    public SerializationConfig withSerializationInclusion(final JsonSerialize.Inclusion inclusion) {
        return new SerializationConfig(this, inclusion);
    }
    
    public SerializationConfig withSubtypeResolver(final SubtypeResolver subtypeResolver) {
        final SerializationConfig serializationConfig = new SerializationConfig(this);
        serializationConfig._subtypeResolver = subtypeResolver;
        return serializationConfig;
    }
    
    public SerializationConfig withTypeFactory(final TypeFactory typeFactory) {
        return new SerializationConfig(this, this._base.withTypeFactory(typeFactory));
    }
    
    public SerializationConfig withTypeResolverBuilder(final TypeResolverBuilder<?> typeResolverBuilder) {
        return new SerializationConfig(this, this._base.withTypeResolverBuilder(typeResolverBuilder));
    }
    
    public SerializationConfig withView(final Class<?> clazz) {
        return new SerializationConfig(this, clazz);
    }
    
    public SerializationConfig withVisibility(final JsonMethod jsonMethod, final JsonAutoDetect.Visibility visibility) {
        return new SerializationConfig(this, this._base.withVisibility(jsonMethod, visibility));
    }
    
    public SerializationConfig withVisibilityChecker(final VisibilityChecker<?> visibilityChecker) {
        return new SerializationConfig(this, this._base.withVisibilityChecker(visibilityChecker));
    }
    
    public SerializationConfig without(final Feature... array) {
        int featureFlags = this._featureFlags;
        for (int length = array.length, i = 0; i < length; ++i) {
            featureFlags &= (-1 ^ array[i].getMask());
        }
        return new SerializationConfig(this, featureFlags);
    }
    
    public enum Feature implements ConfigFeature
    {
        AUTO_DETECT_FIELDS(true), 
        AUTO_DETECT_GETTERS(true), 
        AUTO_DETECT_IS_GETTERS(true), 
        CAN_OVERRIDE_ACCESS_MODIFIERS(true), 
        CLOSE_CLOSEABLE(false), 
        DEFAULT_VIEW_INCLUSION(true), 
        FAIL_ON_EMPTY_BEANS(true), 
        FLUSH_AFTER_WRITE_VALUE(true), 
        INDENT_OUTPUT(false), 
        REQUIRE_SETTERS_FOR_GETTERS(false), 
        SORT_PROPERTIES_ALPHABETICALLY(false), 
        USE_ANNOTATIONS(true), 
        USE_STATIC_TYPING(false), 
        WRAP_EXCEPTIONS(true), 
        WRAP_ROOT_VALUE(false), 
        WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS(false), 
        WRITE_DATES_AS_TIMESTAMPS(true), 
        WRITE_DATE_KEYS_AS_TIMESTAMPS(false), 
        WRITE_EMPTY_JSON_ARRAYS(true), 
        WRITE_ENUMS_USING_INDEX(false), 
        WRITE_ENUMS_USING_TO_STRING(false), 
        WRITE_NULL_MAP_VALUES(true), 
        WRITE_NULL_PROPERTIES(true);
        
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
