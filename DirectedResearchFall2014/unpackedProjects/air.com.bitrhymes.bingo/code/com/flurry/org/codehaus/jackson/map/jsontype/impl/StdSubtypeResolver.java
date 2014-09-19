package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;

public class StdSubtypeResolver extends SubtypeResolver
{
    protected LinkedHashSet<NamedType> _registeredSubtypes;
    
    protected void _collectAndResolve(final AnnotatedClass annotatedClass, NamedType namedType, final MapperConfig<?> mapperConfig, final AnnotationIntrospector annotationIntrospector, final HashMap<NamedType, NamedType> hashMap) {
        if (!namedType.hasName()) {
            final String typeName = annotationIntrospector.findTypeName(annotatedClass);
            if (typeName != null) {
                namedType = new NamedType(namedType.getType(), typeName);
            }
        }
        if (hashMap.containsKey(namedType)) {
            if (namedType.hasName() && !hashMap.get(namedType).hasName()) {
                hashMap.put(namedType, namedType);
            }
        }
        else {
            hashMap.put(namedType, namedType);
            final List<NamedType> subtypes = annotationIntrospector.findSubtypes(annotatedClass);
            if (subtypes != null && !subtypes.isEmpty()) {
                for (NamedType namedType2 : subtypes) {
                    final AnnotatedClass constructWithoutSuperTypes = AnnotatedClass.constructWithoutSuperTypes(namedType2.getType(), annotationIntrospector, mapperConfig);
                    if (!namedType2.hasName()) {
                        namedType2 = new NamedType(namedType2.getType(), annotationIntrospector.findTypeName(constructWithoutSuperTypes));
                    }
                    this._collectAndResolve(constructWithoutSuperTypes, namedType2, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
    }
    
    @Override
    public Collection<NamedType> collectAndResolveSubtypes(final AnnotatedClass annotatedClass, final MapperConfig<?> mapperConfig, final AnnotationIntrospector annotationIntrospector) {
        final HashMap<NamedType, NamedType> hashMap = new HashMap<NamedType, NamedType>();
        if (this._registeredSubtypes != null) {
            final Class<?> rawType = annotatedClass.getRawType();
            for (final NamedType namedType : this._registeredSubtypes) {
                if (rawType.isAssignableFrom(namedType.getType())) {
                    this._collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType.getType(), annotationIntrospector, mapperConfig), namedType, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
        this._collectAndResolve(annotatedClass, new NamedType(annotatedClass.getRawType(), null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList<NamedType>(hashMap.values());
    }
    
    @Override
    public Collection<NamedType> collectAndResolveSubtypes(final AnnotatedMember annotatedMember, final MapperConfig<?> mapperConfig, final AnnotationIntrospector annotationIntrospector) {
        final HashMap<NamedType, NamedType> hashMap = new HashMap<NamedType, NamedType>();
        if (this._registeredSubtypes != null) {
            final Class<?> rawType = annotatedMember.getRawType();
            for (final NamedType namedType : this._registeredSubtypes) {
                if (rawType.isAssignableFrom(namedType.getType())) {
                    this._collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType.getType(), annotationIntrospector, mapperConfig), namedType, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
        final List<NamedType> subtypes = annotationIntrospector.findSubtypes(annotatedMember);
        if (subtypes != null) {
            for (final NamedType namedType2 : subtypes) {
                this._collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType2.getType(), annotationIntrospector, mapperConfig), namedType2, mapperConfig, annotationIntrospector, hashMap);
            }
        }
        this._collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(annotatedMember.getRawType(), annotationIntrospector, mapperConfig), new NamedType(annotatedMember.getRawType(), null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList<NamedType>(hashMap.values());
    }
    
    @Override
    public void registerSubtypes(final NamedType... array) {
        if (this._registeredSubtypes == null) {
            this._registeredSubtypes = new LinkedHashSet<NamedType>();
        }
        for (int length = array.length, i = 0; i < length; ++i) {
            this._registeredSubtypes.add(array[i]);
        }
    }
    
    @Override
    public void registerSubtypes(final Class<?>... array) {
        final NamedType[] array2 = new NamedType[array.length];
        for (int i = 0; i < array.length; ++i) {
            array2[i] = new NamedType(array[i]);
        }
        this.registerSubtypes(array2);
    }
}
