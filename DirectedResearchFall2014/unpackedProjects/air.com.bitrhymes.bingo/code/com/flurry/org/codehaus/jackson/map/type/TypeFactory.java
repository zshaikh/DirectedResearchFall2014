package com.flurry.org.codehaus.jackson.map.type;

import com.flurry.org.codehaus.jackson.type.*;
import java.lang.reflect.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.util.*;

public final class TypeFactory
{
    private static final JavaType[] NO_TYPES;
    @Deprecated
    public static final TypeFactory instance;
    protected HierarchicType _cachedArrayListType;
    protected HierarchicType _cachedHashMapType;
    protected final TypeModifier[] _modifiers;
    protected final TypeParser _parser;
    
    static {
        instance = new TypeFactory();
        NO_TYPES = new JavaType[0];
    }
    
    private TypeFactory() {
        super();
        this._parser = new TypeParser(this);
        this._modifiers = null;
    }
    
    protected TypeFactory(final TypeParser parser, final TypeModifier[] modifiers) {
        super();
        this._parser = parser;
        this._modifiers = modifiers;
    }
    
    private JavaType _collectionType(final Class<?> clazz) {
        final JavaType[] typeParameters = this.findTypeParameters(clazz, Collection.class);
        if (typeParameters == null) {
            return CollectionType.construct(clazz, this._unknownType());
        }
        if (typeParameters.length != 1) {
            throw new IllegalArgumentException("Strange Collection type " + clazz.getName() + ": can not determine type parameters");
        }
        return CollectionType.construct(clazz, typeParameters[0]);
    }
    
    private JavaType _mapType(final Class<?> clazz) {
        final JavaType[] typeParameters = this.findTypeParameters(clazz, Map.class);
        if (typeParameters == null) {
            return MapType.construct(clazz, this._unknownType(), this._unknownType());
        }
        if (typeParameters.length != 2) {
            throw new IllegalArgumentException("Strange Map type " + clazz.getName() + ": can not determine type parameters");
        }
        return MapType.construct(clazz, typeParameters[0], typeParameters[1]);
    }
    
    @Deprecated
    public static JavaType arrayType(final JavaType javaType) {
        return TypeFactory.instance.constructArrayType(javaType);
    }
    
    @Deprecated
    public static JavaType arrayType(final Class<?> clazz) {
        return TypeFactory.instance.constructArrayType(TypeFactory.instance.constructType(clazz));
    }
    
    @Deprecated
    public static JavaType collectionType(final Class<? extends Collection> clazz, final JavaType javaType) {
        return TypeFactory.instance.constructCollectionType(clazz, javaType);
    }
    
    @Deprecated
    public static JavaType collectionType(final Class<? extends Collection> clazz, final Class<?> clazz2) {
        return TypeFactory.instance.constructCollectionType(clazz, TypeFactory.instance.constructType(clazz2));
    }
    
    public static TypeFactory defaultInstance() {
        return TypeFactory.instance;
    }
    
    @Deprecated
    public static JavaType fastSimpleType(final Class<?> clazz) {
        return TypeFactory.instance.uncheckedSimpleType(clazz);
    }
    
    @Deprecated
    public static JavaType[] findParameterTypes(final JavaType javaType, final Class<?> clazz) {
        return TypeFactory.instance.findTypeParameters(javaType, clazz);
    }
    
    @Deprecated
    public static JavaType[] findParameterTypes(final Class<?> clazz, final Class<?> clazz2) {
        return TypeFactory.instance.findTypeParameters(clazz, clazz2);
    }
    
    @Deprecated
    public static JavaType[] findParameterTypes(final Class<?> clazz, final Class<?> clazz2, final TypeBindings typeBindings) {
        return TypeFactory.instance.findTypeParameters(clazz, clazz2, typeBindings);
    }
    
    public static JavaType fromCanonical(final String s) throws IllegalArgumentException {
        return TypeFactory.instance.constructFromCanonical(s);
    }
    
    @Deprecated
    public static JavaType fromClass(final Class<?> clazz) {
        return TypeFactory.instance._fromClass(clazz, null);
    }
    
    @Deprecated
    public static JavaType fromType(final Type type) {
        return TypeFactory.instance._constructType(type, null);
    }
    
    @Deprecated
    public static JavaType fromTypeReference(final TypeReference<?> typeReference) {
        return type(typeReference.getType());
    }
    
