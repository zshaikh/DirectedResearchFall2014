package com.flurry.org.codehaus.jackson.map.util;

import java.io.*;
import java.util.*;
import java.lang.reflect.*;

public final class ClassUtil
{
    private static void _addSuperTypes(final Class<?> clazz, final Class<?> clazz2, final Collection<Class<?>> collection, final boolean b) {
        if (clazz != clazz2 && clazz != null && clazz != Object.class) {
            if (b) {
                if (collection.contains(clazz)) {
                    return;
                }
                collection.add(clazz);
            }
            final Class<?>[] interfaces = clazz.getInterfaces();
            for (int length = interfaces.length, i = 0; i < length; ++i) {
                _addSuperTypes(interfaces[i], clazz2, collection, true);
            }
            _addSuperTypes(clazz.getSuperclass(), clazz2, collection, true);
        }
    }
    
    public static String canBeABeanType(final Class<?> clazz) {
        if (clazz.isAnnotation()) {
            return "annotation";
        }
        if (clazz.isArray()) {
            return "array";
        }
        if (clazz.isEnum()) {
            return "enum";
        }
        if (clazz.isPrimitive()) {
            return "primitive";
        }
        return null;
    }
    
    public static void checkAndFixAccess(final Member obj) {
        final AccessibleObject accessibleObject = (AccessibleObject)obj;
        try {
            accessibleObject.setAccessible(true);
        }
        catch (SecurityException ex) {
            if (!accessibleObject.isAccessible()) {
                throw new IllegalArgumentException("Can not access " + obj + " (from class " + obj.getDeclaringClass().getName() + "; failed to set access: " + ex.getMessage());
            }
        }
    }
    
    public static <T> T createInstance(final Class<T> clazz, final boolean b) throws IllegalArgumentException {
        final Constructor<T> constructor = findConstructor(clazz, b);
        if (constructor == null) {
            throw new IllegalArgumentException("Class " + clazz.getName() + " has no default (no arg) constructor");
        }
        try {
            return constructor.newInstance(new Object[0]);
        }
        catch (Exception ex) {
            unwrapAndThrowAsIAE(ex, "Failed to instantiate class " + clazz.getName() + ", problem: " + ex.getMessage());
            return null;
        }
    }
    
    public static Object defaultValue(final Class<?> clazz) {
        if (clazz == Integer.TYPE) {
            return 0;
        }
        if (clazz == Long.TYPE) {
            return 0L;
        }
        if (clazz == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (clazz == Double.TYPE) {
            return 0.0;
        }
        if (clazz == Float.TYPE) {
            return 0.0f;
        }
        if (clazz == Byte.TYPE) {
            return (byte)0;
        }
        if (clazz == Short.TYPE) {
            return (short)0;
        }
        if (clazz == Character.TYPE) {
            return '\0';
        }
        throw new IllegalArgumentException("Class " + clazz.getName() + " is not a primitive type");
    }
    
    public static <T> Constructor<T> findConstructor(final Class<T> clazz, final boolean b) throws IllegalArgumentException {
        Constructor<T> declaredConstructor = null;
        try {
            declaredConstructor = clazz.getDeclaredConstructor((Class<?>[])new Class[0]);
            if (b) {
                checkAndFixAccess(declaredConstructor);
            }
            else if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new IllegalArgumentException("Default constructor for " + clazz.getName() + " is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type");
            }
        }
        catch (NoSuchMethodException ex2) {}
        catch (Exception ex) {
            unwrapAndThrowAsIAE(ex, "Failed to find default constructor of class " + clazz.getName() + ", problem: " + ex.getMessage());
            goto Label_0069;
        }
        return declaredConstructor;
    }
    
    public static Class<? extends Enum<?>> findEnumType(Class<?> superclass) {
        if (superclass.getSuperclass() != Enum.class) {
            superclass = superclass.getSuperclass();
        }
        return (Class<? extends Enum<?>>)superclass;
    }
    
