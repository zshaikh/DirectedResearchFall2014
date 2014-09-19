package com.facebook.model;

import com.facebook.*;
import org.json.*;
import java.util.*;
import java.text.*;
import java.lang.annotation.*;
import com.facebook.internal.*;
import java.lang.reflect.*;

public final class GraphObject$Factory
{
    private static final SimpleDateFormat[] dateFormats;
    private static final HashSet verifiedGraphObjectClasses;
    
    static {
        verifiedGraphObjectClasses = new HashSet();
        dateFormats = new SimpleDateFormat[] { new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US), new SimpleDateFormat("yyyy-MM-dd", Locale.US) };
    }
    
    static Object coerceValueToExpectedType(final Object o, final Class clazz, final ParameterizedType parameterizedType) {
        int n = 0;
        Object parse = null;
        if (o == null) {
            parse = null;
        }
        else {
            final Class<?> class1 = o.getClass();
            if (clazz.isAssignableFrom(class1)) {
                return o;
            }
            if (clazz.isPrimitive()) {
                return o;
            }
            if (GraphObject.class.isAssignableFrom(clazz)) {
                if (JSONObject.class.isAssignableFrom(class1)) {
                    return createGraphObjectProxy(clazz, (JSONObject)o);
                }
                if (GraphObject.class.isAssignableFrom(class1)) {
                    return ((GraphObject)o).cast(clazz);
                }
                throw new FacebookGraphObjectException("Can't create GraphObject from " + class1.getName());
            }
            else if (Iterable.class.equals(clazz) || Collection.class.equals(clazz) || List.class.equals(clazz) || GraphObjectList.class.equals(clazz)) {
                if (parameterizedType == null) {
                    throw new FacebookGraphObjectException("can't infer generic type of: " + clazz.toString());
                }
                final Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (actualTypeArguments == null || actualTypeArguments.length != 1 || !(actualTypeArguments[0] instanceof Class)) {
                    throw new FacebookGraphObjectException("Expect collection properties to be of a type with exactly one generic parameter.");
                }
                final Class clazz2 = (Class)actualTypeArguments[0];
                if (JSONArray.class.isAssignableFrom(class1)) {
                    return createList((JSONArray)o, clazz2);
                }
                throw new FacebookGraphObjectException("Can't create Collection from " + class1.getName());
            }
            else {
                Label_0413: {
                    final SimpleDateFormat[] dateFormats;
                    final int length;
                    if (String.class.equals(clazz)) {
                        if (Double.class.isAssignableFrom(class1) || Float.class.isAssignableFrom(class1)) {
                            return String.format("%f", o);
                        }
                        if (Number.class.isAssignableFrom(class1)) {
                            return String.format("%d", o);
                        }
                        break Label_0413;
                    }
                    else {
                        if (!Date.class.equals(clazz) || !String.class.isAssignableFrom(class1)) {
                            break Label_0413;
                        }
                        dateFormats = GraphObject$Factory.dateFormats;
                        length = dateFormats.length;
                    }
                Label_0407_Outer:
                    while (true) {
                        if (n >= length) {
                            break Label_0413;
                        }
                        final SimpleDateFormat simpleDateFormat = dateFormats[n];
                        while (true) {
                            try {
                                parse = simpleDateFormat.parse((String)o);
                                if (parse == null) {
                                    ++n;
                                    continue Label_0407_Outer;
                                }
                                return parse;
                                throw new FacebookGraphObjectException("Can't convert type" + class1.getName() + " to " + clazz.getName());
                            }
                            catch (ParseException ex) {
                                continue;
                            }
                            break;
                        }
                        break;
                    }
                }
            }
        }
        return parse;
    }
    
    static String convertCamelCaseToLowercaseWithUnderscores(final String s) {
        return s.replaceAll("([a-z])([A-Z])", "$1_$2").toLowerCase(Locale.US);
    }
    
    public static GraphObject create() {
        return create(GraphObject.class);
    }
    
    public static GraphObject create(final Class clazz) {
        return createGraphObjectProxy(clazz, new JSONObject());
    }
    
    public static GraphObject create(final JSONObject jsonObject) {
        return create(jsonObject, GraphObject.class);
    }
    
    public static GraphObject create(final JSONObject jsonObject, final Class clazz) {
        return createGraphObjectProxy(clazz, jsonObject);
    }
    
    private static GraphObject createGraphObjectProxy(final Class clazz, final JSONObject jsonObject) {
        verifyCanProxyClass(clazz);
        return (GraphObject)Proxy.newProxyInstance(GraphObject.class.getClassLoader(), new Class[] { clazz }, new GraphObject$Factory$GraphObjectProxy(jsonObject, clazz));
    }
    
    private static Map createGraphObjectProxyForMap(final JSONObject jsonObject) {
        return (Map)Proxy.newProxyInstance(GraphObject.class.getClassLoader(), new Class[] { Map.class }, new GraphObject$Factory$GraphObjectProxy(jsonObject, Map.class));
    }
    
    public static GraphObjectList createList(final Class clazz) {
        return createList(new JSONArray(), clazz);
    }
    
    public static GraphObjectList createList(final JSONArray jsonArray, final Class clazz) {
        return new GraphObject$Factory$GraphObjectListImpl(jsonArray, clazz);
    }
    
    private static Object getUnderlyingJSONObject(final Object o) {
        final Class<?> class1 = o.getClass();
        if (GraphObject.class.isAssignableFrom(class1)) {
            return ((GraphObject)o).getInnerJSONObject();
        }
        if (GraphObjectList.class.isAssignableFrom(class1)) {
            return ((GraphObjectList)o).getInnerJSONArray();
        }
        return o;
    }
    
    private static boolean hasClassBeenVerified(final Class o) {
        synchronized (GraphObject$Factory.class) {
            return GraphObject$Factory.verifiedGraphObjectClasses.contains(o);
        }
    }
    
    public static boolean hasSameId(final GraphObject graphObject, final GraphObject obj) {
        if (graphObject == null || obj == null || !graphObject.asMap().containsKey("id") || !obj.asMap().containsKey("id")) {
            return false;
        }
        if (graphObject.equals(obj)) {
            return true;
        }
        final Object property = graphObject.getProperty("id");
        final Object property2 = obj.getProperty("id");
        return property != null && property2 != null && property instanceof String && property2 instanceof String && property.equals(property2);
    }
    
    private static void recordClassHasBeenVerified(final Class e) {
        synchronized (GraphObject$Factory.class) {
            GraphObject$Factory.verifiedGraphObjectClasses.add(e);
        }
    }
    
    private static void verifyCanProxyClass(final Class clazz) {
        if (hasClassBeenVerified(clazz)) {
            return;
        }
        if (!clazz.isInterface()) {
            throw new FacebookGraphObjectException("Factory can only wrap interfaces, not class: " + clazz.getName());
        }
        for (final Method method : clazz.getMethods()) {
            final String name = method.getName();
            final int length2 = method.getParameterTypes().length;
            final Class<?> returnType = method.getReturnType();
            final boolean annotationPresent = method.isAnnotationPresent(PropertyName.class);
            Label_0148: {
                if (!method.getDeclaringClass().isAssignableFrom(GraphObject.class)) {
                    if (length2 == 1 && returnType == Void.TYPE) {
                        if (annotationPresent) {
                            if (!Utility.isNullOrEmpty(method.getAnnotation(PropertyName.class).value())) {
                                break Label_0148;
                            }
                        }
                        else if (name.startsWith("set") && name.length() > 3) {
                            break Label_0148;
                        }
                    }
                    else if (length2 == 0 && returnType != Void.TYPE) {
                        if (annotationPresent) {
                            if (!Utility.isNullOrEmpty(method.getAnnotation(PropertyName.class).value())) {
                                break Label_0148;
                            }
                        }
                        else if (name.startsWith("get")) {
                            if (name.length() > 3) {
                                break Label_0148;
                            }
                        }
                    }
                    throw new FacebookGraphObjectException("Factory can't proxy method: " + method.toString());
                }
            }
        }
        recordClassHasBeenVerified(clazz);
    }
}
