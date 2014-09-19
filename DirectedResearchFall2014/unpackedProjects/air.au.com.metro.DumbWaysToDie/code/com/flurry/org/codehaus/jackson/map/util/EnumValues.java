package com.flurry.org.codehaus.jackson.map.util;

import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;

public final class EnumValues
{
    private final EnumMap<?, SerializedString> _values;
    
    private EnumValues(final Map<Enum<?>, SerializedString> m) {
        super();
        this._values = new EnumMap<Object, SerializedString>(m);
    }
    
    public static EnumValues construct(final Class<Enum<?>> clazz, final AnnotationIntrospector annotationIntrospector) {
        return constructFromName(clazz, annotationIntrospector);
    }
    
    public static EnumValues constructFromName(final Class<Enum<?>> clazz, final AnnotationIntrospector annotationIntrospector) {
        final Enum[] array = (Enum[])ClassUtil.findEnumType(clazz).getEnumConstants();
        if (array != null) {
            final HashMap<Enum<?>, SerializedString> hashMap = new HashMap<Enum<?>, SerializedString>();
            for (final Enum enum1 : array) {
                hashMap.put(enum1, new SerializedString(annotationIntrospector.findEnumValue(enum1)));
            }
            return new EnumValues(hashMap);
        }
        throw new IllegalArgumentException("Can not determine enum constants for Class " + clazz.getName());
    }
    
    public static EnumValues constructFromToString(final Class<Enum<?>> clazz, final AnnotationIntrospector annotationIntrospector) {
        final Enum[] array = (Enum[])ClassUtil.findEnumType(clazz).getEnumConstants();
        if (array != null) {
            final HashMap<Enum<?>, SerializedString> hashMap = new HashMap<Enum<?>, SerializedString>();
            for (final Enum enum1 : array) {
                hashMap.put(enum1, new SerializedString(enum1.toString()));
            }
            return new EnumValues(hashMap);
        }
        throw new IllegalArgumentException("Can not determine enum constants for Class " + clazz.getName());
    }
    
    public SerializedString serializedValueFor(final Enum<?> key) {
        return this._values.get(key);
    }
    
    @Deprecated
    public String valueFor(final Enum<?> key) {
        final SerializedString serializedString = this._values.get(key);
        if (serializedString == null) {
            return null;
        }
        return serializedString.getValue();
    }
    
    public Collection<SerializedString> values() {
        return this._values.values();
    }
}
