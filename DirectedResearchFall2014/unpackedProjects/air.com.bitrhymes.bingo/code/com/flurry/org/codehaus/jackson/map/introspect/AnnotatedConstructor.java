package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.lang.reflect.*;

public final class AnnotatedConstructor extends AnnotatedWithParams
{
    protected final Constructor<?> _constructor;
    
    public AnnotatedConstructor(final Constructor<?> constructor, final AnnotationMap annotationMap, final AnnotationMap[] array) {
        super(annotationMap, array);
        if (constructor == null) {
            throw new IllegalArgumentException("Null constructor not allowed");
        }
        this._constructor = constructor;
    }
    
    @Override
    public final Object call() throws Exception {
        return this._constructor.newInstance(new Object[0]);
    }
    
    @Override
    public final Object call(final Object[] initargs) throws Exception {
        return this._constructor.newInstance(initargs);
    }
    
    @Override
    public final Object call1(final Object o) throws Exception {
        return this._constructor.newInstance(o);
    }
    
    @Override
    public Constructor<?> getAnnotated() {
        return this._constructor;
    }
    
    @Override
    public Class<?> getDeclaringClass() {
        return this._constructor.getDeclaringClass();
    }
    
    @Override
    public Type getGenericType() {
        return this.getRawType();
    }
    
    @Override
    public Member getMember() {
        return this._constructor;
    }
    
    public int getModifiers() {
        return this._constructor.getModifiers();
    }
    
    @Override
    public String getName() {
        return this._constructor.getName();
    }
    
    @Override
    public Class<?> getParameterClass(final int n) {
        final Class<?>[] parameterTypes = this._constructor.getParameterTypes();
        if (n >= parameterTypes.length) {
            return null;
        }
        return parameterTypes[n];
    }
    
    @Override
    public int getParameterCount() {
        return this._constructor.getParameterTypes().length;
    }
    
    @Override
    public Type getParameterType(final int n) {
        final Type[] genericParameterTypes = this._constructor.getGenericParameterTypes();
        if (n >= genericParameterTypes.length) {
            return null;
        }
        return genericParameterTypes[n];
    }
    
    @Override
    public Class<?> getRawType() {
        return this._constructor.getDeclaringClass();
    }
    
    @Override
    public JavaType getType(final TypeBindings typeBindings) {
        return this.getType(typeBindings, this._constructor.getTypeParameters());
    }
    
    @Override
    public void setValue(final Object o, final Object o2) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Cannot call setValue() on constructor of " + this.getDeclaringClass().getName());
    }
    
    @Override
    public String toString() {
        return "[constructor for " + this.getName() + ", annotations: " + this._annotations + "]";
    }
    
    @Override
    public AnnotatedConstructor withAnnotations(final AnnotationMap annotationMap) {
        return new AnnotatedConstructor(this._constructor, annotationMap, this._paramAnnotations);
    }
}
