package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.lang.reflect.*;
import java.util.*;

public class BasicClassIntrospector extends ClassIntrospector<BasicBeanDescription>
{
    protected static final BasicBeanDescription BOOLEAN_DESC;
    @Deprecated
    public static final GetterMethodFilter DEFAULT_GETTER_FILTER;
    @Deprecated
    public static final SetterAndGetterMethodFilter DEFAULT_SETTER_AND_GETTER_FILTER;
    @Deprecated
    public static final SetterMethodFilter DEFAULT_SETTER_FILTER;
    protected static final BasicBeanDescription INT_DESC;
    protected static final BasicBeanDescription LONG_DESC;
    protected static final MethodFilter MINIMAL_FILTER;
    protected static final BasicBeanDescription STRING_DESC;
    public static final BasicClassIntrospector instance;
    
    static {
        STRING_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(String.class), AnnotatedClass.constructWithoutSuperTypes(String.class, null, null));
        BOOLEAN_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Boolean.TYPE), AnnotatedClass.constructWithoutSuperTypes(Boolean.TYPE, null, null));
        INT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Integer.TYPE), AnnotatedClass.constructWithoutSuperTypes(Integer.TYPE, null, null));
        LONG_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Long.TYPE), AnnotatedClass.constructWithoutSuperTypes(Long.TYPE, null, null));
        DEFAULT_GETTER_FILTER = new GetterMethodFilter();
        DEFAULT_SETTER_FILTER = new SetterMethodFilter();
        DEFAULT_SETTER_AND_GETTER_FILTER = new SetterAndGetterMethodFilter();
        MINIMAL_FILTER = new MinimalMethodFilter();
        instance = new BasicClassIntrospector();
    }
    
    protected BasicBeanDescription _findCachedDesc(final JavaType javaType) {
        final Class<?> rawClass = javaType.getRawClass();
        if (rawClass == String.class) {
            return BasicClassIntrospector.STRING_DESC;
        }
        if (rawClass == Boolean.TYPE) {
            return BasicClassIntrospector.BOOLEAN_DESC;
        }
        if (rawClass == Integer.TYPE) {
            return BasicClassIntrospector.INT_DESC;
        }
        if (rawClass == Long.TYPE) {
            return BasicClassIntrospector.LONG_DESC;
        }
        return null;
    }
    
    public AnnotatedClass classWithCreators(final MapperConfig<?> mapperConfig, final JavaType javaType, final MixInResolver mixInResolver) {
        final boolean annotationProcessingEnabled = mapperConfig.isAnnotationProcessingEnabled();
        final AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        final Class<?> rawClass = javaType.getRawClass();
        AnnotationIntrospector annotationIntrospector2;
        if (annotationProcessingEnabled) {
            annotationIntrospector2 = annotationIntrospector;
        }
        else {
            annotationIntrospector2 = null;
        }
        final AnnotatedClass construct = AnnotatedClass.construct(rawClass, annotationIntrospector2, mixInResolver);
        construct.resolveMemberMethods(BasicClassIntrospector.MINIMAL_FILTER);
        construct.resolveCreators(true);
        return construct;
    }
    
    public POJOPropertiesCollector collectProperties(final MapperConfig<?> mapperConfig, final JavaType javaType, final MixInResolver mixInResolver, final boolean b) {
        final AnnotatedClass classWithCreators = this.classWithCreators(mapperConfig, javaType, mixInResolver);
        classWithCreators.resolveMemberMethods(BasicClassIntrospector.MINIMAL_FILTER);
        classWithCreators.resolveFields();
        return this.constructPropertyCollector(mapperConfig, classWithCreators, javaType, b).collect();
    }
    
    protected POJOPropertiesCollector constructPropertyCollector(final MapperConfig<?> mapperConfig, final AnnotatedClass annotatedClass, final JavaType javaType, final boolean b) {
        return new POJOPropertiesCollector(mapperConfig, b, javaType, annotatedClass);
    }
    
    @Override
    public BasicBeanDescription forClassAnnotations(final MapperConfig<?> mapperConfig, final JavaType javaType, final MixInResolver mixInResolver) {
        final boolean annotationProcessingEnabled = mapperConfig.isAnnotationProcessingEnabled();
        final AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        final Class<?> rawClass = javaType.getRawClass();
        AnnotationIntrospector annotationIntrospector2;
        if (annotationProcessingEnabled) {
            annotationIntrospector2 = annotationIntrospector;
        }
        else {
            annotationIntrospector2 = null;
        }
        return BasicBeanDescription.forOtherUse(mapperConfig, javaType, AnnotatedClass.construct(rawClass, annotationIntrospector2, mixInResolver));
    }
    
    @Override
    public BasicBeanDescription forCreation(final DeserializationConfig deserializationConfig, final JavaType javaType, final MixInResolver mixInResolver) {
        BasicBeanDescription basicBeanDescription = this._findCachedDesc(javaType);
        if (basicBeanDescription == null) {
            basicBeanDescription = BasicBeanDescription.forDeserialization(this.collectProperties(deserializationConfig, javaType, mixInResolver, false));
        }
        return basicBeanDescription;
    }
    
    @Override
    public BasicBeanDescription forDeserialization(final DeserializationConfig deserializationConfig, final JavaType javaType, final MixInResolver mixInResolver) {
        BasicBeanDescription basicBeanDescription = this._findCachedDesc(javaType);
        if (basicBeanDescription == null) {
            basicBeanDescription = BasicBeanDescription.forDeserialization(this.collectProperties(deserializationConfig, javaType, mixInResolver, false));
        }
        return basicBeanDescription;
    }
    
    @Override
    public BasicBeanDescription forDirectClassAnnotations(final MapperConfig<?> mapperConfig, final JavaType javaType, final MixInResolver mixInResolver) {
        final boolean annotationProcessingEnabled = mapperConfig.isAnnotationProcessingEnabled();
        final AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        final Class<?> rawClass = javaType.getRawClass();
        AnnotationIntrospector annotationIntrospector2;
        if (annotationProcessingEnabled) {
            annotationIntrospector2 = annotationIntrospector;
        }
        else {
            annotationIntrospector2 = null;
        }
        return BasicBeanDescription.forOtherUse(mapperConfig, javaType, AnnotatedClass.constructWithoutSuperTypes(rawClass, annotationIntrospector2, mixInResolver));
    }
    
    @Override
    public BasicBeanDescription forSerialization(final SerializationConfig serializationConfig, final JavaType javaType, final MixInResolver mixInResolver) {
        BasicBeanDescription basicBeanDescription = this._findCachedDesc(javaType);
        if (basicBeanDescription == null) {
            basicBeanDescription = BasicBeanDescription.forSerialization(this.collectProperties(serializationConfig, javaType, mixInResolver, true));
        }
        return basicBeanDescription;
    }
    
    @Deprecated
    protected MethodFilter getDeserializationMethodFilter(final DeserializationConfig deserializationConfig) {
        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.USE_GETTERS_AS_SETTERS)) {
            return BasicClassIntrospector.DEFAULT_SETTER_AND_GETTER_FILTER;
        }
        return BasicClassIntrospector.DEFAULT_SETTER_FILTER;
    }
    
    @Deprecated
    protected MethodFilter getSerializationMethodFilter(final SerializationConfig serializationConfig) {
        return BasicClassIntrospector.DEFAULT_GETTER_FILTER;
    }
    
    @Deprecated
    public static class GetterMethodFilter implements MethodFilter
    {
        @Override
        public boolean includeMethod(final Method method) {
            return ClassUtil.hasGetterSignature(method);
        }
    }
    
    private static class MinimalMethodFilter implements MethodFilter
    {
        @Override
        public boolean includeMethod(final Method method) {
            return !Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length <= 2;
        }
    }
    
    @Deprecated
    public static final class SetterAndGetterMethodFilter extends SetterMethodFilter
    {
        @Override
        public boolean includeMethod(final Method method) {
            if (super.includeMethod(method)) {
                return true;
            }
            if (!ClassUtil.hasGetterSignature(method)) {
                return false;
            }
            final Class<?> returnType = method.getReturnType();
            return Collection.class.isAssignableFrom(returnType) || Map.class.isAssignableFrom(returnType);
        }
    }
    
    @Deprecated
    public static class SetterMethodFilter implements MethodFilter
    {
        @Override
        public boolean includeMethod(final Method method) {
            if (Modifier.isStatic(method.getModifiers())) {
                return false;
            }
            switch (method.getParameterTypes().length) {
                default: {
                    return false;
                }
                case 1: {
                    return true;
                }
                case 2: {
                    return true;
                }
            }
        }
    }
}