    @Deprecated
    public static JavaType mapType(final Class<? extends Map> clazz, final JavaType javaType, final JavaType javaType2) {
        return TypeFactory.instance.constructMapType(clazz, javaType, javaType2);
    }
    
    @Deprecated
    public static JavaType mapType(final Class<? extends Map> clazz, final Class<?> clazz2, final Class<?> clazz3) {
        return TypeFactory.instance.constructMapType(clazz, type(clazz2), TypeFactory.instance.constructType(clazz3));
    }
    
    @Deprecated
    public static JavaType parametricType(final Class<?> clazz, final JavaType... array) {
        return TypeFactory.instance.constructParametricType(clazz, array);
    }
    
    @Deprecated
    public static JavaType parametricType(final Class<?> clazz, final Class<?>... array) {
        return TypeFactory.instance.constructParametricType(clazz, array);
    }
    
    public static Class<?> rawClass(final Type type) {
        if (type instanceof Class) {
            return (Class<?>)type;
        }
        return defaultInstance().constructType(type).getRawClass();
    }
    
    @Deprecated
    public static JavaType specialize(final JavaType javaType, final Class<?> clazz) {
        return TypeFactory.instance.constructSpecializedType(javaType, clazz);
    }
    
    @Deprecated
    public static JavaType type(final TypeReference<?> typeReference) {
        return TypeFactory.instance.constructType(typeReference.getType());
    }
    
    @Deprecated
    public static JavaType type(final Type type) {
        return TypeFactory.instance._constructType(type, null);
    }
    
    @Deprecated
    public static JavaType type(final Type type, final TypeBindings typeBindings) {
        return TypeFactory.instance._constructType(type, typeBindings);
    }
    
    @Deprecated
    public static JavaType type(final Type type, final JavaType javaType) {
        return TypeFactory.instance.constructType(type, javaType);
    }
    
    @Deprecated
    public static JavaType type(final Type type, final Class<?> clazz) {
        return TypeFactory.instance.constructType(type, clazz);
    }
    
    public static JavaType unknownType() {
        return defaultInstance()._unknownType();
    }
    
    protected HierarchicType _arrayListSuperInterfaceChain(final HierarchicType subType) {
        synchronized (this) {
            if (this._cachedArrayListType == null) {
                final HierarchicType deepCloneWithoutSubtype = subType.deepCloneWithoutSubtype();
                this._doFindSuperInterfaceChain(deepCloneWithoutSubtype, List.class);
                this._cachedArrayListType = deepCloneWithoutSubtype.getSuperType();
            }
            final HierarchicType deepCloneWithoutSubtype2 = this._cachedArrayListType.deepCloneWithoutSubtype();
            subType.setSuperType(deepCloneWithoutSubtype2);
            deepCloneWithoutSubtype2.setSubType(subType);
            return subType;
        }
    }
    
    public JavaType _constructType(final Type type, TypeBindings typeBindings) {
        JavaType javaType;
        if (type instanceof Class) {
            final Class clazz = (Class)type;
            if (typeBindings == null) {
                typeBindings = new TypeBindings(this, clazz);
            }
            javaType = this._fromClass(clazz, typeBindings);
        }
        else if (type instanceof ParameterizedType) {
            javaType = this._fromParamType((ParameterizedType)type, typeBindings);
        }
        else if (type instanceof GenericArrayType) {
            javaType = this._fromArrayType((GenericArrayType)type, typeBindings);
        }
        else if (type instanceof TypeVariable) {
            javaType = this._fromVariable((TypeVariable<?>)type, typeBindings);
        }
        else {
            if (!(type instanceof WildcardType)) {
                throw new IllegalArgumentException("Unrecognized Type: " + type.toString());
            }
            javaType = this._fromWildcard((WildcardType)type, typeBindings);
        }
        if (this._modifiers != null && !javaType.isContainerType()) {
            final TypeModifier[] modifiers = this._modifiers;
            for (int length = modifiers.length, i = 0; i < length; ++i) {
                javaType = modifiers[i].modifyType(javaType, type, typeBindings, this);
            }
        }
        return javaType;
    }
    
