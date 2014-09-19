package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.lang.annotation.*;
import java.util.*;

public abstract class AnnotationIntrospector
{
    public static AnnotationIntrospector nopInstance() {
        return NopAnnotationIntrospector.instance;
    }
    
    public static AnnotationIntrospector pair(final AnnotationIntrospector annotationIntrospector, final AnnotationIntrospector annotationIntrospector2) {
        return new Pair(annotationIntrospector, annotationIntrospector2);
    }
    
    public Collection<AnnotationIntrospector> allIntrospectors() {
        return Collections.singletonList(this);
    }
    
    public Collection<AnnotationIntrospector> allIntrospectors(final Collection<AnnotationIntrospector> collection) {
        collection.add(this);
        return collection;
    }
    
    public VisibilityChecker<?> findAutoDetectVisibility(final AnnotatedClass annotatedClass, final VisibilityChecker<?> visibilityChecker) {
        return visibilityChecker;
    }
    
    public Boolean findCachability(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    public abstract Class<? extends JsonDeserializer<?>> findContentDeserializer(final Annotated p0);
    
    public Class<? extends JsonSerializer<?>> findContentSerializer(final Annotated annotated) {
        return null;
    }
    
    public abstract String findDeserializablePropertyName(final AnnotatedField p0);
    
    public abstract Class<?> findDeserializationContentType(final Annotated p0, final JavaType p1, final String p2);
    
    public abstract Class<?> findDeserializationKeyType(final Annotated p0, final JavaType p1, final String p2);
    
    public abstract Class<?> findDeserializationType(final Annotated p0, final JavaType p1, final String p2);
    
    public abstract Object findDeserializer(final Annotated p0);
    
    public abstract String findEnumValue(final Enum<?> p0);
    
    public Object findFilterId(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    public abstract String findGettablePropertyName(final AnnotatedMethod p0);
    
    public abstract Boolean findIgnoreUnknownProperties(final AnnotatedClass p0);
    
    public Object findInjectableValueId(final AnnotatedMember annotatedMember) {
        return null;
    }
    
    public abstract Class<? extends KeyDeserializer> findKeyDeserializer(final Annotated p0);
    
    public Class<? extends JsonSerializer<?>> findKeySerializer(final Annotated annotated) {
        return null;
    }
    
    public abstract String[] findPropertiesToIgnore(final AnnotatedClass p0);
    
    public TypeResolverBuilder<?> findPropertyContentTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedMember annotatedMember, final JavaType javaType) {
        return null;
    }
    
    public abstract String findPropertyNameForParam(final AnnotatedParameter p0);
    
    public TypeResolverBuilder<?> findPropertyTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedMember annotatedMember, final JavaType javaType) {
        return null;
    }
    
    public ReferenceProperty findReferenceType(final AnnotatedMember annotatedMember) {
        return null;
    }
    
    public abstract String findRootName(final AnnotatedClass p0);
    
    public abstract String findSerializablePropertyName(final AnnotatedField p0);
    
    public Class<?> findSerializationContentType(final Annotated annotated, final JavaType javaType) {
        return null;
    }
    
    public JsonSerialize.Inclusion findSerializationInclusion(final Annotated annotated, final JsonSerialize.Inclusion inclusion) {
        return inclusion;
    }
    
    public Class<?> findSerializationKeyType(final Annotated annotated, final JavaType javaType) {
        return null;
    }
    
    public abstract String[] findSerializationPropertyOrder(final AnnotatedClass p0);
    
    public abstract Boolean findSerializationSortAlphabetically(final AnnotatedClass p0);
    
    public abstract Class<?> findSerializationType(final Annotated p0);
    
    public abstract JsonSerialize.Typing findSerializationTyping(final Annotated p0);
    
    public abstract Class<?>[] findSerializationViews(final Annotated p0);
    
    public abstract Object findSerializer(final Annotated p0);
    
    public abstract String findSettablePropertyName(final AnnotatedMethod p0);
    
