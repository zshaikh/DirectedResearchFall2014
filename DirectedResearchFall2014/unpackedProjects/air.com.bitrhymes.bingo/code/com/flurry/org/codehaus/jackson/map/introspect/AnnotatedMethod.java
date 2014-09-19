package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.lang.reflect.*;

public final class AnnotatedMethod extends AnnotatedWithParams
{
    protected final Method _method;
    protected Class<?>[] _paramTypes;
    
    public AnnotatedMethod(final Method method, final AnnotationMap annotationMap, final AnnotationMap[] array) {
        super(annotationMap, array);
        this._method = method;
    }
    
    @Override
    public final Object call() throws Exception {
        return this._method.invoke(null, new Object[0]);
    }
    
    @Override
    public final Object call(final Object[] args) throws Exception {
        return this._method.invoke(null, args);
    }
    
    @Override
    public final Object call1(final Object o) throws Exception {
        return this._method.invoke(null, o);
    }
    
    @Override
    public Method getAnnotated() {
        return this._method;
    }
    
    @Override
    public Class<?> getDeclaringClass() {
        return this._method.getDeclaringClass();
    }
    
    public String getFullName() {
        return this.getDeclaringClass().getName() + "#" + this.getName() + "(" + this.getParameterCount() + " params)";
    }
    
    @Override
    public Type getGenericType() {
        return this._method.getGenericReturnType();
    }
    
    @Override
    public Member getMember() {
        return this._method;
    }
    
    public int getModifiers() {
        return this._method.getModifiers();
    }
    
    @Override
    public String getName() {
        return this._method.getName();
    }
    
    @Override
    public Class<?> getParameterClass(final int n) {
        final Class<?>[] parameterTypes = this._method.getParameterTypes();
        if (n >= parameterTypes.length) {
            return null;
        }
        return parameterTypes[n];
    }
    
    public Class<?>[] getParameterClasses() {
        if (this._paramTypes == null) {
            this._paramTypes = this._method.getParameterTypes();
        }
        return this._paramTypes;
    }
    
    @Override
    public int getParameterCount() {
        return this.getParameterTypes().length;
    }
    
    @Override
    public Type getParameterType(final int n) {
        final Type[] genericParameterTypes = this._method.getGenericParameterTypes();
        if (n >= genericParameterTypes.length) {
            return null;
        }
        return genericParameterTypes[n];
    }
    
    public Type[] getParameterTypes() {
        return this._method.getGenericParameterTypes();
    }
    
    @Override
    public Class<?> getRawType() {
        return this._method.getReturnType();
    }
    
    @Override
    public JavaType getType(final TypeBindings typeBindings) {
        return this.getType(typeBindings, this._method.getTypeParameters());
    }
    
    @Override
    public void setValue(final Object obj, final Object o) throws IllegalArgumentException {
        try {
            this._method.invoke(obj, o);
        }
        catch (IllegalAccessException cause) {
            throw new IllegalArgumentException("Failed to setValue() with method " + this.getFullName() + ": " + cause.getMessage(), cause);
        }
        catch (InvocationTargetException cause2) {
            throw new IllegalArgumentException("Failed to setValue() with method " + this.getFullName() + ": " + cause2.getMessage(), cause2);
        }
    }
    
    @Override
    public String toString() {
        return "[method " + this.getName() + ", annotations: " + this._annotations + "]";
    }
    
    @Override
    public AnnotatedMethod withAnnotations(final AnnotationMap annotationMap) {
        return new AnnotatedMethod(this._method, annotationMap, this._paramAnnotations);
    }
    
    public AnnotatedMethod withMethod(final Method method) {
        return new AnnotatedMethod(method, this._annotations, this._paramAnnotations);
    }
}
