package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.util.*;
import java.lang.reflect.*;

public abstract class BeanDescription
{
    protected final JavaType _type;
    
    protected BeanDescription(final JavaType type) {
        super();
        this._type = type;
    }
    
    public abstract TypeBindings bindingsForBeanType();
    
    public abstract AnnotatedMethod findAnyGetter();
    
    public abstract AnnotatedMethod findAnySetter();
    
    public abstract AnnotatedConstructor findDefaultConstructor();
    
    @Deprecated
    public abstract LinkedHashMap<String, AnnotatedField> findDeserializableFields(final VisibilityChecker<?> p0, final Collection<String> p1);
    
    @Deprecated
    public abstract LinkedHashMap<String, AnnotatedMethod> findGetters(final VisibilityChecker<?> p0, final Collection<String> p1);
    
    public abstract Map<Object, AnnotatedMember> findInjectables();
    
    public abstract AnnotatedMethod findJsonValueMethod();
    
    public abstract List<BeanPropertyDefinition> findProperties();
    
    @Deprecated
    public abstract Map<String, AnnotatedField> findSerializableFields(final VisibilityChecker<?> p0, final Collection<String> p1);
    
    @Deprecated
    public abstract LinkedHashMap<String, AnnotatedMethod> findSetters(final VisibilityChecker<?> p0);
    
    public Class<?> getBeanClass() {
        return this._type.getRawClass();
    }
    
    public abstract Annotations getClassAnnotations();
    
    public abstract AnnotatedClass getClassInfo();
    
    public abstract Set<String> getIgnoredPropertyNames();
    
    public JavaType getType() {
        return this._type;
    }
    
    public abstract boolean hasKnownClassAnnotations();
    
    public abstract JavaType resolveType(final Type p0);
}