    protected HierarchicType _doFindSuperInterfaceChain(final HierarchicType hierarchicType, final Class<?> clazz) {
        final Class<?> rawClass = hierarchicType.getRawClass();
        final Type[] genericInterfaces = rawClass.getGenericInterfaces();
        if (genericInterfaces != null) {
            for (int length = genericInterfaces.length, i = 0; i < length; ++i) {
                final HierarchicType findSuperInterfaceChain = this._findSuperInterfaceChain(genericInterfaces[i], clazz);
                if (findSuperInterfaceChain != null) {
                    findSuperInterfaceChain.setSubType(hierarchicType);
                    hierarchicType.setSuperType(findSuperInterfaceChain);
                    return hierarchicType;
                }
            }
        }
        final Type genericSuperclass = rawClass.getGenericSuperclass();
        if (genericSuperclass != null) {
            final HierarchicType findSuperInterfaceChain2 = this._findSuperInterfaceChain(genericSuperclass, clazz);
            if (findSuperInterfaceChain2 != null) {
                findSuperInterfaceChain2.setSubType(hierarchicType);
                hierarchicType.setSuperType(findSuperInterfaceChain2);
                return hierarchicType;
            }
        }
        return null;
    }
    
    protected HierarchicType _findSuperClassChain(final Type type, final Class<?> clazz) {
        final HierarchicType subType = new HierarchicType(type);
        final Class<?> rawClass = subType.getRawClass();
        if (rawClass == clazz) {
            return subType;
        }
        final Type genericSuperclass = rawClass.getGenericSuperclass();
        if (genericSuperclass != null) {
            final HierarchicType findSuperClassChain = this._findSuperClassChain(genericSuperclass, clazz);
            if (findSuperClassChain != null) {
                findSuperClassChain.setSubType(subType);
                subType.setSuperType(findSuperClassChain);
                return subType;
            }
        }
        return null;
    }
    
    protected HierarchicType _findSuperInterfaceChain(final Type type, final Class<?> clazz) {
        final HierarchicType hierarchicType = new HierarchicType(type);
        final Class<?> rawClass = hierarchicType.getRawClass();
        if (rawClass == clazz) {
            return new HierarchicType(type);
        }
        if (rawClass == HashMap.class && clazz == Map.class) {
            return this._hashMapSuperInterfaceChain(hierarchicType);
        }
        if (rawClass == ArrayList.class && clazz == List.class) {
            return this._arrayListSuperInterfaceChain(hierarchicType);
        }
        return this._doFindSuperInterfaceChain(hierarchicType, clazz);
    }
    
    protected HierarchicType _findSuperTypeChain(final Class<?> clazz, final Class<?> clazz2) {
        if (clazz2.isInterface()) {
            return this._findSuperInterfaceChain(clazz, clazz2);
        }
        return this._findSuperClassChain(clazz, clazz2);
    }
    
    protected JavaType _fromArrayType(final GenericArrayType genericArrayType, final TypeBindings typeBindings) {
        return ArrayType.construct(this._constructType(genericArrayType.getGenericComponentType(), typeBindings), null, null);
    }
    
    protected JavaType _fromClass(final Class<?> clazz, final TypeBindings typeBindings) {
        if (clazz.isArray()) {
            return ArrayType.construct(this._constructType(clazz.getComponentType(), null), null, null);
        }
        if (clazz.isEnum()) {
            return new SimpleType(clazz);
        }
        if (Map.class.isAssignableFrom(clazz)) {
            return this._mapType(clazz);
        }
        if (Collection.class.isAssignableFrom(clazz)) {
            return this._collectionType(clazz);
        }
        return new SimpleType(clazz);
    }
    
    protected JavaType _fromParamType(final ParameterizedType parameterizedType, final TypeBindings typeBindings) {
        final Class clazz = (Class)parameterizedType.getRawType();
        final Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        int length;
        if (actualTypeArguments == null) {
            length = 0;
        }
        else {
            length = actualTypeArguments.length;
        }
        JavaType[] no_TYPES;
        if (length == 0) {
            no_TYPES = TypeFactory.NO_TYPES;
        }
        else {
            no_TYPES = new JavaType[length];
            for (int i = 0; i < length; ++i) {
                no_TYPES[i] = this._constructType(actualTypeArguments[i], typeBindings);
            }
        }
        if (Map.class.isAssignableFrom(clazz)) {
            final JavaType[] typeParameters = this.findTypeParameters(this.constructSimpleType(clazz, no_TYPES), Map.class);
            if (typeParameters.length != 2) {
                throw new IllegalArgumentException("Could not find 2 type parameters for Map class " + clazz.getName() + " (found " + typeParameters.length + ")");
            }
            return MapType.construct(clazz, typeParameters[0], typeParameters[1]);
        }
        else if (Collection.class.isAssignableFrom(clazz)) {
            final JavaType[] typeParameters2 = this.findTypeParameters(this.constructSimpleType(clazz, no_TYPES), Collection.class);
            if (typeParameters2.length != 1) {
                throw new IllegalArgumentException("Could not find 1 type parameter for Collection class " + clazz.getName() + " (found " + typeParameters2.length + ")");
            }
            return CollectionType.construct(clazz, typeParameters2[0]);
        }
        else {
            if (length == 0) {
                return new SimpleType(clazz);
            }
            return this.constructSimpleType(clazz, no_TYPES);
        }
    }
    
