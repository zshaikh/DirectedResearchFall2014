package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class ClassNameIdResolver extends TypeIdResolverBase
{
    public ClassNameIdResolver(final JavaType javaType, final TypeFactory typeFactory) {
        super(javaType, typeFactory);
    }
    
    protected final String _idFrom(final Object o, Class<?> superclass) {
        if (Enum.class.isAssignableFrom(superclass) && !superclass.isEnum()) {
            superclass = superclass.getSuperclass();
        }
        String s = superclass.getName();
        if (s.startsWith("java.util")) {
            if (o instanceof EnumSet) {
                s = TypeFactory.defaultInstance().constructCollectionType(EnumSet.class, ClassUtil.findEnumType((EnumSet<?>)o)).toCanonical();
            }
            else {
                if (o instanceof EnumMap) {
                    return TypeFactory.defaultInstance().constructMapType(EnumMap.class, ClassUtil.findEnumType((EnumMap<?, ?>)o), Object.class).toCanonical();
                }
                final String substring = s.substring(9);
                if ((substring.startsWith(".Arrays$") || substring.startsWith(".Collections$")) && s.indexOf("List") >= 0) {
                    return "java.util.ArrayList";
                }
            }
        }
        else if (s.indexOf(36) >= 0 && ClassUtil.getOuterClass(superclass) != null && ClassUtil.getOuterClass(this._baseType.getRawClass()) == null) {
            return this._baseType.getRawClass().getName();
        }
        return s;
    }
    
    @Override
    public JsonTypeInfo.Id getMechanism() {
        return JsonTypeInfo.Id.CLASS;
    }
    
    @Override
    public String idFromValue(final Object o) {
        return this._idFrom(o, o.getClass());
    }
    
    @Override
    public String idFromValueAndType(final Object o, final Class<?> clazz) {
        return this._idFrom(o, clazz);
    }
    
    public void registerSubtype(final Class<?> clazz, final String s) {
    }
    
    @Override
    public JavaType typeFromId(final String str) {
        if (str.indexOf(60) > 0) {
            return TypeFactory.fromCanonical(str);
        }
        try {
            return this._typeFactory.constructSpecializedType(this._baseType, Class.forName(str, true, Thread.currentThread().getContextClassLoader()));
        }
        catch (ClassNotFoundException ex) {
            throw new IllegalArgumentException("Invalid type id '" + str + "' (for id type 'Id.class'): no such class found");
        }
        catch (Exception cause) {
            throw new IllegalArgumentException("Invalid type id '" + str + "' (for id type 'Id.class'): " + cause.getMessage(), cause);
        }
    }
}