    public static Class<? extends Enum<?>> findEnumType(final Enum<?> enum1) {
        Serializable s = enum1.getClass();
        if (((Class<? extends Enum<?>>)s).getSuperclass() != Enum.class) {
            s = ((Class<? extends Enum<?>>)s).getSuperclass();
        }
        return (Class<? extends Enum<?>>)s;
    }
    
    public static Class<? extends Enum<?>> findEnumType(final EnumMap<?, ?> enumMap) {
        if (!enumMap.isEmpty()) {
            return findEnumType((Enum<?>)enumMap.keySet().iterator().next());
        }
        return EnumTypeLocator.instance.enumTypeFor(enumMap);
    }
    
    public static Class<? extends Enum<?>> findEnumType(final EnumSet<?> set) {
        if (!set.isEmpty()) {
            return findEnumType(set.iterator().next());
        }
        return EnumTypeLocator.instance.enumTypeFor(set);
    }
    
    public static List<Class<?>> findSuperTypes(final Class<?> clazz, final Class<?> clazz2) {
        return findSuperTypes(clazz, clazz2, new ArrayList<Class<?>>(8));
    }
    
    public static List<Class<?>> findSuperTypes(final Class<?> clazz, final Class<?> clazz2, final List<Class<?>> list) {
        _addSuperTypes(clazz, clazz2, list, false);
        return list;
    }
    
    public static String getClassDescription(final Object o) {
        if (o == null) {
            return "unknown";
        }
        Class<?> class1;
        if (o instanceof Class) {
            class1 = (Class<?>)o;
        }
        else {
            class1 = o.getClass();
        }
        return class1.getName();
    }
    
    public static Class<?> getOuterClass(final Class<?> clazz) {
        try {
            if (clazz.getEnclosingMethod() != null) {
                return null;
            }
            if (!Modifier.isStatic(clazz.getModifiers())) {
                return clazz.getEnclosingClass();
            }
            goto Label_0027;
        }
        catch (NullPointerException ex) {}
        catch (SecurityException ex2) {
            goto Label_0027;
        }
    }
    
    public static Throwable getRootCause(Throwable cause) {
        while (cause.getCause() != null) {
            cause = cause.getCause();
        }
        return cause;
    }
    
    public static boolean hasGetterSignature(final Method method) {
        if (Modifier.isStatic(method.getModifiers())) {
            return false;
        }
        final Class<?>[] parameterTypes = method.getParameterTypes();
        return (parameterTypes == null || parameterTypes.length == 0) && Void.TYPE != method.getReturnType();
    }
    
    public static boolean isCollectionMapOrArray(final Class<?> clazz) {
        return clazz.isArray() || Collection.class.isAssignableFrom(clazz) || Map.class.isAssignableFrom(clazz);
    }
    
    public static boolean isConcrete(final Class<?> clazz) {
        return (0x600 & clazz.getModifiers()) == 0x0;
    }
    
    public static boolean isConcrete(final Member member) {
        return (0x600 & member.getModifiers()) == 0x0;
    }
    
    @Deprecated
    public static String isLocalType(final Class<?> clazz) {
        return isLocalType(clazz, false);
    }
    
    public static String isLocalType(final Class<?> clazz, final boolean b) {
        try {
            if (clazz.getEnclosingMethod() != null) {
                return "local/anonymous";
            }
            if (!b && clazz.getEnclosingClass() != null && !Modifier.isStatic(clazz.getModifiers())) {
                return "non-static member class";
            }
            goto Label_0037;
        }
        catch (NullPointerException ex) {}
        catch (SecurityException ex2) {
            goto Label_0037;
        }
    }
    
    public static boolean isProxyType(final Class<?> cl) {
        if (Proxy.isProxyClass(cl)) {
            return true;
        }
        final String name = cl.getName();
        return name.startsWith("net.sf.cglib.proxy.") || name.startsWith("org.hibernate.proxy.");
    }
    
