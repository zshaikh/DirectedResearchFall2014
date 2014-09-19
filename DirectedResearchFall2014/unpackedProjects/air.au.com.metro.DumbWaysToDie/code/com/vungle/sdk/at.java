package com.vungle.sdk;

import java.lang.annotation.*;
import java.util.*;
import javax.inject.*;
import java.lang.reflect.*;

public final class at
{
    private static final String a;
    private static final String b;
    private static final String c;
    private static final String d;
    private static final ax<Class<? extends Annotation>, Boolean> e;
    
    static {
        a = Provider.class.getCanonicalName() + "<";
        b = ao.class.getCanonicalName() + "<";
        c = an.class.getCanonicalName() + "<";
        d = Set.class.getCanonicalName() + "<";
        e = new ax<Class<? extends Annotation>, Boolean>() {};
    }
    
    public static String a(final Class<?> clazz) {
        return "members/" + a(clazz, null);
    }
    
    static String a(final String s) {
        final int f = f(s);
        if (a(s, f, at.a)) {
            return a(s, f, s.substring(0, f), at.a);
        }
        if (a(s, f, at.b)) {
            return a(s, f, "members/", at.b);
        }
        return null;
    }
    
    private static String a(final String s, final int n, final String str, final String s2) {
        return str + s.substring(n + s2.length(), s.length() - 1);
    }
    
    public static String a(final Type type) {
        return a(type, null);
    }
    
    private static String a(final Type type, final Annotation obj) {
        Object o;
        if (type == Byte.TYPE) {
            o = Byte.class;
        }
        else if (type == Short.TYPE) {
            o = Short.class;
        }
        else if (type == Integer.TYPE) {
            o = Integer.class;
        }
        else if (type == Long.TYPE) {
            o = Long.class;
        }
        else if (type == Character.TYPE) {
            o = Character.class;
        }
        else if (type == Boolean.TYPE) {
            o = Boolean.class;
        }
        else if (type == Float.TYPE) {
            o = Float.class;
        }
        else if (type == Double.TYPE) {
            o = Double.class;
        }
        else if (type == Void.TYPE) {
            o = Void.class;
        }
        else {
            o = type;
        }
        if (obj == null && o instanceof Class && !((Class)o).isArray()) {
            return ((Class)o).getName();
        }
        final StringBuilder sb = new StringBuilder();
        if (obj != null) {
            sb.append(obj).append("/");
        }
        a((Type)o, sb, true);
        return sb.toString();
    }
    
    public static String a(final Type type, final Annotation[] array, final Object obj) {
        final int length = array.length;
        int i = 0;
        Annotation annotation = null;
        while (i < length) {
            final Annotation annotation2 = array[i];
            Annotation annotation3;
            if (at.e.b(annotation2.annotationType())) {
                if (annotation != null) {
                    throw new IllegalArgumentException("Too many qualifier annotations on " + obj);
                }
                annotation3 = annotation2;
            }
            else {
                annotation3 = annotation;
            }
            ++i;
            annotation = annotation3;
        }
        return a(type, annotation);
    }
    
    private static void a(final Type type, final StringBuilder sb, final boolean b) {
        if (type instanceof Class) {
            final Class clazz = (Class)type;
            if (clazz.isArray()) {
                a(clazz.getComponentType(), sb, false);
                sb.append("[]");
                return;
            }
            if (!clazz.isPrimitive()) {
                sb.append(clazz.getName());
                return;
            }
            if (b) {
                throw new UnsupportedOperationException("Uninjectable type " + type);
            }
            sb.append(clazz.getName());
        }
        else {
            if (type instanceof ParameterizedType) {
                final ParameterizedType parameterizedType = (ParameterizedType)type;
                a(parameterizedType.getRawType(), sb, true);
                final Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                sb.append("<");
                for (int i = 0; i < actualTypeArguments.length; ++i) {
                    if (i != 0) {
                        sb.append(", ");
                    }
                    a(actualTypeArguments[i], sb, true);
                }
                sb.append(">");
                return;
            }
            if (type instanceof GenericArrayType) {
                a(((GenericArrayType)type).getGenericComponentType(), sb, false);
                sb.append("[]");
                return;
            }
            throw new UnsupportedOperationException("Uninjectable type " + type);
        }
    }
    
    private static boolean a(final String s, final int toffset, final String other) {
        return s.regionMatches(toffset, other, 0, other.length());
    }
    
    static String b(final String s) {
        final int f = f(s);
        if (a(s, f, at.c)) {
            return a(s, f, s.substring(0, f), at.c);
        }
        return null;
    }
    
    public static boolean c(final String s) {
        return s.startsWith("@");
    }
    
    public static String d(final String s) {
        int beginIndex = 0;
        Label_0031: {
            if (!s.startsWith("@")) {
                final boolean startsWith = s.startsWith("members/");
                beginIndex = 0;
                if (!startsWith) {
                    break Label_0031;
                }
            }
            beginIndex = 1 + s.lastIndexOf(47);
        }
        if (s.indexOf(60, beginIndex) == -1 && s.indexOf(91, beginIndex) == -1) {
            return s.substring(beginIndex);
        }
        return null;
    }
    
    public static boolean e(final String s) {
        return s.startsWith("java.") || s.startsWith("javax.") || s.startsWith("android.");
    }
    
    private static int f(final String s) {
        if (s.startsWith("@")) {
            return 1 + s.lastIndexOf(47);
        }
        return 0;
    }
}