    public List<NamedType> findSubtypes(final Annotated annotated) {
        return null;
    }
    
    public String findTypeName(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    public TypeResolverBuilder<?> findTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedClass annotatedClass, final JavaType javaType) {
        return null;
    }
    
    public Object findValueInstantiator(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    public boolean hasAnyGetterAnnotation(final AnnotatedMethod annotatedMethod) {
        return false;
    }
    
    public boolean hasAnySetterAnnotation(final AnnotatedMethod annotatedMethod) {
        return false;
    }
    
    public abstract boolean hasAsValueAnnotation(final AnnotatedMethod p0);
    
    public boolean hasCreatorAnnotation(final Annotated annotated) {
        return false;
    }
    
    public boolean hasIgnoreMarker(final AnnotatedMember annotatedMember) {
        if (annotatedMember instanceof AnnotatedMethod) {
            return this.isIgnorableMethod((AnnotatedMethod)annotatedMember);
        }
        if (annotatedMember instanceof AnnotatedField) {
            return this.isIgnorableField((AnnotatedField)annotatedMember);
        }
        return annotatedMember instanceof AnnotatedConstructor && this.isIgnorableConstructor((AnnotatedConstructor)annotatedMember);
    }
    
    public abstract boolean isHandled(final Annotation p0);
    
    public abstract boolean isIgnorableConstructor(final AnnotatedConstructor p0);
    
    public abstract boolean isIgnorableField(final AnnotatedField p0);
    
    public abstract boolean isIgnorableMethod(final AnnotatedMethod p0);
    
    public Boolean isIgnorableType(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    public Boolean shouldUnwrapProperty(final AnnotatedMember annotatedMember) {
        return null;
    }
    
    public static class Pair extends AnnotationIntrospector
    {
        protected final AnnotationIntrospector _primary;
        protected final AnnotationIntrospector _secondary;
        
        public Pair(final AnnotationIntrospector primary, final AnnotationIntrospector secondary) {
            super();
            this._primary = primary;
            this._secondary = secondary;
        }
        
        public static AnnotationIntrospector create(final AnnotationIntrospector annotationIntrospector, final AnnotationIntrospector annotationIntrospector2) {
            if (annotationIntrospector == null) {
                return annotationIntrospector2;
            }
            if (annotationIntrospector2 == null) {
                return annotationIntrospector;
            }
            return new Pair(annotationIntrospector, annotationIntrospector2);
        }
        
        @Override
        public Collection<AnnotationIntrospector> allIntrospectors() {
            return this.allIntrospectors(new ArrayList<AnnotationIntrospector>());
        }
        
        @Override
        public Collection<AnnotationIntrospector> allIntrospectors(final Collection<AnnotationIntrospector> collection) {
            this._primary.allIntrospectors(collection);
            this._secondary.allIntrospectors(collection);
            return collection;
        }
        
        @Override
        public VisibilityChecker<?> findAutoDetectVisibility(final AnnotatedClass annotatedClass, final VisibilityChecker<?> visibilityChecker) {
            return this._primary.findAutoDetectVisibility(annotatedClass, this._secondary.findAutoDetectVisibility(annotatedClass, visibilityChecker));
        }
        
        @Override
        public Boolean findCachability(final AnnotatedClass annotatedClass) {
            Boolean b = this._primary.findCachability(annotatedClass);
            if (b == null) {
                b = this._secondary.findCachability(annotatedClass);
            }
            return b;
        }
        
        @Override
        public Class<? extends JsonDeserializer<?>> findContentDeserializer(final Annotated annotated) {
            Class<? extends JsonDeserializer<?>> clazz = this._primary.findContentDeserializer(annotated);
            if (clazz == null || clazz == JsonDeserializer.None.class) {
                clazz = this._secondary.findContentDeserializer(annotated);
            }
            return clazz;
        }
        
        @Override
        public Class<? extends JsonSerializer<?>> findContentSerializer(final Annotated annotated) {
            Class<? extends JsonSerializer<?>> clazz = this._primary.findContentSerializer(annotated);
            if (clazz == null || clazz == JsonSerializer.None.class) {
                clazz = this._secondary.findContentSerializer(annotated);
            }
            return clazz;
        }
        
        @Override
        public String findDeserializablePropertyName(final AnnotatedField annotatedField) {
            String s = this._primary.findDeserializablePropertyName(annotatedField);
            if (s == null) {
                s = this._secondary.findDeserializablePropertyName(annotatedField);
            }
            else if (s.length() == 0) {
                final String deserializablePropertyName = this._secondary.findDeserializablePropertyName(annotatedField);
                if (deserializablePropertyName != null) {
                    return deserializablePropertyName;
                }
            }
            return s;
        }
        
        @Override
        public Class<?> findDeserializationContentType(final Annotated annotated, final JavaType javaType, final String s) {
            Class<?> clazz = this._primary.findDeserializationContentType(annotated, javaType, s);
            if (clazz == null) {
                clazz = this._secondary.findDeserializationContentType(annotated, javaType, s);
            }
            return clazz;
        }
        
        @Override
        public Class<?> findDeserializationKeyType(final Annotated annotated, final JavaType javaType, final String s) {
            Class<?> clazz = this._primary.findDeserializationKeyType(annotated, javaType, s);
            if (clazz == null) {
                clazz = this._secondary.findDeserializationKeyType(annotated, javaType, s);
            }
            return clazz;
        }
        
        @Override
        public Class<?> findDeserializationType(final Annotated annotated, final JavaType javaType, final String s) {
            Class<?> clazz = this._primary.findDeserializationType(annotated, javaType, s);
            if (clazz == null) {
                clazz = this._secondary.findDeserializationType(annotated, javaType, s);
            }
            return clazz;
        }
        
        @Override
        public Object findDeserializer(final Annotated annotated) {
            Object o = this._primary.findDeserializer(annotated);
            if (o == null) {
                o = this._secondary.findDeserializer(annotated);
            }
            return o;
        }
        
        @Override
        public String findEnumValue(final Enum<?> enum1) {
            String s = this._primary.findEnumValue(enum1);
            if (s == null) {
                s = this._secondary.findEnumValue(enum1);
            }
            return s;
        }
        
        @Override
        public Object findFilterId(final AnnotatedClass annotatedClass) {
            Object o = this._primary.findFilterId(annotatedClass);
            if (o == null) {
                o = this._secondary.findFilterId(annotatedClass);
            }
            return o;
        }
        
        @Override
        public String findGettablePropertyName(final AnnotatedMethod annotatedMethod) {
            String s = this._primary.findGettablePropertyName(annotatedMethod);
            if (s == null) {
                s = this._secondary.findGettablePropertyName(annotatedMethod);
            }
            else if (s.length() == 0) {
                final String gettablePropertyName = this._secondary.findGettablePropertyName(annotatedMethod);
                if (gettablePropertyName != null) {
                    return gettablePropertyName;
                }
            }
            return s;
        }
        
        @Override
        public Boolean findIgnoreUnknownProperties(final AnnotatedClass annotatedClass) {
            Boolean b = this._primary.findIgnoreUnknownProperties(annotatedClass);
            if (b == null) {
                b = this._secondary.findIgnoreUnknownProperties(annotatedClass);
            }
            return b;
        }
        
        @Override
        public Object findInjectableValueId(final AnnotatedMember annotatedMember) {
            Object o = this._primary.findInjectableValueId(annotatedMember);
            if (o == null) {
                o = this._secondary.findInjectableValueId(annotatedMember);
            }
            return o;
        }
        
        @Override
        public Class<? extends KeyDeserializer> findKeyDeserializer(final Annotated annotated) {
            Class<? extends KeyDeserializer> clazz = this._primary.findKeyDeserializer(annotated);
            if (clazz == null || clazz == KeyDeserializer.None.class) {
                clazz = this._secondary.findKeyDeserializer(annotated);
            }
            return clazz;
        }
        
        @Override
        public Class<? extends JsonSerializer<?>> findKeySerializer(final Annotated annotated) {
            Class<? extends JsonSerializer<?>> clazz = this._primary.findKeySerializer(annotated);
            if (clazz == null || clazz == JsonSerializer.None.class) {
                clazz = this._secondary.findKeySerializer(annotated);
            }
            return clazz;
        }
        
        @Override
        public String[] findPropertiesToIgnore(final AnnotatedClass annotatedClass) {
            String[] array = this._primary.findPropertiesToIgnore(annotatedClass);
            if (array == null) {
                array = this._secondary.findPropertiesToIgnore(annotatedClass);
            }
            return array;
        }
        
        @Override
        public TypeResolverBuilder<?> findPropertyContentTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedMember annotatedMember, final JavaType javaType) {
            TypeResolverBuilder<?> typeResolverBuilder = this._primary.findPropertyContentTypeResolver(mapperConfig, annotatedMember, javaType);
            if (typeResolverBuilder == null) {
                typeResolverBuilder = this._secondary.findPropertyContentTypeResolver(mapperConfig, annotatedMember, javaType);
            }
            return typeResolverBuilder;
        }
        
        @Override
        public String findPropertyNameForParam(final AnnotatedParameter annotatedParameter) {
            String s = this._primary.findPropertyNameForParam(annotatedParameter);
            if (s == null) {
                s = this._secondary.findPropertyNameForParam(annotatedParameter);
            }
            return s;
        }
        
        @Override
        public TypeResolverBuilder<?> findPropertyTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedMember annotatedMember, final JavaType javaType) {
            TypeResolverBuilder<?> typeResolverBuilder = this._primary.findPropertyTypeResolver(mapperConfig, annotatedMember, javaType);
            if (typeResolverBuilder == null) {
                typeResolverBuilder = this._secondary.findPropertyTypeResolver(mapperConfig, annotatedMember, javaType);
            }
            return typeResolverBuilder;
        }
        
        @Override
        public ReferenceProperty findReferenceType(final AnnotatedMember annotatedMember) {
            ReferenceProperty referenceProperty = this._primary.findReferenceType(annotatedMember);
            if (referenceProperty == null) {
                referenceProperty = this._secondary.findReferenceType(annotatedMember);
            }
            return referenceProperty;
        }
        
        @Override
        public String findRootName(final AnnotatedClass annotatedClass) {
            final String rootName = this._primary.findRootName(annotatedClass);
            if (rootName == null) {
                return this._secondary.findRootName(annotatedClass);
            }
            if (rootName.length() > 0) {
                return rootName;
            }
            final String rootName2 = this._secondary.findRootName(annotatedClass);
            if (rootName2 == null) {
                return rootName;
            }
            return rootName2;
        }
        
        @Override
        public String findSerializablePropertyName(final AnnotatedField annotatedField) {
            String s = this._primary.findSerializablePropertyName(annotatedField);
            if (s == null) {
                s = this._secondary.findSerializablePropertyName(annotatedField);
            }
            else if (s.length() == 0) {
                final String serializablePropertyName = this._secondary.findSerializablePropertyName(annotatedField);
                if (serializablePropertyName != null) {
                    return serializablePropertyName;
                }
            }
            return s;
        }
        
        @Override
        public Class<?> findSerializationContentType(final Annotated annotated, final JavaType javaType) {
            Class<?> clazz = this._primary.findSerializationContentType(annotated, javaType);
            if (clazz == null) {
                clazz = this._secondary.findSerializationContentType(annotated, javaType);
            }
            return clazz;
        }
        
        @Override
        public JsonSerialize.Inclusion findSerializationInclusion(final Annotated annotated, final JsonSerialize.Inclusion inclusion) {
            return this._primary.findSerializationInclusion(annotated, this._secondary.findSerializationInclusion(annotated, inclusion));
        }
        
        @Override
        public Class<?> findSerializationKeyType(final Annotated annotated, final JavaType javaType) {
            Class<?> clazz = this._primary.findSerializationKeyType(annotated, javaType);
            if (clazz == null) {
                clazz = this._secondary.findSerializationKeyType(annotated, javaType);
            }
            return clazz;
        }
        
        @Override
        public String[] findSerializationPropertyOrder(final AnnotatedClass annotatedClass) {
            String[] array = this._primary.findSerializationPropertyOrder(annotatedClass);
            if (array == null) {
                array = this._secondary.findSerializationPropertyOrder(annotatedClass);
            }
            return array;
        }
        
        @Override
        public Boolean findSerializationSortAlphabetically(final AnnotatedClass annotatedClass) {
            Boolean b = this._primary.findSerializationSortAlphabetically(annotatedClass);
            if (b == null) {
                b = this._secondary.findSerializationSortAlphabetically(annotatedClass);
            }
            return b;
        }
        
        @Override
        public Class<?> findSerializationType(final Annotated annotated) {
            Class<?> clazz = this._primary.findSerializationType(annotated);
            if (clazz == null) {
                clazz = this._secondary.findSerializationType(annotated);
            }
            return clazz;
        }
        
        @Override
        public JsonSerialize.Typing findSerializationTyping(final Annotated annotated) {
            JsonSerialize.Typing typing = this._primary.findSerializationTyping(annotated);
            if (typing == null) {
                typing = this._secondary.findSerializationTyping(annotated);
            }
            return typing;
        }
        
        @Override
        public Class<?>[] findSerializationViews(final Annotated annotated) {
            Class<?>[] array = this._primary.findSerializationViews(annotated);
            if (array == null) {
                array = this._secondary.findSerializationViews(annotated);
            }
            return array;
        }
        
        @Override
        public Object findSerializer(final Annotated annotated) {
            Object o = this._primary.findSerializer(annotated);
            if (o == null) {
                o = this._secondary.findSerializer(annotated);
            }
            return o;
        }
        
        @Override
        public String findSettablePropertyName(final AnnotatedMethod annotatedMethod) {
            String s = this._primary.findSettablePropertyName(annotatedMethod);
            if (s == null) {
                s = this._secondary.findSettablePropertyName(annotatedMethod);
            }
            else if (s.length() == 0) {
                final String settablePropertyName = this._secondary.findSettablePropertyName(annotatedMethod);
                if (settablePropertyName != null) {
                    return settablePropertyName;
                }
            }
            return s;
        }
        
        @Override
        public List<NamedType> findSubtypes(final Annotated annotated) {
            final List<NamedType> subtypes = this._primary.findSubtypes(annotated);
            final List<NamedType> subtypes2 = this._secondary.findSubtypes(annotated);
            if (subtypes == null || subtypes.isEmpty()) {
                return subtypes2;
            }
            if (subtypes2 == null || subtypes2.isEmpty()) {
                return subtypes;
            }
            final ArrayList list = new ArrayList<Object>(subtypes.size() + subtypes2.size());
            list.addAll(subtypes);
            list.addAll(subtypes2);
            return (List<NamedType>)list;
        }
        
        @Override
        public String findTypeName(final AnnotatedClass annotatedClass) {
            String s = this._primary.findTypeName(annotatedClass);
            if (s == null || s.length() == 0) {
                s = this._secondary.findTypeName(annotatedClass);
            }
            return s;
        }
        
        @Override
        public TypeResolverBuilder<?> findTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedClass annotatedClass, final JavaType javaType) {
            TypeResolverBuilder<?> typeResolverBuilder = this._primary.findTypeResolver(mapperConfig, annotatedClass, javaType);
            if (typeResolverBuilder == null) {
                typeResolverBuilder = this._secondary.findTypeResolver(mapperConfig, annotatedClass, javaType);
            }
            return typeResolverBuilder;
        }
        
