package com.flurry.org.codehaus.jackson.map.ext;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;

public class OptionalHandlerFactory
{
    private static final String CLASS_NAME_DOM_DOCUMENT = "org.w3c.dom.Node";
    private static final String CLASS_NAME_DOM_NODE = "org.w3c.dom.Node";
    private static final String DESERIALIZERS_FOR_JAVAX_XML = "com.flurry.org.codehaus.jackson.map.ext.CoreXMLDeserializers";
    private static final String DESERIALIZERS_FOR_JODA_DATETIME = "com.flurry.org.codehaus.jackson.map.ext.JodaDeserializers";
    private static final String DESERIALIZER_FOR_DOM_DOCUMENT = "com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer";
    private static final String DESERIALIZER_FOR_DOM_NODE = "com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer";
    private static final String PACKAGE_PREFIX_JAVAX_XML = "javax.xml.";
    private static final String PACKAGE_PREFIX_JODA_DATETIME = "org.joda.time.";
    private static final String SERIALIZERS_FOR_JAVAX_XML = "com.flurry.org.codehaus.jackson.map.ext.CoreXMLSerializers";
    private static final String SERIALIZERS_FOR_JODA_DATETIME = "com.flurry.org.codehaus.jackson.map.ext.JodaSerializers";
    private static final String SERIALIZER_FOR_DOM_NODE = "com.flurry.org.codehaus.jackson.map.ext.DOMSerializer";
    public static final OptionalHandlerFactory instance;
    
    static {
        instance = new OptionalHandlerFactory();
    }
    
    private boolean doesImplement(final Class<?> clazz, final String anObject) {
        for (Class<?> superclass = clazz; superclass != null; superclass = superclass.getSuperclass()) {
            if (superclass.getName().equals(anObject)) {
                return true;
            }
            if (this.hasInterface(superclass, anObject)) {
                return true;
            }
        }
        return false;
    }
    
    private boolean hasInterface(final Class<?> clazz, final String anObject) {
        final Class[] interfaces = clazz.getInterfaces();
        for (int length = interfaces.length, i = 0; i < length; ++i) {
            if (interfaces[i].getName().equals(anObject)) {
                return true;
            }
        }
        for (int length2 = interfaces.length, j = 0; j < length2; ++j) {
            if (this.hasInterface(interfaces[j], anObject)) {
                return true;
            }
        }
        return false;
    }
    
    private boolean hasInterfaceStartingWith(final Class<?> clazz, final String prefix) {
        final Class[] interfaces = clazz.getInterfaces();
        for (int length = interfaces.length, i = 0; i < length; ++i) {
            if (interfaces[i].getName().startsWith(prefix)) {
                return true;
            }
        }
        for (int length2 = interfaces.length, j = 0; j < length2; ++j) {
            if (this.hasInterfaceStartingWith(interfaces[j], prefix)) {
                return true;
            }
        }
        return false;
    }
    
    private boolean hasSupertypeStartingWith(final Class<?> clazz, final String prefix) {
        for (Class<?> clazz2 = clazz.getSuperclass(); clazz2 != null; clazz2 = clazz2.getSuperclass()) {
            if (clazz2.getName().startsWith(prefix)) {
                return true;
            }
        }
        for (Class<?> superclass = clazz; superclass != null; superclass = superclass.getSuperclass()) {
            if (this.hasInterfaceStartingWith(superclass, prefix)) {
                return true;
            }
        }
        return false;
    }
    
    private Object instantiate(final String className) {
        try {
            return Class.forName(className).newInstance();
        }
        catch (Exception ex) {}
        catch (LinkageError linkageError) {
            goto Label_0013;
        }
    }
    
    public JsonDeserializer<?> findDeserializer(final JavaType javaType, final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider) {
        final Class<?> rawClass = javaType.getRawClass();
        final String name = rawClass.getName();
        String s;
        if (name.startsWith("org.joda.time.")) {
            s = "com.flurry.org.codehaus.jackson.map.ext.JodaDeserializers";
        }
        else if (name.startsWith("javax.xml.") || this.hasSupertypeStartingWith(rawClass, "javax.xml.")) {
            s = "com.flurry.org.codehaus.jackson.map.ext.CoreXMLDeserializers";
        }
        else {
            if (this.doesImplement(rawClass, "org.w3c.dom.Node")) {
                return (JsonDeserializer<?>)this.instantiate("com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer");
            }
            if (this.doesImplement(rawClass, "org.w3c.dom.Node")) {
                return (JsonDeserializer<?>)this.instantiate("com.flurry.org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer");
            }
            return null;
        }
        final Object instantiate = this.instantiate(s);
        if (instantiate == null) {
            return null;
        }
        final Collection<StdDeserializer> provide = ((Provider<StdDeserializer>)instantiate).provide();
        for (final StdDeserializer<?> stdDeserializer : provide) {
            if (rawClass == stdDeserializer.getValueClass()) {
                return stdDeserializer;
            }
        }
        for (final StdDeserializer<?> stdDeserializer2 : provide) {
            if (stdDeserializer2.getValueClass().isAssignableFrom(rawClass)) {
                return stdDeserializer2;
            }
        }
        return null;
    }
    
    public JsonSerializer<?> findSerializer(final SerializationConfig serializationConfig, final JavaType javaType) {
        final Class<?> rawClass = javaType.getRawClass();
        final String name = rawClass.getName();
        String s;
        if (name.startsWith("org.joda.time.")) {
            s = "com.flurry.org.codehaus.jackson.map.ext.JodaSerializers";
        }
        else if (name.startsWith("javax.xml.") || this.hasSupertypeStartingWith(rawClass, "javax.xml.")) {
            s = "com.flurry.org.codehaus.jackson.map.ext.CoreXMLSerializers";
        }
        else {
            if (this.doesImplement(rawClass, "org.w3c.dom.Node")) {
                return (JsonSerializer<?>)this.instantiate("com.flurry.org.codehaus.jackson.map.ext.DOMSerializer");
            }
            return null;
        }
        final Object instantiate = this.instantiate(s);
        if (instantiate == null) {
            return null;
        }
        final Collection<Map.Entry<Class<?>, V>> provide = ((Provider<Map.Entry<Class<?>, V>>)instantiate).provide();
        for (final Map.Entry<Class<?>, V> entry : provide) {
            if (rawClass == entry.getKey()) {
                return (JsonSerializer<?>)entry.getValue();
            }
        }
        for (final Map.Entry<Class<?>, V> entry2 : provide) {
            if (entry2.getKey().isAssignableFrom(rawClass)) {
                return (JsonSerializer<?>)entry2.getValue();
            }
        }
        return null;
    }
}
