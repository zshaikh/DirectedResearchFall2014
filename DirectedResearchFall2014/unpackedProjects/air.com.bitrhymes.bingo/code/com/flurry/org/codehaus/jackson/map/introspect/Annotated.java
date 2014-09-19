package com.flurry.org.codehaus.jackson.map.introspect;

import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.lang.reflect.*;

public abstract class Annotated
{
    protected abstract AnnotationMap getAllAnnotations();
    
    public abstract AnnotatedElement getAnnotated();
    
    public abstract <A extends Annotation> A getAnnotation(final Class<A> p0);
    
    public abstract Type getGenericType();
    
    protected abstract int getModifiers();
    
    public abstract String getName();
    
    public abstract Class<?> getRawType();
    
    public JavaType getType(final TypeBindings typeBindings) {
        return typeBindings.resolveType(this.getGenericType());
    }
    
    public final <A extends Annotation> boolean hasAnnotation(final Class<A> clazz) {
        return this.getAnnotation(clazz) != null;
    }
    
    public final boolean isPublic() {
        return Modifier.isPublic(this.getModifiers());
    }
    
    public abstract Annotated withAnnotations(final AnnotationMap p0);
    
    public final Annotated withFallBackAnnotationsFrom(final Annotated annotated) {
        return this.withAnnotations(AnnotationMap.merge(this.getAllAnnotations(), annotated.getAllAnnotations()));
    }
}
