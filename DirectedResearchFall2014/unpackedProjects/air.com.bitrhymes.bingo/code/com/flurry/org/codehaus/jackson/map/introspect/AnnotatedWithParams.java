package com.flurry.org.codehaus.jackson.map.introspect;

import java.lang.annotation.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;

public abstract class AnnotatedWithParams extends AnnotatedMember
{
    protected final AnnotationMap[] _paramAnnotations;
    
    protected AnnotatedWithParams(final AnnotationMap annotationMap, final AnnotationMap[] paramAnnotations) {
        super(annotationMap);
        this._paramAnnotations = paramAnnotations;
    }
    
    public final void addIfNotPresent(final Annotation annotation) {
        this._annotations.addIfNotPresent(annotation);
    }
    
    public final void addOrOverride(final Annotation annotation) {
        this._annotations.add(annotation);
    }
    
    public final void addOrOverrideParam(final int n, final Annotation annotation) {
        AnnotationMap annotationMap = this._paramAnnotations[n];
        if (annotationMap == null) {
            annotationMap = new AnnotationMap();
            this._paramAnnotations[n] = annotationMap;
        }
        annotationMap.add(annotation);
    }
    
    public abstract Object call() throws Exception;
    
    public abstract Object call(final Object[] p0) throws Exception;
    
    public abstract Object call1(final Object p0) throws Exception;
    
    @Override
    public final <A extends Annotation> A getAnnotation(final Class<A> clazz) {
        return this._annotations.get(clazz);
    }
    
    public final int getAnnotationCount() {
        return this._annotations.size();
    }
    
    public final AnnotatedParameter getParameter(final int n) {
        return new AnnotatedParameter(this, this.getParameterType(n), this._paramAnnotations[n], n);
    }
    
    public final AnnotationMap getParameterAnnotations(final int n) {
        if (this._paramAnnotations != null && n >= 0 && n <= this._paramAnnotations.length) {
            return this._paramAnnotations[n];
        }
        return null;
    }
    
    public abstract Class<?> getParameterClass(final int p0);
    
    public abstract int getParameterCount();
    
    public abstract Type getParameterType(final int p0);
    
    protected JavaType getType(TypeBindings childInstance, final TypeVariable<?>[] array) {
        if (array != null && array.length > 0) {
            childInstance = childInstance.childInstance();
            for (final TypeVariable<?> typeVariable : array) {
                childInstance._addPlaceholder(typeVariable.getName());
                final Type type = typeVariable.getBounds()[0];
                JavaType javaType;
                if (type == null) {
                    javaType = TypeFactory.unknownType();
                }
                else {
                    javaType = childInstance.resolveType(type);
                }
                childInstance.addBinding(typeVariable.getName(), javaType);
            }
        }
        return childInstance.resolveType(this.getGenericType());
    }
    
    protected AnnotatedParameter replaceParameterAnnotations(final int n, final AnnotationMap annotationMap) {
        this._paramAnnotations[n] = annotationMap;
        return this.getParameter(n);
    }
    
    public final JavaType resolveParameterType(final int n, final TypeBindings typeBindings) {
        return typeBindings.resolveType(this.getParameterType(n));
    }
}
