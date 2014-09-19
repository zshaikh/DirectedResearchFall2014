package com.facebook.model;

import com.facebook.*;
import org.json.*;
import java.text.*;
import java.io.*;
import java.util.*;
import java.lang.annotation.*;
import com.facebook.internal.*;
import java.lang.reflect.*;

public final class GraphObject$Factory
{
    private static final SimpleDateFormat[] dateFormats;
    private static final HashSet<Class<?>> verifiedGraphObjectClasses;
    
    static {
        verifiedGraphObjectClasses = new HashSet<Class<?>>();
        dateFormats = new SimpleDateFormat[] { new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US), new SimpleDateFormat("yyyy-MM-dd", Locale.US) };
    }
    
    static <U> U coerceValueToExpectedType(final Object o, final Class<U> clazz, final ParameterizedType parameterizedType) {
        int n = 0;
        Serializable s = null;
        if (o == null) {
            if (Boolean.TYPE.equals(clazz)) {
                s = false;
            }
            else {
                if (Character.TYPE.equals(clazz)) {
                    return (U)'\0';
                }
                if (clazz.isPrimitive()) {
                    return (U)0;
                }
                return null;
            }
        }
        else {
            final Class<?> class1 = o.getClass();
            if (clazz.isAssignableFrom(class1)) {
                return (U)o;
            }
            if (clazz.isPrimitive()) {
                return (U)o;
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
                    return (U)createList((JSONArray)o, (Class<Object>)clazz2);
                }
                throw new FacebookGraphObjectException("Can't create Collection from " + class1.getName());
            }
            else {
                Label_0455: {
                    final SimpleDateFormat[] dateFormats;
                    final int length;
                    if (String.class.equals(clazz)) {
                        if (Double.class.isAssignableFrom(class1) || Float.class.isAssignableFrom(class1)) {
                            return (U)String.format("%f", o);
                        }
                        if (Number.class.isAssignableFrom(class1)) {
                            return (U)String.format("%d", o);
                        }
                        break Label_0455;
                    }
                    else {
                        if (!Date.class.equals(clazz) || !String.class.isAssignableFrom(class1)) {
                            break Label_0455;
                        }
                        dateFormats = GraphObject$Factory.dateFormats;
                        length = dateFormats.length;
                    }
                Label_0449_Outer:
                    while (true) {
                        if (n >= length) {
                            break Label_0455;
                        }
                        final SimpleDateFormat simpleDateFormat = dateFormats[n];
                        while (true) {
                            try {
                                s = simpleDateFormat.parse((String)o);
                                if (s == null) {
                                    ++n;
                                    continue Label_0449_Outer;
                                }
                                return (U)s;
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
        return (U)s;
    }
    
    static String convertCamelCaseToLowercaseWithUnderscores(final String s) {
        return s.replaceAll("([a-z])([A-Z])", "$1_$2").toLowerCase(Locale.US);
    }
    
    public static GraphObject create() {
        return create(GraphObject.class);
    }
    
    public static <T extends GraphObject> T create(final Class<T> clazz) {
        return createGraphObjectProxy(clazz, new JSONObject());
    }
    
    public static GraphObject create(final JSONObject jsonObject) {
        return create(jsonObject, GraphObject.class);
    }
    
    public static <T extends GraphObject> T create(final JSONObject jsonObject, final Class<T> clazz) {
        return createGraphObjectProxy(clazz, jsonObject);
    }
    
    private static <T extends GraphObject> T createGraphObjectProxy(final Class<T> clazz, final JSONObject jsonObject) {
        verifyCanProxyClass(clazz);
        return (T)Proxy.newProxyInstance(GraphObject.class.getClassLoader(), new Class[] { clazz }, new GraphObject$Factory$GraphObjectProxy(jsonObject, clazz));
    }
    
    private static Map<String, Object> createGraphObjectProxyForMap(final JSONObject jsonObject) {
        return (Map<String, Object>)Proxy.newProxyInstance(GraphObject.class.getClassLoader(), new Class[] { Map.class }, new GraphObject$Factory$GraphObjectProxy(jsonObject, Map.class));
    }
    
    public static <T> GraphObjectList<T> createList(final Class<T> clazz) {
        return createList(new JSONArray(), clazz);
    }
    
    public static <T> GraphObjectList<T> createList(final JSONArray jsonArray, final Class<T> clazz) {
        return new GraphObject$Factory$GraphObjectListImpl<T>(jsonArray, clazz);
    }
    
    private static Object getUnderlyingJSONObject(final Object o) {
        JSONArray jsonArray;
        if (o == null) {
            jsonArray = null;
        }
        else {
            final Class<?> class1 = o.getClass();
            if (GraphObject.class.isAssignableFrom(class1)) {
                return ((GraphObject)o).getInnerJSONObject();
            }
            if (GraphObjectList.class.isAssignableFrom(class1)) {
                return ((GraphObjectList)o).getInnerJSONArray();
            }
            if (!Iterable.class.isAssignableFrom(class1)) {
                return o;
            }
            jsonArray = new JSONArray();
            for (final GraphObject next : (Iterable)o) {
                if (GraphObject.class.isAssignableFrom(next.getClass())) {
                    jsonArray.put((Object)next.getInnerJSONObject());
                }
                else {
                    jsonArray.put((Object)next);
                }
            }
        }
        return jsonArray;
    }
    
    private static <T extends GraphObject> boolean hasClassBeenVerified(final Class<T> o) {
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
    
    private static <T extends GraphObject> void recordClassHasBeenVerified(final Class<T> e) {
        synchronized (GraphObject$Factory.class) {
            GraphObject$Factory.verifiedGraphObjectClasses.add(e);
        }
    }
    
    private static <T extends GraphObject> void verifyCanProxyClass(final Class<T> clazz) {
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
            Label_0149: {
                if (!method.getDeclaringClass().isAssignableFrom(GraphObject.class)) {
                    if (length2 == 1 && returnType == Void.TYPE) {
                        if (annotationPresent) {
                            if (!Utility.isNullOrEmpty(method.getAnnotation(PropertyName.class).value())) {
                                break Label_0149;
                            }
                        }
                        else if (name.startsWith("set") && name.length() > 3) {
                            break Label_0149;
                        }
                    }
                    else if (length2 == 0 && returnType != Void.TYPE) {
                        if (annotationPresent) {
                            if (!Utility.isNullOrEmpty(method.getAnnotation(PropertyName.class).value())) {
                                break Label_0149;
                            }
                        }
                        else if (name.startsWith("get")) {
                            if (name.length() > 3) {
                                break Label_0149;
                            }
                        }
                    }
                    throw new FacebookGraphObjectException("Factory can't proxy method: " + method.toString());
                }
            }
        }
        recordClassHasBeenVerified((Class<GraphObject>)clazz);
    }
}
