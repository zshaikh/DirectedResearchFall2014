package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.annotation.*;

public class NopAnnotationIntrospector extends AnnotationIntrospector
{
    public static final NopAnnotationIntrospector instance;
    
    static {
        instance = new NopAnnotationIntrospector();
    }
    
    @Override
    public Class<JsonDeserializer<?>> findContentDeserializer(final Annotated annotated) {
        return null;
    }
    
    @Override
    public String findDeserializablePropertyName(final AnnotatedField annotatedField) {
        return null;
    }
    
    @Override
    public Class<?> findDeserializationContentType(final Annotated annotated, final JavaType javaType, final String s) {
        return null;
    }
    
    @Override
    public Class<?> findDeserializationKeyType(final Annotated annotated, final JavaType javaType, final String s) {
        return null;
    }
    
    @Override
    public Class<?> findDeserializationType(final Annotated annotated, final JavaType javaType, final String s) {
        return null;
    }
    
    @Override
    public Object findDeserializer(final Annotated annotated) {
        return null;
    }
    
    @Override
    public String findEnumValue(final Enum<?> enum1) {
        return null;
    }
    
    @Override
    public String findGettablePropertyName(final AnnotatedMethod annotatedMethod) {
        return null;
    }
    
    @Override
    public Boolean findIgnoreUnknownProperties(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    @Override
    public Class<KeyDeserializer> findKeyDeserializer(final Annotated annotated) {
        return null;
    }
    
    @Override
    public String[] findPropertiesToIgnore(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    @Override
    public String findPropertyNameForParam(final AnnotatedParameter annotatedParameter) {
        return null;
    }
    
    @Override
    public String findRootName(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    @Override
    public String findSerializablePropertyName(final AnnotatedField annotatedField) {
        return null;
    }
    
    @Override
    public String[] findSerializationPropertyOrder(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    @Override
    public Boolean findSerializationSortAlphabetically(final AnnotatedClass annotatedClass) {
        return null;
    }
    
    @Override
    public Class<?> findSerializationType(final Annotated annotated) {
        return null;
    }
    
    @Override
    public JsonSerialize.Typing findSerializationTyping(final Annotated annotated) {
        return null;
    }
    
    @Override
    public Class<?>[] findSerializationViews(final Annotated annotated) {
        return null;
    }
    
    @Override
    public Object findSerializer(final Annotated annotated) {
        return null;
    }
    
    @Override
    public String findSettablePropertyName(final AnnotatedMethod annotatedMethod) {
        return null;
    }
    
    @Override
    public boolean hasAsValueAnnotation(final AnnotatedMethod annotatedMethod) {
        return false;
    }
    
    @Override
    public boolean hasIgnoreMarker(final AnnotatedMember annotatedMember) {
        return false;
    }
    
    @Override
    public boolean isHandled(final Annotation annotation) {
        return false;
    }
    
    @Override
    public boolean isIgnorableConstructor(final AnnotatedConstructor annotatedConstructor) {
        return false;
    }
    
    @Override
    public boolean isIgnorableField(final AnnotatedField annotatedField) {
        return false;
    }
    
    @Override
    public boolean isIgnorableMethod(final AnnotatedMethod annotatedMethod) {
        return false;
    }
}