    protected JavaType _fromParameterizedClass(final Class<?> clazz, final List<JavaType> list) {
        if (clazz.isArray()) {
            return ArrayType.construct(this._constructType(clazz.getComponentType(), null), null, null);
        }
        if (clazz.isEnum()) {
            return new SimpleType(clazz);
        }
        if (Map.class.isAssignableFrom(clazz)) {
            if (list.size() > 0) {
                final JavaType javaType = list.get(0);
                JavaType unknownType;
                if (list.size() >= 2) {
                    unknownType = list.get(1);
                }
                else {
                    unknownType = this._unknownType();
                }
                return MapType.construct(clazz, javaType, unknownType);
            }
            return this._mapType(clazz);
        }
        else if (Collection.class.isAssignableFrom(clazz)) {
            if (list.size() >= 1) {
                return CollectionType.construct(clazz, list.get(0));
            }
            return this._collectionType(clazz);
        }
        else {
            if (list.size() == 0) {
                return new SimpleType(clazz);
            }
            return this.constructSimpleType(clazz, list.toArray(new JavaType[list.size()]));
        }
    }
    
    protected JavaType _fromVariable(final TypeVariable<?> typeVariable, final TypeBindings typeBindings) {
        if (typeBindings == null) {
            return this._unknownType();
        }
        final String name = typeVariable.getName();
        final JavaType type = typeBindings.findType(name);
        if (type != null) {
            return type;
        }
        final Type[] bounds = typeVariable.getBounds();
        typeBindings._addPlaceholder(name);
        return this._constructType(bounds[0], typeBindings);
    }
    
    protected JavaType _fromWildcard(final WildcardType wildcardType, final TypeBindings typeBindings) {
        return this._constructType(wildcardType.getUpperBounds()[0], typeBindings);
    }
    
    protected HierarchicType _hashMapSuperInterfaceChain(final HierarchicType subType) {
        synchronized (this) {
            if (this._cachedHashMapType == null) {
                final HierarchicType deepCloneWithoutSubtype = subType.deepCloneWithoutSubtype();
                this._doFindSuperInterfaceChain(deepCloneWithoutSubtype, Map.class);
                this._cachedHashMapType = deepCloneWithoutSubtype.getSuperType();
            }
            final HierarchicType deepCloneWithoutSubtype2 = this._cachedHashMapType.deepCloneWithoutSubtype();
            subType.setSuperType(deepCloneWithoutSubtype2);
            deepCloneWithoutSubtype2.setSubType(subType);
            return subType;
        }
    }
    
    protected JavaType _resolveVariableViaSubTypes(final HierarchicType hierarchicType, final String s, final TypeBindings typeBindings) {
        if (hierarchicType != null && hierarchicType.isGeneric()) {
            final TypeVariable<Class<?>>[] typeParameters = hierarchicType.getRawClass().getTypeParameters();
            int i = 0;
            while (i < typeParameters.length) {
                if (s.equals(typeParameters[i].getName())) {
                    final Type type = hierarchicType.asGeneric().getActualTypeArguments()[i];
                    if (type instanceof TypeVariable) {
                        return this._resolveVariableViaSubTypes(hierarchicType.getSubType(), ((TypeVariable)type).getName(), typeBindings);
                    }
                    return this._constructType(type, typeBindings);
                }
                else {
                    ++i;
                }
            }
        }
        return this._unknownType();
    }
    
    protected JavaType _unknownType() {
        return new SimpleType(Object.class);
    }
    
    public ArrayType constructArrayType(final JavaType javaType) {
        return ArrayType.construct(javaType, null, null);
    }
    
