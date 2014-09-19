package com.flurry.org.codehaus.jackson.map.util;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;

public class EnumResolver<T extends Enum<T>>
{
    protected final Class<T> _enumClass;
    protected final T[] _enums;
    protected final HashMap<String, T> _enumsById;
    
    protected EnumResolver(final Class<T> enumClass, final T[] enums, final HashMap<String, T> enumsById) {
        super();
        this._enumClass = enumClass;
        this._enums = enums;
        this._enumsById = enumsById;
    }
    
    public static <ET extends Enum<ET>> EnumResolver<ET> constructFor(final Class<ET> clazz, final AnnotationIntrospector annotationIntrospector) {
        final ET[] array = clazz.getEnumConstants();
        if (array == null) {
            throw new IllegalArgumentException("No enum constants for class " + clazz.getName());
        }
        final HashMap<String, Enum> hashMap = new HashMap<String, Enum>();
        for (final Enum<ET> value : array) {
            hashMap.put(annotationIntrospector.findEnumValue(value), value);
        }
        return new EnumResolver<ET>((Class<Enum>)clazz, array, hashMap);
    }
    
    public static EnumResolver<?> constructUnsafe(final Class<?> clazz, final AnnotationIntrospector annotationIntrospector) {
        return constructFor(clazz, annotationIntrospector);
    }
    
    public static EnumResolver<?> constructUnsafeUsingToString(final Class<?> clazz) {
        return constructUsingToString(clazz);
    }
    
    public static <ET extends Enum<ET>> EnumResolver<ET> constructUsingToString(final Class<ET> clazz) {
        final ET[] array = clazz.getEnumConstants();
        final HashMap<String, Enum> hashMap = new HashMap<String, Enum>();
        int length = array.length;
        while (--length >= 0) {
            final Enum<ET> value = array[length];
            hashMap.put(value.toString(), value);
        }
        return new EnumResolver<ET>((Class<Enum>)clazz, array, hashMap);
    }
    
    public T findEnum(final String key) {
        return this._enumsById.get(key);
    }
    
    public T getEnum(final int n) {
        if (n < 0 || n >= this._enums.length) {
            return null;
        }
        return (T)this._enums[n];
    }
    
    public Class<T> getEnumClass() {
        return this._enumClass;
    }
    
    public int lastValidIndex() {
        return this._enums.length - 1;
    }
}
