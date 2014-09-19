package com.fusepowered.m1.google.gson.internal;

import java.io.*;
import java.lang.reflect.*;
import java.util.*;

public final class $Gson$Types
{
    static final Type[] EMPTY_TYPE_ARRAY;
    
    static {
        EMPTY_TYPE_ARRAY = new Type[0];
    }
    
    public static GenericArrayType arrayOf(final Type type) {
        return new GenericArrayTypeImpl(type);
    }
    
    public static Type canonicalize(final Type type) {
        if (type instanceof Class) {
            final Class clazz = (Class)type;
            Serializable s;
            if (clazz.isArray()) {
                s = new GenericArrayTypeImpl(canonicalize(clazz.getComponentType()));
            }
            else {
                s = clazz;
            }
            return (GenericArrayTypeImpl)s;
        }
        if (type instanceof ParameterizedType) {
            final ParameterizedType parameterizedType = (ParameterizedType)type;
            return new ParameterizedTypeImpl(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new GenericArrayTypeImpl(((GenericArrayType)type).getGenericComponentType());
        }
        if (type instanceof WildcardType) {
            final WildcardType wildcardType = (WildcardType)type;
            return new WildcardTypeImpl(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
        return type;
    }
    
    private static void checkNotPrimitive(final Type type) {
        $Gson$Preconditions.checkArgument(!(type instanceof Class) || !((Class)type).isPrimitive());
    }
    
    private static Class<?> declaringClassOf(final TypeVariable<?> typeVariable) {
        final Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class<?>)genericDeclaration;
        }
        return null;
    }
    
    static boolean equal(final Object o, final Object obj) {
        return o == obj || (o != null && o.equals(obj));
    }
    
    public static boolean equals(final Type type, final Type obj) {
        if (type == obj) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(obj);
        }
        if (type instanceof ParameterizedType) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            final ParameterizedType parameterizedType = (ParameterizedType)type;
            final ParameterizedType parameterizedType2 = (ParameterizedType)obj;
            return equal(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        else {
            if (type instanceof GenericArrayType) {
                return obj instanceof GenericArrayType && equals(((GenericArrayType)type).getGenericComponentType(), ((GenericArrayType)obj).getGenericComponentType());
            }
            if (type instanceof WildcardType) {
                if (!(obj instanceof WildcardType)) {
                    return false;
                }
                final WildcardType wildcardType = (WildcardType)type;
                final WildcardType wildcardType2 = (WildcardType)obj;
                return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
            }
            else {
                if (!(type instanceof TypeVariable)) {
                    return false;
                }
                if (!(obj instanceof TypeVariable)) {
                    return false;
                }
                final TypeVariable typeVariable = (TypeVariable)type;
                final TypeVariable typeVariable2 = (TypeVariable)obj;
                return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
            }
        }
    }
    
    public static Type getArrayComponentType(final Type type) {
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType)type).getGenericComponentType();
        }
        return ((Class)type).getComponentType();
    }
    
    public static Type getCollectionElementType(final Type type, final Class<?> clazz) {
        Type supertype = getSupertype(type, clazz, Collection.class);
        if (supertype instanceof WildcardType) {
            supertype = ((WildcardType)supertype).getUpperBounds()[0];
        }
        if (supertype instanceof ParameterizedType) {
            return ((ParameterizedType)supertype).getActualTypeArguments()[0];
        }
        return Object.class;
    }
    
    static Type getGenericSupertype(final Type type, Class<?> clazz, final Class<?> clazz2) {
        if (clazz2 == clazz) {
            return type;
        }
        if (clazz2.isInterface()) {
            final Class<?>[] interfaces = clazz.getInterfaces();
            for (int i = 0; i < interfaces.length; ++i) {
                if (interfaces[i] == clazz2) {
                    return clazz.getGenericInterfaces()[i];
                }
                if (clazz2.isAssignableFrom(interfaces[i])) {
                    return getGenericSupertype(clazz.getGenericInterfaces()[i], interfaces[i], clazz2);
                }
            }
        }
        if (!clazz.isInterface()) {
            while (clazz != Object.class) {
                final Class<? super Object> superclass = clazz.getSuperclass();
                if (superclass == clazz2) {
                    return clazz.getGenericSuperclass();
                }
                if (clazz2.isAssignableFrom(superclass)) {
                    return getGenericSupertype(clazz.getGenericSuperclass(), superclass, clazz2);
                }
                clazz = (Class<Object>)superclass;
            }
        }
        return clazz2;
    }
    
    public static Type[] getMapKeyAndValueTypes(final Type type, final Class<?> clazz) {
        if (type == Properties.class) {
            return new Type[] { String.class, String.class };
        }
        final Type supertype = getSupertype(type, clazz, Map.class);
        if (supertype instanceof ParameterizedType) {
            return ((ParameterizedType)supertype).getActualTypeArguments();
        }
        return new Type[] { Object.class, Object.class };
    }
    
    public static Class<?> getRawType(final Type obj) {
        if (obj instanceof Class) {
            return (Class<?>)obj;
        }
        if (obj instanceof ParameterizedType) {
            final Type rawType = ((ParameterizedType)obj).getRawType();
            $Gson$Preconditions.checkArgument(rawType instanceof Class);
            return (Class<?>)rawType;
        }
        if (obj instanceof GenericArrayType) {
            return Array.newInstance(getRawType(((GenericArrayType)obj).getGenericComponentType()), 0).getClass();
        }
        if (obj instanceof TypeVariable) {
            return Object.class;
        }
        if (obj instanceof WildcardType) {
            return getRawType(((WildcardType)obj).getUpperBounds()[0]);
        }
        String name;
        if (obj == null) {
            name = "null";
        }
        else {
            name = obj.getClass().getName();
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + obj + "> is of type " + name);
    }
    
    static Type getSupertype(final Type type, final Class<?> clazz, final Class<?> clazz2) {
        $Gson$Preconditions.checkArgument(clazz2.isAssignableFrom(clazz));
        return resolve(type, clazz, getGenericSupertype(type, clazz, clazz2));
    }
    
    private static int hashCodeOrZero(final Object o) {
        if (o != null) {
            return o.hashCode();
        }
        return 0;
    }
    
    private static int indexOf(final Object[] array, final Object o) {
        for (int i = 0; i < array.length; ++i) {
            if (o.equals(array[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }
    
    public static ParameterizedType newParameterizedTypeWithOwner(final Type type, final Type type2, final Type... array) {
        return new ParameterizedTypeImpl(type, type2, array);
    }
    
    public static Type resolve(final Type type, final Class<?> clazz, Type resolveTypeVariable) {
        while (resolveTypeVariable instanceof TypeVariable) {
            final TypeVariable typeVariable = (TypeVariable)resolveTypeVariable;
            resolveTypeVariable = resolveTypeVariable(type, clazz, typeVariable);
            if (resolveTypeVariable == typeVariable) {
                return resolveTypeVariable;
            }
        }
        if (resolveTypeVariable instanceof Class && ((Class)resolveTypeVariable).isArray()) {
            final Class clazz2 = (Class)resolveTypeVariable;
            final Class componentType = clazz2.getComponentType();
            final Type resolve = resolve(type, clazz, componentType);
            if (componentType == resolve) {
                return clazz2;
            }
            return arrayOf(resolve);
        }
        else if (resolveTypeVariable instanceof GenericArrayType) {
            final GenericArrayType genericArrayType = (GenericArrayType)resolveTypeVariable;
            final Type genericComponentType = genericArrayType.getGenericComponentType();
            final Type resolve2 = resolve(type, clazz, genericComponentType);
            if (genericComponentType == resolve2) {
                return genericArrayType;
            }
            return arrayOf(resolve2);
        }
        else if (resolveTypeVariable instanceof ParameterizedType) {
            final ParameterizedType parameterizedType = (ParameterizedType)resolveTypeVariable;
            final Type ownerType = parameterizedType.getOwnerType();
            final Type resolve3 = resolve(type, clazz, ownerType);
            int n;
            if (resolve3 != ownerType) {
                n = 1;
            }
            else {
                n = 0;
            }
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            for (int length = actualTypeArguments.length, i = 0; i < length; ++i) {
                final Type resolve4 = resolve(type, clazz, actualTypeArguments[i]);
                if (resolve4 != actualTypeArguments[i]) {
                    if (n == 0) {
                        actualTypeArguments = actualTypeArguments.clone();
                        n = 1;
                    }
                    actualTypeArguments[i] = resolve4;
                }
            }
            if (n != 0) {
                return newParameterizedTypeWithOwner(resolve3, parameterizedType.getRawType(), actualTypeArguments);
            }
            return parameterizedType;
        }
        else {
            if (resolveTypeVariable instanceof WildcardType) {
                final WildcardType wildcardType = (WildcardType)resolveTypeVariable;
                final Type[] lowerBounds = wildcardType.getLowerBounds();
                final Type[] upperBounds = wildcardType.getUpperBounds();
                if (lowerBounds.length == 1) {
                    final Type resolve5 = resolve(type, clazz, lowerBounds[0]);
                    if (resolve5 != lowerBounds[0]) {
                        return supertypeOf(resolve5);
                    }
                }
                else if (upperBounds.length == 1) {
                    final Type resolve6 = resolve(type, clazz, upperBounds[0]);
                    if (resolve6 != upperBounds[0]) {
                        return subtypeOf(resolve6);
                    }
                }
                return wildcardType;
            }
            return resolveTypeVariable;
        }
    }
    
    static Type resolveTypeVariable(final Type type, final Class<?> clazz, final TypeVariable<?> typeVariable) {
        final Class<?> declaringClass = declaringClassOf(typeVariable);
        if (declaringClass == null) {
            return typeVariable;
        }
        final Type genericSupertype = getGenericSupertype(type, clazz, declaringClass);
        if (genericSupertype instanceof ParameterizedType) {
            return ((ParameterizedType)genericSupertype).getActualTypeArguments()[indexOf(declaringClass.getTypeParameters(), typeVariable)];
        }
        return typeVariable;
    }
    
    public static WildcardType subtypeOf(final Type type) {
        return new WildcardTypeImpl(new Type[] { type }, $Gson$Types.EMPTY_TYPE_ARRAY);
    }
    
    public static WildcardType supertypeOf(final Type type) {
        return new WildcardTypeImpl(new Type[] { Object.class }, new Type[] { type });
    }
    
    public static String typeToString(final Type type) {
        if (type instanceof Class) {
            return ((Class)type).getName();
        }
        return type.toString();
    }
    
    private static final class GenericArrayTypeImpl implements GenericArrayType, Serializable
    {
        private static final long serialVersionUID;
        private final Type componentType;
        
        public GenericArrayTypeImpl(final Type type) {
            super();
            this.componentType = $Gson$Types.canonicalize(type);
        }
        
        @Override
        public boolean equals(final Object o) {
            return o instanceof GenericArrayType && $Gson$Types.equals(this, (Type)o);
        }
        
        @Override
        public Type getGenericComponentType() {
            return this.componentType;
        }
        
        @Override
        public int hashCode() {
            return this.componentType.hashCode();
        }
        
        @Override
        public String toString() {
            return $Gson$Types.typeToString(this.componentType) + "[]";
        }
    }
    
    private static final class ParameterizedTypeImpl implements ParameterizedType, Serializable
    {
        private static final long serialVersionUID;
        private final Type ownerType;
        private final Type rawType;
        private final Type[] typeArguments;
        
        public ParameterizedTypeImpl(final Type type, final Type type2, final Type... array) {
            super();
            if (type2 instanceof Class) {
                final Class clazz = (Class)type2;
                $Gson$Preconditions.checkArgument(type != null || clazz.getEnclosingClass() == null);
                $Gson$Preconditions.checkArgument(type == null || clazz.getEnclosingClass() != null);
            }
            Type canonicalize;
            if (type == null) {
                canonicalize = null;
            }
            else {
                canonicalize = $Gson$Types.canonicalize(type);
            }
            this.ownerType = canonicalize;
            this.rawType = $Gson$Types.canonicalize(type2);
            this.typeArguments = array.clone();
            for (int i = 0; i < this.typeArguments.length; ++i) {
                $Gson$Preconditions.checkNotNull(this.typeArguments[i]);
                checkNotPrimitive(this.typeArguments[i]);
                this.typeArguments[i] = $Gson$Types.canonicalize(this.typeArguments[i]);
            }
        }
        
        @Override
        public boolean equals(final Object o) {
            return o instanceof ParameterizedType && $Gson$Types.equals(this, (Type)o);
        }
        
        @Override
        public Type[] getActualTypeArguments() {
            return this.typeArguments.clone();
        }
        
        @Override
        public Type getOwnerType() {
            return this.ownerType;
        }
        
        @Override
        public Type getRawType() {
            return this.rawType;
        }
        
        @Override
        public int hashCode() {
            return Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode() ^ hashCodeOrZero(this.ownerType);
        }
        
        @Override
        public String toString() {
            final StringBuilder sb = new StringBuilder(30 * (1 + this.typeArguments.length));
            sb.append($Gson$Types.typeToString(this.rawType));
            if (this.typeArguments.length == 0) {
                return sb.toString();
            }
            sb.append("<").append($Gson$Types.typeToString(this.typeArguments[0]));
            for (int i = 1; i < this.typeArguments.length; ++i) {
                sb.append(", ").append($Gson$Types.typeToString(this.typeArguments[i]));
            }
            return sb.append(">").toString();
        }
    }
    
    private static final class WildcardTypeImpl implements WildcardType, Serializable
    {
        private static final long serialVersionUID;
        private final Type lowerBound;
        private final Type upperBound;
        
        public WildcardTypeImpl(final Type[] array, final Type[] array2) {
            super();
            $Gson$Preconditions.checkArgument(array2.length <= 1);
            $Gson$Preconditions.checkArgument(array.length == 1);
            if (array2.length == 1) {
                $Gson$Preconditions.checkNotNull(array2[0]);
                checkNotPrimitive(array2[0]);
                $Gson$Preconditions.checkArgument(array[0] == Object.class);
                this.lowerBound = $Gson$Types.canonicalize(array2[0]);
                this.upperBound = Object.class;
                return;
            }
            $Gson$Preconditions.checkNotNull(array[0]);
            checkNotPrimitive(array[0]);
            this.lowerBound = null;
            this.upperBound = $Gson$Types.canonicalize(array[0]);
        }
        
        @Override
        public boolean equals(final Object o) {
            return o instanceof WildcardType && $Gson$Types.equals(this, (Type)o);
        }
        
        @Override
        public Type[] getLowerBounds() {
            if (this.lowerBound != null) {
                return new Type[] { this.lowerBound };
            }
            return $Gson$Types.EMPTY_TYPE_ARRAY;
        }
        
        @Override
        public Type[] getUpperBounds() {
            return new Type[] { this.upperBound };
        }
        
        @Override
        public int hashCode() {
            int n;
            if (this.lowerBound != null) {
                n = 31 + this.lowerBound.hashCode();
            }
            else {
                n = 1;
            }
            return n ^ 31 + this.upperBound.hashCode();
        }
        
        @Override
        public String toString() {
            if (this.lowerBound != null) {
                return "? super " + $Gson$Types.typeToString(this.lowerBound);
            }
            if (this.upperBound == Object.class) {
                return "?";
            }
            return "? extends " + $Gson$Types.typeToString(this.upperBound);
        }
    }
}