        @Override
        public Object findValueInstantiator(final AnnotatedClass annotatedClass) {
            Object o = this._primary.findValueInstantiator(annotatedClass);
            if (o == null) {
                o = this._secondary.findValueInstantiator(annotatedClass);
            }
            return o;
        }
        
        @Override
        public boolean hasAnyGetterAnnotation(final AnnotatedMethod annotatedMethod) {
            return this._primary.hasAnyGetterAnnotation(annotatedMethod) || this._secondary.hasAnyGetterAnnotation(annotatedMethod);
        }
        
        @Override
        public boolean hasAnySetterAnnotation(final AnnotatedMethod annotatedMethod) {
            return this._primary.hasAnySetterAnnotation(annotatedMethod) || this._secondary.hasAnySetterAnnotation(annotatedMethod);
        }
        
        @Override
        public boolean hasAsValueAnnotation(final AnnotatedMethod annotatedMethod) {
            return this._primary.hasAsValueAnnotation(annotatedMethod) || this._secondary.hasAsValueAnnotation(annotatedMethod);
        }
        
        @Override
        public boolean hasCreatorAnnotation(final Annotated annotated) {
            return this._primary.hasCreatorAnnotation(annotated) || this._secondary.hasCreatorAnnotation(annotated);
        }
        
        @Override
        public boolean hasIgnoreMarker(final AnnotatedMember annotatedMember) {
            return this._primary.hasIgnoreMarker(annotatedMember) || this._secondary.hasIgnoreMarker(annotatedMember);
        }
        