    public ArrayType constructArrayType(final Class<?> clazz) {
        return ArrayType.construct(this._constructType(clazz, null), null, null);
    }
    
    public CollectionLikeType constructCollectionLikeType(final Class<?> clazz, final JavaType javaType) {
        return CollectionLikeType.construct(clazz, javaType);
    }
    
    public CollectionLikeType constructCollectionLikeType(final Class<?> clazz, final Class<?> clazz2) {
        return CollectionLikeType.construct(clazz, this.constructType(clazz2));
    }
    
    public CollectionType constructCollectionType(final Class<? extends Collection> clazz, final JavaType javaType) {
        return CollectionType.construct(clazz, javaType);
    }
    
    public CollectionType constructCollectionType(final Class<? extends Collection> clazz, final Class<?> clazz2) {
        return CollectionType.construct(clazz, this.constructType(clazz2));
    }
    
    public JavaType constructFromCanonical(final String s) throws IllegalArgumentException {
        return this._parser.parse(s);
    }
    
    public MapLikeType constructMapLikeType(final Class<?> clazz, final JavaType javaType, final JavaType javaType2) {
        return MapLikeType.construct(clazz, javaType, javaType2);
    }
    
    public MapLikeType constructMapLikeType(final Class<?> clazz, final Class<?> clazz2, final Class<?> clazz3) {
        return MapType.construct(clazz, this.constructType(clazz2), this.constructType(clazz3));
    }
    
    public MapType constructMapType(final Class<? extends Map> clazz, final JavaType javaType, final JavaType javaType2) {
        return MapType.construct(clazz, javaType, javaType2);
    }
    
    public MapType constructMapType(final Class<? extends Map> clazz, final Class<?> clazz2, final Class<?> clazz3) {
        return MapType.construct(clazz, this.constructType(clazz2), this.constructType(clazz3));
    }
    
    public JavaType constructParametricType(final Class<?> clazz, final JavaType... array) {
        if (clazz.isArray()) {
            if (array.length != 1) {
                throw new IllegalArgumentException("Need exactly 1 parameter type for arrays (" + clazz.getName() + ")");
            }
            return this.constructArrayType(array[0]);
        }
        else if (Map.class.isAssignableFrom(clazz)) {
            if (array.length != 2) {
                throw new IllegalArgumentException("Need exactly 2 parameter types for Map types (" + clazz.getName() + ")");
            }
            return this.constructMapType((Class<? extends Map>)clazz, array[0], array[1]);
        }
        else {
            if (!Collection.class.isAssignableFrom(clazz)) {
                return this.constructSimpleType(clazz, array);
            }
            if (array.length != 1) {
                throw new IllegalArgumentException("Need exactly 1 parameter type for Collection types (" + clazz.getName() + ")");
            }
            return this.constructCollectionType((Class<? extends Collection>)clazz, array[0]);
        }
    }
    
    public JavaType constructParametricType(final Class<?> clazz, final Class<?>... array) {
        final int length = array.length;
        final JavaType[] array2 = new JavaType[length];
        for (int i = 0; i < length; ++i) {
            array2[i] = this._fromClass(array[i], null);
        }
        return this.constructParametricType(clazz, array2);
    }
    
    public CollectionLikeType constructRawCollectionLikeType(final Class<?> clazz) {
        return CollectionLikeType.construct(clazz, unknownType());
    }
    
    public CollectionType constructRawCollectionType(final Class<? extends Collection> clazz) {
        return CollectionType.construct(clazz, unknownType());
    }
    
    public MapLikeType constructRawMapLikeType(final Class<?> clazz) {
        return MapLikeType.construct(clazz, unknownType(), unknownType());
    }
    
    public MapType constructRawMapType(final Class<? extends Map> clazz) {
        return MapType.construct(clazz, unknownType(), unknownType());
    }
    
    public JavaType constructSimpleType(final Class<?> clazz, final JavaType[] array) {
        final TypeVariable<Class<?>>[] typeParameters = clazz.getTypeParameters();
        if (typeParameters.length != array.length) {
            throw new IllegalArgumentException("Parameter type mismatch for " + clazz.getName() + ": expected " + typeParameters.length + " parameters, was given " + array.length);
        }
        final String[] array2 = new String[typeParameters.length];
        for (int i = 0; i < typeParameters.length; ++i) {
            array2[i] = typeParameters[i].getName();
        }
        return new SimpleType(clazz, array2, array, null, null);
    }
    