    public static void throwAsIAE(final Throwable t) {
        throwAsIAE(t, t.getMessage());
    }
    
    public static void throwAsIAE(final Throwable cause, final String message) {
        if (cause instanceof RuntimeException) {
            throw (RuntimeException)cause;
        }
        if (cause instanceof Error) {
            throw (Error)cause;
        }
        throw new IllegalArgumentException(message, cause);
    }
    
    public static void throwRootCause(final Throwable t) throws Exception {
        final Throwable rootCause = getRootCause(t);
        if (rootCause instanceof Exception) {
            throw (Exception)rootCause;
        }
        throw (Error)rootCause;
    }
    
    public static void unwrapAndThrowAsIAE(final Throwable t) {
        throwAsIAE(getRootCause(t));
    }
    
    public static void unwrapAndThrowAsIAE(final Throwable t, final String s) {
        throwAsIAE(getRootCause(t), s);
    }
    
    public static Class<?> wrapperType(final Class<?> clazz) {
        if (clazz == Integer.TYPE) {
            return Integer.class;
        }
        if (clazz == Long.TYPE) {
            return Long.class;
        }
        if (clazz == Boolean.TYPE) {
            return Boolean.class;
        }
        if (clazz == Double.TYPE) {
            return Double.class;
        }
        if (clazz == Float.TYPE) {
            return Float.class;
        }
        if (clazz == Byte.TYPE) {
            return Byte.class;
        }
        if (clazz == Short.TYPE) {
            return Short.class;
        }
        if (clazz == Character.TYPE) {
            return Character.class;
        }
        throw new IllegalArgumentException("Class " + clazz.getName() + " is not a primitive type");
    }
    
    private static class EnumTypeLocator
    {
        static final EnumTypeLocator instance;
        private final Field enumMapTypeField;
        private final Field enumSetTypeField;
        
        static {
            instance = new EnumTypeLocator();
        }
        
        private EnumTypeLocator() {
            super();
            this.enumSetTypeField = locateField(EnumSet.class, "elementType", Class.class);
            this.enumMapTypeField = locateField(EnumMap.class, "elementType", Class.class);
        }
        
        private Object get(final Object obj, final Field field) {
            try {
                return field.get(obj);
            }
            catch (Exception cause) {
                throw new IllegalArgumentException(cause);
            }
        }
        
        private static Field locateField(final Class<?> clazz, final String s, final Class<?> clazz2) {
            final Field[] declaredFields = clazz.getDeclaredFields();
            final int length = declaredFields.length;
            int n = 0;
            Field field;
            while (true) {
                field = null;
                if (n >= length) {
                    break;
                }
                final Field field2 = declaredFields[n];
                if (s.equals(field2.getName()) && field2.getType() == clazz2) {
                    field = field2;
                    break;
                }
                ++n;
            }
            if (field == null) {
                for (final Field field3 : declaredFields) {
                    if (field3.getType() == clazz2) {
                        if (field != null) {
                            return null;
                        }
                        field = field3;
                    }
                }
            }
            if (field == null) {
                return field;
            }
            try {
                field.setAccessible(true);
                return field;
            }
            catch (Throwable t) {
                return field;
            }
        }
        
        public Class<? extends Enum<?>> enumTypeFor(final EnumMap<?, ?> enumMap) {
            if (this.enumMapTypeField != null) {
                return (Class<? extends Enum<?>>)this.get(enumMap, this.enumMapTypeField);
            }
            throw new IllegalStateException("Can not figure out type for EnumMap (odd JDK platform?)");
        }
        
        public Class<? extends Enum<?>> enumTypeFor(final EnumSet<?> set) {
            if (this.enumSetTypeField != null) {
                return (Class<? extends Enum<?>>)this.get(set, this.enumSetTypeField);
            }
            throw new IllegalStateException("Can not figure out type for EnumSet (odd JDK platform?)");
        }
    }
}
