package com.flurry.org.codehaus.jackson.map.type;

import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;
import java.lang.reflect.*;

public class TypeBindings
{
    private static final JavaType[] NO_TYPES;
    public static final JavaType UNBOUND;
    protected Map<String, JavaType> _bindings;
    protected final Class<?> _contextClass;
    protected final JavaType _contextType;
    private final TypeBindings _parentBindings;
    protected HashSet<String> _placeholders;
    protected final TypeFactory _typeFactory;
    
    static {
        NO_TYPES = new JavaType[0];
        UNBOUND = new SimpleType(Object.class);
    }
    
    private TypeBindings(final TypeFactory typeFactory, final TypeBindings parentBindings, final Class<?> contextClass, final JavaType contextType) {
        super();
        this._typeFactory = typeFactory;
        this._parentBindings = parentBindings;
        this._contextClass = contextClass;
        this._contextType = contextType;
    }
    
    public TypeBindings(final TypeFactory typeFactory, final JavaType javaType) {
        this(typeFactory, null, javaType.getRawClass(), javaType);
    }
    
    public TypeBindings(final TypeFactory typeFactory, final Class<?> clazz) {
        this(typeFactory, null, clazz, null);
    }
    
    public void _addPlaceholder(final String e) {
        if (this._placeholders == null) {
            this._placeholders = new HashSet<String>();
        }
        this._placeholders.add(e);
    }
    
    protected void _resolve() {
        this._resolveBindings(this._contextClass);
        if (this._contextType != null) {
            final int containedTypeCount = this._contextType.containedTypeCount();
            if (containedTypeCount > 0) {
                if (this._bindings == null) {
                    this._bindings = new LinkedHashMap<String, JavaType>();
                }
                for (int i = 0; i < containedTypeCount; ++i) {
                    this._bindings.put(this._contextType.containedTypeName(i), this._contextType.containedType(i));
                }
            }
        }
        if (this._bindings == null) {
            this._bindings = Collections.emptyMap();
        }
    }
    
    protected void _resolveBindings(final Type type) {
        if (type != null) {
            Class clazz2;
            if (type instanceof ParameterizedType) {
                final ParameterizedType parameterizedType = (ParameterizedType)type;
                final Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (actualTypeArguments != null && actualTypeArguments.length > 0) {
                    final Class clazz = (Class)parameterizedType.getRawType();
                    final TypeVariable[] typeParameters = clazz.getTypeParameters();
                    if (typeParameters.length != actualTypeArguments.length) {
                        throw new IllegalArgumentException("Strange parametrized type (in class " + clazz.getName() + "): number of type arguments != number of type parameters (" + actualTypeArguments.length + " vs " + typeParameters.length + ")");
                    }
                    for (int i = 0; i < actualTypeArguments.length; ++i) {
                        final String name = typeParameters[i].getName();
                        if (this._bindings == null) {
                            this._bindings = new LinkedHashMap<String, JavaType>();
                        }
                        else if (this._bindings.containsKey(name)) {
                            continue;
                        }
                        this._addPlaceholder(name);
                        this._bindings.put(name, this._typeFactory._constructType(actualTypeArguments[i], this));
                    }
                }
                clazz2 = (Class)parameterizedType.getRawType();
            }
            else {
                if (!(type instanceof Class)) {
                    return;
                }
                clazz2 = (Class)type;
                this._resolveBindings(clazz2.getDeclaringClass());
                final TypeVariable<Class<?>>[] typeParameters2 = clazz2.getTypeParameters();
                if (typeParameters2 != null && typeParameters2.length > 0) {
                    final JavaType contextType = this._contextType;
                    JavaType[] typeParameters3 = null;
                    if (contextType != null) {
                        final boolean assignable = clazz2.isAssignableFrom(this._contextType.getRawClass());
                        typeParameters3 = null;
                        if (assignable) {
                            typeParameters3 = this._typeFactory.findTypeParameters(this._contextType, clazz2);
                        }
                    }
                    for (int j = 0; j < typeParameters2.length; ++j) {
                        final TypeVariable<Class<?>> typeVariable = typeParameters2[j];
                        final String name2 = typeVariable.getName();
                        final Type type2 = typeVariable.getBounds()[0];
                        if (type2 != null) {
                            if (this._bindings == null) {
                                this._bindings = new LinkedHashMap<String, JavaType>();
                            }
                            else if (this._bindings.containsKey(name2)) {
                                continue;
                            }
                            this._addPlaceholder(name2);
                            if (typeParameters3 != null) {
                                this._bindings.put(name2, typeParameters3[j]);
                            }
                            else {
                                this._bindings.put(name2, this._typeFactory._constructType(type2, this));
                            }
                        }
                    }
                }
            }
            this._resolveBindings(clazz2.getGenericSuperclass());
            final Type[] genericInterfaces = clazz2.getGenericInterfaces();
            for (int length = genericInterfaces.length, k = 0; k < length; ++k) {
                this._resolveBindings(genericInterfaces[k]);
            }
        }
    }
    
    public void addBinding(final String s, final JavaType javaType) {
        if (this._bindings == null || this._bindings.size() == 0) {
            this._bindings = new LinkedHashMap<String, JavaType>();
        }
        this._bindings.put(s, javaType);
    }
    
    public TypeBindings childInstance() {
        return new TypeBindings(this._typeFactory, this, this._contextClass, this._contextType);
    }
    
    public JavaType findType(final String s) {
        if (this._bindings == null) {
            this._resolve();
        }
        final JavaType javaType = this._bindings.get(s);
        if (javaType != null) {
            return javaType;
        }
        if (this._placeholders != null && this._placeholders.contains(s)) {
            return TypeBindings.UNBOUND;
        }
        if (this._parentBindings != null) {
            return this._parentBindings.findType(s);
        }
        if (this._contextClass != null && this._contextClass.getEnclosingClass() != null && !Modifier.isStatic(this._contextClass.getModifiers())) {
            return TypeBindings.UNBOUND;
        }
        String str;
        if (this._contextClass != null) {
            str = this._contextClass.getName();
        }
        else if (this._contextType != null) {
            str = this._contextType.toString();
        }
        else {
            str = "UNKNOWN";
        }
        throw new IllegalArgumentException("Type variable '" + s + "' can not be resolved (with context of class " + str + ")");
    }
    
    public int getBindingCount() {
        if (this._bindings == null) {
            this._resolve();
        }
        return this._bindings.size();
    }
    
    public JavaType resolveType(final Class<?> clazz) {
        return this._typeFactory._constructType(clazz, this);
    }
    
    public JavaType resolveType(final Type type) {
        return this._typeFactory._constructType(type, this);
    }
    
    @Override
    public String toString() {
        if (this._bindings == null) {
            this._resolve();
        }
        final StringBuilder sb = new StringBuilder("[TypeBindings for ");
        if (this._contextType != null) {
            sb.append(this._contextType.toString());
        }
        else {
            sb.append(this._contextClass.getName());
        }
        sb.append(": ").append(this._bindings).append("]");
        return sb.toString();
    }
    
    public JavaType[] typesAsArray() {
        if (this._bindings == null) {
            this._resolve();
        }
        if (this._bindings.size() == 0) {
            return TypeBindings.NO_TYPES;
        }
        return this._bindings.values().toArray(new JavaType[this._bindings.size()]);
    }
}
