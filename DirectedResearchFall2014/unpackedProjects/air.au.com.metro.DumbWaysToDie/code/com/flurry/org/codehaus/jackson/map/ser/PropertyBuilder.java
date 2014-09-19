package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;
import java.lang.reflect.*;

public class PropertyBuilder
{
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final BasicBeanDescription _beanDesc;
    protected final SerializationConfig _config;
    protected Object _defaultBean;
    protected final JsonSerialize.Inclusion _outputProps;
    
    public PropertyBuilder(final SerializationConfig config, final BasicBeanDescription beanDesc) {
        super();
        this._config = config;
        this._beanDesc = beanDesc;
        this._outputProps = beanDesc.findSerializationInclusion(config.getSerializationInclusion());
        this._annotationIntrospector = this._config.getAnnotationIntrospector();
    }
    
    protected Object _throwWrapped(final Exception ex, final String str, final Object o) {
        Throwable cause;
        for (cause = ex; cause.getCause() != null; cause = cause.getCause()) {}
        if (cause instanceof Error) {
            throw (Error)cause;
        }
        if (cause instanceof RuntimeException) {
            throw (RuntimeException)cause;
        }
        throw new IllegalArgumentException("Failed to get property '" + str + "' of default " + o.getClass().getName() + " instance");
    }
    
    protected BeanPropertyWriter buildWriter(final String str, final JavaType javaType, final JsonSerializer<Object> jsonSerializer, final TypeSerializer typeSerializer, final TypeSerializer typeSerializer2, final AnnotatedMember annotatedMember, final boolean b) {
        Method annotated;
        Field annotated2;
        if (annotatedMember instanceof AnnotatedField) {
            annotated = null;
            annotated2 = ((AnnotatedField)annotatedMember).getAnnotated();
        }
        else {
            annotated = ((AnnotatedMethod)annotatedMember).getAnnotated();
            annotated2 = null;
        }
        JavaType obj = this.findSerializationType(annotatedMember, b, javaType);
        if (typeSerializer2 != null) {
            if (obj == null) {
                obj = javaType;
            }
            if (obj.getContentType() == null) {
                throw new IllegalStateException("Problem trying to create BeanPropertyWriter for property '" + str + "' (of type " + this._beanDesc.getType() + "); serialization type " + obj + " has no content");
            }
            obj = obj.withContentTypeHandler(typeSerializer2);
            obj.getContentType();
        }
        final JsonSerialize.Inclusion serializationInclusion = this._annotationIntrospector.findSerializationInclusion(annotatedMember, this._outputProps);
        boolean b2 = false;
        Object o = null;
        if (serializationInclusion != null) {
            final int n = PropertyBuilder$1.$SwitchMap$org$codehaus$jackson$map$annotate$JsonSerialize$Inclusion[serializationInclusion.ordinal()];
            o = null;
            b2 = false;
            switch (n) {
                case 1: {
                    o = this.getDefaultValue(str, annotated, annotated2);
                    if (o == null) {
                        b2 = true;
                        break;
                    }
                    final boolean array = o.getClass().isArray();
                    b2 = false;
                    if (array) {
                        o = Comparators.getArrayComparator(o);
                        b2 = false;
                        break;
                    }
                    break;
                }
                case 2: {
                    b2 = true;
                    o = this.getEmptyValueChecker(str, javaType);
                    break;
                }
                case 3: {
                    b2 = true;
                }
                case 4: {
                    final boolean containerType = javaType.isContainerType();
                    o = null;
                    if (containerType) {
                        o = this.getContainerValueChecker(str, javaType);
                        break;
                    }
                    break;
                }
            }
        }
        BeanPropertyWriter unwrappingWriter = new BeanPropertyWriter(annotatedMember, this._beanDesc.getClassAnnotations(), str, javaType, jsonSerializer, typeSerializer, obj, annotated, annotated2, b2, o);
        final Boolean shouldUnwrapProperty = this._annotationIntrospector.shouldUnwrapProperty(annotatedMember);
        if (shouldUnwrapProperty != null && shouldUnwrapProperty) {
            unwrappingWriter = unwrappingWriter.unwrappingWriter();
        }
        return unwrappingWriter;
    }
    
