package com.flurry.org.codehaus.jackson.map.introspect;

import java.lang.annotation.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.type.*;

public final class AnnotatedParameter extends AnnotatedMember
{
    protected final int _index;
    protected final AnnotatedWithParams _owner;
    protected final Type _type;
    
    public AnnotatedParameter(final AnnotatedWithParams owner, final Type type, final AnnotationMap annotationMap, final int index) {
        super(annotationMap);
        this._owner = owner;
        this._type = type;
        this._index = index;
    }
    
    public void addOrOverride(final Annotation annotation) {
        this._annotations.add(annotation);
    }
    
    @Override
    public AnnotatedElement getAnnotated() {
        return null;
    }
    
    @Override
    public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
        return this._annotations.get(clazz);
    }
    
    @Override
    public Class<?> getDeclaringClass() {
        return this._owner.getDeclaringClass();
    }
    
    @Override
    public Type getGenericType() {
        return this._type;
    }
    
    public int getIndex() {
        return this._index;
    }
    
    @Override
    public Member getMember() {
        return this._owner.getMember();
    }
    
    public int getModifiers() {
        return this._owner.getModifiers();
    }
    
    @Override
    public String getName() {
        return "";
    }
    
    public AnnotatedWithParams getOwner() {
        return this._owner;
    }
    
    public Type getParameterType() {
        return this._type;
    }
    
    @Override
    public Class<?> getRawType() {
        if (this._type instanceof Class) {
            return (Class<?>)this._type;
        }
        return TypeFactory.defaultInstance().constructType(this._type).getRawClass();
    }
    
    @Override
    public void setValue(final Object o, final Object o2) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Cannot call setValue() on constructor parameter of " + this.getDeclaringClass().getName());
    }
    
    @Override
    public String toString() {
        return "[parameter #" + this.getIndex() + ", annotations: " + this._annotations + "]";
    }
    
    @Override
    public AnnotatedParameter withAnnotations(final AnnotationMap annotationMap) {
        if (annotationMap == this._annotations) {
            return this;
        }
        return this._owner.replaceParameterAnnotations(this._index, annotationMap);
    }
}