        @Override
        public boolean isHandled(final Annotation annotation) {
            return this._primary.isHandled(annotation) || this._secondary.isHandled(annotation);
        }
        
        @Override
        public boolean isIgnorableConstructor(final AnnotatedConstructor annotatedConstructor) {
            return this._primary.isIgnorableConstructor(annotatedConstructor) || this._secondary.isIgnorableConstructor(annotatedConstructor);
        }
        
        @Override
        public boolean isIgnorableField(final AnnotatedField annotatedField) {
            return this._primary.isIgnorableField(annotatedField) || this._secondary.isIgnorableField(annotatedField);
        }
        
        @Override
        public boolean isIgnorableMethod(final AnnotatedMethod annotatedMethod) {
            return this._primary.isIgnorableMethod(annotatedMethod) || this._secondary.isIgnorableMethod(annotatedMethod);
        }
        
        @Override
        public Boolean isIgnorableType(final AnnotatedClass annotatedClass) {
            Boolean b = this._primary.isIgnorableType(annotatedClass);
            if (b == null) {
                b = this._secondary.isIgnorableType(annotatedClass);
            }
            return b;
        }
        
        @Override
        public Boolean shouldUnwrapProperty(final AnnotatedMember annotatedMember) {
            Boolean b = this._primary.shouldUnwrapProperty(annotatedMember);
            if (b == null) {
                b = this._secondary.shouldUnwrapProperty(annotatedMember);
            }
            return b;
        }
    }
    
    public static class ReferenceProperty
    {
        private final String _name;
        private final Type _type;
        
        public ReferenceProperty(final Type type, final String name) {
            super();
            this._type = type;
            this._name = name;
        }
        
        public static ReferenceProperty back(final String s) {
            return new ReferenceProperty(Type.BACK_REFERENCE, s);
        }
        
        public static ReferenceProperty managed(final String s) {
            return new ReferenceProperty(Type.MANAGED_REFERENCE, s);
        }
        
        public String getName() {
            return this._name;
        }
        
        public Type getType() {
            return this._type;
        }
        
        public boolean isBackReference() {
            return this._type == Type.BACK_REFERENCE;
        }
        
        public boolean isManagedReference() {
            return this._type == Type.MANAGED_REFERENCE;
        }
        
        public enum Type
        {
            BACK_REFERENCE, 
            MANAGED_REFERENCE;
        }
    }
}