    public JavaType constructSpecializedType(final JavaType obj, final Class<?> clazz) {
        if (!(obj instanceof SimpleType) || (!clazz.isArray() && !Map.class.isAssignableFrom(clazz) && !Collection.class.isAssignableFrom(clazz))) {
            return obj.narrowBy(clazz);
        }
        if (!obj.getRawClass().isAssignableFrom(clazz)) {
            throw new IllegalArgumentException("Class " + clazz.getClass().getName() + " not subtype of " + obj);
        }
        JavaType javaType = this._fromClass(clazz, new TypeBindings(this, obj.getRawClass()));
        final Object valueHandler = obj.getValueHandler();
        if (valueHandler != null) {
            javaType = javaType.withValueHandler(valueHandler);
        }
        final Object typeHandler = obj.getTypeHandler();
        if (typeHandler != null) {
            javaType = javaType.withTypeHandler(typeHandler);
        }
        return javaType;
    }
    
    public JavaType constructType(final TypeReference<?> typeReference) {
        return this._constructType(typeReference.getType(), null);
    }
    
    public JavaType constructType(final Type type) {
        return this._constructType(type, null);
    }
    
    public JavaType constructType(final Type type, final TypeBindings typeBindings) {
        return this._constructType(type, typeBindings);
    }
    
    public JavaType constructType(final Type type, final JavaType javaType) {
        TypeBindings typeBindings;
        if (javaType == null) {
            typeBindings = null;
        }
        else {
            typeBindings = new TypeBindings(this, javaType);
        }
        return this._constructType(type, typeBindings);
    }
    
    public JavaType constructType(final Type type, final Class<?> clazz) {
        TypeBindings typeBindings;
        if (clazz == null) {
            typeBindings = null;
        }
        else {
            typeBindings = new TypeBindings(this, clazz);
        }
        return this._constructType(type, typeBindings);
    }
    
    public JavaType[] findTypeParameters(final JavaType javaType, final Class<?> clazz) {
        final Class<?> rawClass = javaType.getRawClass();
        if (rawClass != clazz) {
            return this.findTypeParameters(rawClass, clazz, new TypeBindings(this, javaType));
        }
        final int containedTypeCount = javaType.containedTypeCount();
        if (containedTypeCount == 0) {
            return null;
        }
        final JavaType[] array = new JavaType[containedTypeCount];
        for (int i = 0; i < containedTypeCount; ++i) {
            array[i] = javaType.containedType(i);
        }
        return array;
    }
    
    public JavaType[] findTypeParameters(final Class<?> clazz, final Class<?> clazz2) {
        return this.findTypeParameters(clazz, clazz2, new TypeBindings(this, clazz));
    }
    
    public JavaType[] findTypeParameters(final Class<?> clazz, final Class<?> clazz2, TypeBindings typeBindings) {
        final HierarchicType findSuperTypeChain = this._findSuperTypeChain(clazz, clazz2);
        if (findSuperTypeChain == null) {
            throw new IllegalArgumentException("Class " + clazz.getName() + " is not a subtype of " + clazz2.getName());
        }
        HierarchicType superType = findSuperTypeChain;
        while (superType.getSuperType() != null) {
            superType = superType.getSuperType();
            final Class<?> rawClass = superType.getRawClass();
            final TypeBindings typeBindings2 = new TypeBindings(this, rawClass);
            if (superType.isGeneric()) {
                final Type[] actualTypeArguments = superType.asGeneric().getActualTypeArguments();
                final TypeVariable<Class<?>>[] typeParameters = rawClass.getTypeParameters();
                for (int length = actualTypeArguments.length, i = 0; i < length; ++i) {
                    typeBindings2.addBinding(typeParameters[i].getName(), TypeFactory.instance._constructType(actualTypeArguments[i], typeBindings));
                }
            }
            typeBindings = typeBindings2;
        }
        if (!superType.isGeneric()) {
            return null;
        }
        return typeBindings.typesAsArray();
    }
    
    public JavaType uncheckedSimpleType(final Class<?> clazz) {
        return new SimpleType(clazz);
    }
    
    public TypeFactory withModifier(final TypeModifier typeModifier) {
        if (this._modifiers == null) {
            return new TypeFactory(this._parser, new TypeModifier[] { typeModifier });
        }
        return new TypeFactory(this._parser, ArrayBuilders.insertInListNoDup(this._modifiers, typeModifier));
    }
}
