package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.util.*;
import java.lang.annotation.*;
import java.util.*;

public final class AnnotationMap implements Annotations
{
    protected HashMap<Class<? extends Annotation>, Annotation> _annotations;
    
    public AnnotationMap() {
        super();
    }
    
    private AnnotationMap(final HashMap<Class<? extends Annotation>, Annotation> annotations) {
        super();
        this._annotations = annotations;
    }
    
    public static AnnotationMap merge(final AnnotationMap annotationMap, final AnnotationMap annotationMap2) {
        if (annotationMap == null || annotationMap._annotations == null || annotationMap._annotations.isEmpty()) {
            return annotationMap2;
        }
        if (annotationMap2 == null || annotationMap2._annotations == null || annotationMap2._annotations.isEmpty()) {
            return annotationMap;
        }
        final HashMap<Class<? extends Annotation>, Annotation> hashMap = new HashMap<Class<? extends Annotation>, Annotation>();
        for (final Annotation value : annotationMap2._annotations.values()) {
            hashMap.put(value.annotationType(), value);
        }
        for (final Annotation value2 : annotationMap._annotations.values()) {
            hashMap.put(value2.annotationType(), value2);
        }
        return new AnnotationMap(hashMap);
    }
    
    protected final void _add(final Annotation value) {
        if (this._annotations == null) {
            this._annotations = new HashMap<Class<? extends Annotation>, Annotation>();
        }
        this._annotations.put(value.annotationType(), value);
    }
    
    public void add(final Annotation annotation) {
        this._add(annotation);
    }
    
    public void addIfNotPresent(final Annotation annotation) {
        if (this._annotations == null || !this._annotations.containsKey(annotation.annotationType())) {
            this._add(annotation);
        }
    }
    
    @Override
    public <A extends Annotation> A get(final Class<A> key) {
        if (this._annotations == null) {
            return null;
        }
        return (A)this._annotations.get(key);
    }
    
    @Override
    public int size() {
        if (this._annotations == null) {
            return 0;
        }
        return this._annotations.size();
    }
    
    @Override
    public String toString() {
        if (this._annotations == null) {
            return "[null]";
        }
        return this._annotations.toString();
    }
}