    protected JavaType findSerializationType(final Annotated annotated, boolean b, JavaType javaType) {
        final Class<?> serializationType = this._annotationIntrospector.findSerializationType(annotated);
        if (serializationType != null) {
            final Class<?> rawClass = javaType.getRawClass();
            if (serializationType.isAssignableFrom(rawClass)) {
                javaType = javaType.widenBy(serializationType);
            }
            else {
                if (!rawClass.isAssignableFrom(serializationType)) {
                    throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + annotated.getName() + "': class " + serializationType.getName() + " not a super-type of (declared) class " + rawClass.getName());
                }
                javaType = this._config.constructSpecializedType(javaType, serializationType);
            }
            b = true;
        }
        final JavaType modifySecondaryTypesByAnnotation = BasicSerializerFactory.modifySecondaryTypesByAnnotation(this._config, annotated, javaType);
        if (modifySecondaryTypesByAnnotation != javaType) {
            b = true;
            javaType = modifySecondaryTypesByAnnotation;
        }
        if (!b) {
            final JsonSerialize.Typing serializationTyping = this._annotationIntrospector.findSerializationTyping(annotated);
            if (serializationTyping != null) {
                if (serializationTyping == JsonSerialize.Typing.STATIC) {
                    b = true;
                }
                else {
                    b = false;
                }
            }
        }
        if (b) {
            return javaType;
        }
        return null;
    }
    
    public Annotations getClassAnnotations() {
        return this._beanDesc.getClassAnnotations();
    }
    
    protected Object getContainerValueChecker(final String s, final JavaType javaType) {
        if (!this._config.isEnabled(SerializationConfig.Feature.WRITE_EMPTY_JSON_ARRAYS)) {
            if (javaType.isArrayType()) {
                return new EmptyArrayChecker();
            }
            if (Collection.class.isAssignableFrom(javaType.getRawClass())) {
                return new EmptyCollectionChecker();
            }
        }
        return null;
    }
    
    protected Object getDefaultBean() {
        if (this._defaultBean == null) {
            this._defaultBean = this._beanDesc.instantiateBean(this._config.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS));
            if (this._defaultBean == null) {
                throw new IllegalArgumentException("Class " + this._beanDesc.getClassInfo().getAnnotated().getName() + " has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation");
            }
        }
        return this._defaultBean;
    }
    
    protected Object getDefaultValue(final String s, final Method method, final Field field) {
        final Object defaultBean = this.getDefaultBean();
        Label_0021: {
            if (method == null) {
                break Label_0021;
            }
            try {
                return method.invoke(defaultBean, new Object[0]);
                return field.get(defaultBean);
            }
            catch (Exception ex) {
                return this._throwWrapped(ex, s, defaultBean);
            }
        }
    }
    
    protected Object getEmptyValueChecker(final String s, final JavaType javaType) {
        final Class<?> rawClass = javaType.getRawClass();
        if (rawClass == String.class) {
            return new EmptyStringChecker();
        }
        if (javaType.isArrayType()) {
            return new EmptyArrayChecker();
        }
        if (Collection.class.isAssignableFrom(rawClass)) {
            return new EmptyCollectionChecker();
        }
        if (Map.class.isAssignableFrom(rawClass)) {
            return new EmptyMapChecker();
        }
        return null;
    }
    
    public static class EmptyArrayChecker
    {
        @Override
        public boolean equals(final Object o) {
            return o == null || Array.getLength(o) == 0;
        }
    }
    
    public static class EmptyCollectionChecker
    {
        @Override
        public boolean equals(final Object o) {
            return o == null || ((Collection)o).size() == 0;
        }
    }
    
    public static class EmptyMapChecker
    {
        @Override
        public boolean equals(final Object o) {
            return o == null || ((Map)o).size() == 0;
        }
    }
    
    public static class EmptyStringChecker
    {
        @Override
        public boolean equals(final Object o) {
            return o == null || ((String)o).length() == 0;
        }
    }
}
