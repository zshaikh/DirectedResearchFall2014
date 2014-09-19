package com.flurry.org.codehaus.jackson.map.util;

import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.io.*;

public class BeanUtil
{
    protected static boolean isCglibGetCallbacks(final AnnotatedMethod annotatedMethod) {
        final Class<?> rawType = annotatedMethod.getRawType();
        if (rawType == null || !rawType.isArray()) {
            return false;
        }
        final Package package1 = rawType.getComponentType().getPackage();
        if (package1 != null) {
            final String name = package1.getName();
            if (name.startsWith("net.sf.cglib") || name.startsWith("org.hibernate.repackage.cglib")) {
                return true;
            }
        }
        return false;
    }
    
    protected static boolean isGroovyMetaClassGetter(final AnnotatedMethod annotatedMethod) {
        final Class<?> rawType = annotatedMethod.getRawType();
        if (rawType == null || rawType.isArray()) {
            return false;
        }
        final Package package1 = rawType.getPackage();
        return package1 != null && package1.getName().startsWith("groovy.lang");
    }
    
    protected static boolean isGroovyMetaClassSetter(final AnnotatedMethod annotatedMethod) {
        final Package package1 = annotatedMethod.getParameterClass(0).getPackage();
        return package1 != null && package1.getName().startsWith("groovy.lang");
    }
    
    protected static String manglePropertyName(final String str) {
        final int length = str.length();
        if (length == 0) {
            return null;
        }
        StringBuilder sb = null;
        for (int i = 0; i < length; ++i) {
            final char char1 = str.charAt(i);
            final char lowerCase = Character.toLowerCase(char1);
            if (char1 == lowerCase) {
                break;
            }
            if (sb == null) {
                sb = new StringBuilder(str);
            }
            sb.setCharAt(i, lowerCase);
        }
        if (sb == null) {
            return str;
        }
        return sb.toString();
    }
    
    public static String okNameForGetter(final AnnotatedMethod annotatedMethod) {
        final String name = annotatedMethod.getName();
        String s = okNameForIsGetter(annotatedMethod, name);
        if (s == null) {
            s = okNameForRegularGetter(annotatedMethod, name);
        }
        return s;
    }
    
    public static String okNameForIsGetter(final AnnotatedMethod annotatedMethod, final String s) {
        if (!s.startsWith("is")) {
            return null;
        }
        final Class<?> rawType = annotatedMethod.getRawType();
        if (rawType != Boolean.class && rawType != Boolean.TYPE) {
            return null;
        }
        return manglePropertyName(s.substring(2));
    }
    
    public static String okNameForRegularGetter(final AnnotatedMethod annotatedMethod, final String s) {
        if (s.startsWith("get")) {
            if ("getCallbacks".equals(s)) {
                if (isCglibGetCallbacks(annotatedMethod)) {
                    return null;
                }
            }
            else if ("getMetaClass".equals(s) && isGroovyMetaClassGetter(annotatedMethod)) {
                return null;
            }
            return manglePropertyName(s.substring(3));
        }
        return null;
    }
    
    public static String okNameForSetter(final AnnotatedMethod annotatedMethod) {
        final String name = annotatedMethod.getName();
        if (!name.startsWith("set")) {
            return null;
        }
        final String manglePropertyName = manglePropertyName(name.substring(3));
        if (manglePropertyName == null) {
            return null;
        }
        if ("metaClass".equals(manglePropertyName) && isGroovyMetaClassSetter(annotatedMethod)) {
            return null;
        }
        return manglePropertyName;
    }
}
