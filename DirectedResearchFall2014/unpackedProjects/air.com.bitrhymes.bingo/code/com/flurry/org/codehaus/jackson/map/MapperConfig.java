package com.flurry.org.codehaus.jackson.map;

import java.text.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.jsontype.impl.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public abstract class MapperConfig<T extends MapperConfig<T>> implements MixInResolver
{
    protected static final DateFormat DEFAULT_DATE_FORMAT;
    protected Base _base;
    protected HashMap<ClassKey, Class<?>> _mixInAnnotations;
    protected boolean _mixInAnnotationsShared;
    protected SubtypeResolver _subtypeResolver;
    
    static {
        DEFAULT_DATE_FORMAT = StdDateFormat.instance;
    }
    
    protected MapperConfig(final ClassIntrospector<? extends BeanDescription> classIntrospector, final AnnotationIntrospector annotationIntrospector, final VisibilityChecker<?> visibilityChecker, final SubtypeResolver subtypeResolver, final PropertyNamingStrategy propertyNamingStrategy, final TypeFactory typeFactory, final HandlerInstantiator handlerInstantiator) {
        super();
        this._base = new Base(classIntrospector, annotationIntrospector, visibilityChecker, propertyNamingStrategy, typeFactory, null, MapperConfig.DEFAULT_DATE_FORMAT, handlerInstantiator);
        this._subtypeResolver = subtypeResolver;
        this._mixInAnnotationsShared = true;
    }
    
    protected MapperConfig(final MapperConfig<T> mapperConfig) {
        this(mapperConfig, mapperConfig._base, mapperConfig._subtypeResolver);
    }
    
    protected MapperConfig(final MapperConfig<T> mapperConfig, final Base base, final SubtypeResolver subtypeResolver) {
        super();
        this._base = base;
        this._subtypeResolver = subtypeResolver;
        this._mixInAnnotationsShared = true;
        this._mixInAnnotations = mapperConfig._mixInAnnotations;
    }
    
    public final void addMixInAnnotations(final Class<?> clazz, final Class<?> value) {
        if (this._mixInAnnotations == null) {
            this._mixInAnnotationsShared = false;
            this._mixInAnnotations = new HashMap<ClassKey, Class<?>>();
        }
        else if (this._mixInAnnotationsShared) {
            this._mixInAnnotationsShared = false;
            this._mixInAnnotations = new HashMap<ClassKey, Class<?>>(this._mixInAnnotations);
        }
        this._mixInAnnotations.put(new ClassKey(clazz), value);
    }
    
    @Deprecated
    public final void appendAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        this._base = this._base.withAnnotationIntrospector(AnnotationIntrospector.Pair.create(this.getAnnotationIntrospector(), annotationIntrospector));
    }
    
    public abstract boolean canOverrideAccessModifiers();
    
    public JavaType constructSpecializedType(final JavaType javaType, final Class<?> clazz) {
        return this.getTypeFactory().constructSpecializedType(javaType, clazz);
    }
    
    public final JavaType constructType(final TypeReference<?> typeReference) {
        return this.getTypeFactory().constructType(typeReference.getType(), (TypeBindings)null);
    }
    
    public final JavaType constructType(final Class<?> clazz) {
        return this.getTypeFactory().constructType(clazz, (TypeBindings)null);
    }
    
    public abstract T createUnshared(final SubtypeResolver p0);
    
    @Override
    public final Class<?> findMixInClassFor(final Class<?> clazz) {
        if (this._mixInAnnotations == null) {
            return null;
        }
        return this._mixInAnnotations.get(new ClassKey(clazz));
    }
    
    @Deprecated
    public abstract void fromAnnotations(final Class<?> p0);
    
    public AnnotationIntrospector getAnnotationIntrospector() {
        return this._base.getAnnotationIntrospector();
    }
    
    public ClassIntrospector<? extends BeanDescription> getClassIntrospector() {
        return this._base.getClassIntrospector();
    }
    
    public final DateFormat getDateFormat() {
        return this._base.getDateFormat();
    }
    
    public final TypeResolverBuilder<?> getDefaultTyper(final JavaType javaType) {
        return this._base.getTypeResolverBuilder();
    }
    
    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        return this._base.getVisibilityChecker();
    }
    
    public final HandlerInstantiator getHandlerInstantiator() {
        return this._base.getHandlerInstantiator();
    }
    
    public final PropertyNamingStrategy getPropertyNamingStrategy() {
        return this._base.getPropertyNamingStrategy();
    }
    
    public final SubtypeResolver getSubtypeResolver() {
        if (this._subtypeResolver == null) {
            this._subtypeResolver = new StdSubtypeResolver();
        }
        return this._subtypeResolver;
    }
    
    public final TypeFactory getTypeFactory() {
        return this._base.getTypeFactory();
    }
    
    @Deprecated
    public final void insertAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        this._base = this._base.withAnnotationIntrospector(AnnotationIntrospector.Pair.create(annotationIntrospector, this.getAnnotationIntrospector()));
    }
    
    public abstract <DESC extends BeanDescription> DESC introspectClassAnnotations(final JavaType p0);
    
    public <DESC extends BeanDescription> DESC introspectClassAnnotations(final Class<?> clazz) {
        return this.introspectClassAnnotations(this.constructType(clazz));
    }
    
    public abstract <DESC extends BeanDescription> DESC introspectDirectClassAnnotations(final JavaType p0);
    
    public <DESC extends BeanDescription> DESC introspectDirectClassAnnotations(final Class<?> clazz) {
        return this.introspectDirectClassAnnotations(this.constructType(clazz));
    }
    
    public abstract boolean isAnnotationProcessingEnabled();
    
    public abstract boolean isEnabled(final ConfigFeature p0);
    
    public final int mixInCount() {
        if (this._mixInAnnotations == null) {
            return 0;
        }
        return this._mixInAnnotations.size();
    }
    
    @Deprecated
    public final void setAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        this._base = this._base.withAnnotationIntrospector(annotationIntrospector);
    }
    
    @Deprecated
    public void setDateFormat(DateFormat default_DATE_FORMAT) {
        if (default_DATE_FORMAT == null) {
            default_DATE_FORMAT = MapperConfig.DEFAULT_DATE_FORMAT;
        }
        this._base = this._base.withDateFormat(default_DATE_FORMAT);
    }
    
    public final void setMixInAnnotations(final Map<Class<?>, Class<?>> map) {
        HashMap<ClassKey, Class<?>> mixInAnnotations = null;
        if (map != null) {
            final int size = map.size();
            mixInAnnotations = null;
            if (size > 0) {
                mixInAnnotations = new HashMap<ClassKey, Class<?>>(map.size());
                for (final Map.Entry<Class<?>, Class<?>> entry : map.entrySet()) {
                    mixInAnnotations.put(new ClassKey(entry.getKey()), entry.getValue());
                }
            }
        }
        this._mixInAnnotationsShared = false;
        this._mixInAnnotations = mixInAnnotations;
    }
    
    public abstract boolean shouldSortPropertiesAlphabetically();
    
    public TypeIdResolver typeIdResolverInstance(final Annotated annotated, final Class<? extends TypeIdResolver> clazz) {
        final HandlerInstantiator handlerInstantiator = this.getHandlerInstantiator();
        if (handlerInstantiator != null) {
            final TypeIdResolver typeIdResolverInstance = handlerInstantiator.typeIdResolverInstance(this, annotated, clazz);
            if (typeIdResolverInstance != null) {
                return typeIdResolverInstance;
            }
        }
        return ClassUtil.createInstance(clazz, this.canOverrideAccessModifiers());
    }
    
    public TypeResolverBuilder<?> typeResolverBuilderInstance(final Annotated annotated, final Class<? extends TypeResolverBuilder<?>> clazz) {
        final HandlerInstantiator handlerInstantiator = this.getHandlerInstantiator();
        if (handlerInstantiator != null) {
            final TypeResolverBuilder<?> typeResolverBuilderInstance = handlerInstantiator.typeResolverBuilderInstance(this, annotated, clazz);
            if (typeResolverBuilderInstance != null) {
                return typeResolverBuilderInstance;
            }
        }
        return ClassUtil.createInstance(clazz, this.canOverrideAccessModifiers());
    }
    
    public abstract T withAnnotationIntrospector(final AnnotationIntrospector p0);
    
    public abstract T withAppendedAnnotationIntrospector(final AnnotationIntrospector p0);
    
    public abstract T withClassIntrospector(final ClassIntrospector<? extends BeanDescription> p0);
    
    public abstract T withDateFormat(final DateFormat p0);
    
    public abstract T withHandlerInstantiator(final HandlerInstantiator p0);
    
    public abstract T withInsertedAnnotationIntrospector(final AnnotationIntrospector p0);
    
    public abstract T withPropertyNamingStrategy(final PropertyNamingStrategy p0);
    
    public abstract T withSubtypeResolver(final SubtypeResolver p0);
    
    public abstract T withTypeFactory(final TypeFactory p0);
    
    public abstract T withTypeResolverBuilder(final TypeResolverBuilder<?> p0);
    
    public abstract T withVisibility(final JsonMethod p0, final JsonAutoDetect.Visibility p1);
    
    public abstract T withVisibilityChecker(final VisibilityChecker<?> p0);
    
    public static class Base
    {
        protected final AnnotationIntrospector _annotationIntrospector;
        protected final ClassIntrospector<? extends BeanDescription> _classIntrospector;
        protected final DateFormat _dateFormat;
        protected final HandlerInstantiator _handlerInstantiator;
        protected final PropertyNamingStrategy _propertyNamingStrategy;
        protected final TypeFactory _typeFactory;
        protected final TypeResolverBuilder<?> _typeResolverBuilder;
        protected final VisibilityChecker<?> _visibilityChecker;
        
        public Base(final ClassIntrospector<? extends BeanDescription> classIntrospector, final AnnotationIntrospector annotationIntrospector, final VisibilityChecker<?> visibilityChecker, final PropertyNamingStrategy propertyNamingStrategy, final TypeFactory typeFactory, final TypeResolverBuilder<?> typeResolverBuilder, final DateFormat dateFormat, final HandlerInstantiator handlerInstantiator) {
            super();
            this._classIntrospector = classIntrospector;
            this._annotationIntrospector = annotationIntrospector;
            this._visibilityChecker = visibilityChecker;
            this._propertyNamingStrategy = propertyNamingStrategy;
            this._typeFactory = typeFactory;
            this._typeResolverBuilder = typeResolverBuilder;
            this._dateFormat = dateFormat;
            this._handlerInstantiator = handlerInstantiator;
        }
        
        public AnnotationIntrospector getAnnotationIntrospector() {
            return this._annotationIntrospector;
        }
        
        public ClassIntrospector<? extends BeanDescription> getClassIntrospector() {
            return this._classIntrospector;
        }
        
        public DateFormat getDateFormat() {
            return this._dateFormat;
        }
        
        public HandlerInstantiator getHandlerInstantiator() {
            return this._handlerInstantiator;
        }
        
        public PropertyNamingStrategy getPropertyNamingStrategy() {
            return this._propertyNamingStrategy;
        }
        
        public TypeFactory getTypeFactory() {
            return this._typeFactory;
        }
        
        public TypeResolverBuilder<?> getTypeResolverBuilder() {
            return this._typeResolverBuilder;
        }
        
        public VisibilityChecker<?> getVisibilityChecker() {
            return this._visibilityChecker;
        }
        
        public Base withAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
            return new Base(this._classIntrospector, annotationIntrospector, this._visibilityChecker, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator);
        }
        
        public Base withAppendedAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
            return this.withAnnotationIntrospector(AnnotationIntrospector.Pair.create(this._annotationIntrospector, annotationIntrospector));
        }
        
        public Base withClassIntrospector(final ClassIntrospector<? extends BeanDescription> classIntrospector) {
            return new Base(classIntrospector, this._annotationIntrospector, this._visibilityChecker, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator);
        }
        
        public Base withDateFormat(final DateFormat dateFormat) {
            return new Base(this._classIntrospector, this._annotationIntrospector, this._visibilityChecker, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, dateFormat, this._handlerInstantiator);
        }
        
        public Base withHandlerInstantiator(final HandlerInstantiator handlerInstantiator) {
            return new Base(this._classIntrospector, this._annotationIntrospector, this._visibilityChecker, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, handlerInstantiator);
        }
        
        public Base withInsertedAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
            return this.withAnnotationIntrospector(AnnotationIntrospector.Pair.create(annotationIntrospector, this._annotationIntrospector));
        }
        
        public Base withPropertyNamingStrategy(final PropertyNamingStrategy propertyNamingStrategy) {
            return new Base(this._classIntrospector, this._annotationIntrospector, this._visibilityChecker, propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator);
        }
        
        public Base withTypeFactory(final TypeFactory typeFactory) {
            return new Base(this._classIntrospector, this._annotationIntrospector, this._visibilityChecker, this._propertyNamingStrategy, typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator);
        }
        
        public Base withTypeResolverBuilder(final TypeResolverBuilder<?> typeResolverBuilder) {
            return new Base(this._classIntrospector, this._annotationIntrospector, this._visibilityChecker, this._propertyNamingStrategy, this._typeFactory, typeResolverBuilder, this._dateFormat, this._handlerInstantiator);
        }
        
        public Base withVisibility(final JsonMethod jsonMethod, final JsonAutoDetect.Visibility visibility) {
            return new Base(this._classIntrospector, this._annotationIntrospector, (VisibilityChecker<?>)this._visibilityChecker.withVisibility(jsonMethod, visibility), this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator);
        }
        
        public Base withVisibilityChecker(final VisibilityChecker<?> visibilityChecker) {
            return new Base(this._classIntrospector, this._annotationIntrospector, visibilityChecker, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator);
        }
    }
    
    public interface ConfigFeature
    {
        boolean enabledByDefault();
        
        int getMask();
    }
    
    abstract static class Impl<CFG extends ConfigFeature, T extends Impl<CFG, T>> extends MapperConfig<T>
    {
        protected int _featureFlags;
        
        protected Impl(final ClassIntrospector<? extends BeanDescription> classIntrospector, final AnnotationIntrospector annotationIntrospector, final VisibilityChecker<?> visibilityChecker, final SubtypeResolver subtypeResolver, final PropertyNamingStrategy propertyNamingStrategy, final TypeFactory typeFactory, final HandlerInstantiator handlerInstantiator, final int featureFlags) {
            super(classIntrospector, annotationIntrospector, visibilityChecker, subtypeResolver, propertyNamingStrategy, typeFactory, handlerInstantiator);
            this._featureFlags = featureFlags;
        }
        
        protected Impl(final Impl<CFG, T> impl) {
            super((MapperConfig<MapperConfig>)impl);
            this._featureFlags = impl._featureFlags;
        }
        
        protected Impl(final Impl<CFG, T> impl, final int featureFlags) {
            super((MapperConfig<MapperConfig>)impl);
            this._featureFlags = featureFlags;
        }
        
        protected Impl(final Impl<CFG, T> impl, final Base base, final SubtypeResolver subtypeResolver) {
            super((MapperConfig<MapperConfig>)impl, base, subtypeResolver);
            this._featureFlags = impl._featureFlags;
        }
        
        static <F extends Enum> int collectFeatureDefaults(final Class<F> clazz) {
            int n = 0;
            for (final java.lang.Enum enum1 : (java.lang.Enum[])clazz.getEnumConstants()) {
                if (((ConfigFeature)enum1).enabledByDefault()) {
                    n |= ((ConfigFeature)enum1).getMask();
                }
            }
            return n;
        }
        
        @Deprecated
        public void disable(final CFG cfg) {
            this._featureFlags &= (-1 ^ ((ConfigFeature)cfg).getMask());
        }
        
        @Deprecated
        public void enable(final CFG cfg) {
            this._featureFlags |= ((ConfigFeature)cfg).getMask();
        }
        
        @Override
        public boolean isEnabled(final ConfigFeature configFeature) {
            return (this._featureFlags & configFeature.getMask()) != 0x0;
        }
        
        @Deprecated
        public void set(final CFG cfg, final boolean b) {
            if (b) {
                this.enable(cfg);
                return;
            }
            this.disable(cfg);
        }
        
        public abstract T with(final CFG... p0);
        
        public abstract T without(final CFG... p0);
    }
}
