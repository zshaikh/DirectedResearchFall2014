package com.flurry.org.codehaus.jackson.map.introspect;

import java.lang.annotation.*;
import java.lang.reflect.*;

public final class AnnotatedField extends AnnotatedMember
{
    protected final Field _field;
    
    public AnnotatedField(final Field field, final AnnotationMap annotationMap) {
        super(annotationMap);
        this._field = field;
    }
    
    public void addOrOverride(final Annotation annotation) {
        this._annotations.add(annotation);
    }
    
    @Override
    public Field getAnnotated() {
        return this._field;
    }
    
    @Override
    public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
        return this._annotations.get(clazz);
    }
    
    public int getAnnotationCount() {
        return this._annotations.size();
    }
    
    @Override
    public Class<?> getDeclaringClass() {
        return this._field.getDeclaringClass();
    }
    
    public String getFullName() {
        return this.getDeclaringClass().getName() + "#" + this.getName();
    }
    
    @Override
    public Type getGenericType() {
        return this._field.getGenericType();
    }
    
    @Override
    public Member getMember() {
        return this._field;
    }
    
    public int getModifiers() {
        return this._field.getModifiers();
    }
    
    @Override
    public String getName() {
        return this._field.getName();
    }
    
    @Override
    public Class<?> getRawType() {
        return this._field.getType();
    }
    
    @Override
    public void setValue(final Object obj, final Object value) throws IllegalArgumentException {
        try {
            this._field.set(obj, value);
        }
        catch (IllegalAccessException cause) {
            throw new IllegalArgumentException("Failed to setValue() for field " + this.getFullName() + ": " + cause.getMessage(), cause);
        }
    }
    
    @Override
    public String toString() {
        return "[field " + this.getName() + ", annotations: " + this._annotations + "]";
    }
    
    @Override
    public AnnotatedField withAnnotations(final AnnotationMap annotationMap) {
        return new AnnotatedField(this._field, annotationMap);
    }
}
