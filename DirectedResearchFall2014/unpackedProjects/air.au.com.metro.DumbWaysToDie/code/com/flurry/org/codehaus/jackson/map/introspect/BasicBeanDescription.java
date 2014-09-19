package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.lang.reflect.*;

public class BasicBeanDescription extends BeanDescription
{
    protected final AnnotationIntrospector _annotationIntrospector;
    protected AnnotatedMethod _anyGetterMethod;
    protected AnnotatedMethod _anySetterMethod;
    protected TypeBindings _bindings;
    protected final AnnotatedClass _classInfo;
    protected final MapperConfig<?> _config;
    protected Set<String> _ignoredPropertyNames;
    protected Set<String> _ignoredPropertyNamesForDeser;
    protected Map<Object, AnnotatedMember> _injectables;
    protected AnnotatedMethod _jsonValueMethod;
    protected final List<BeanPropertyDefinition> _properties;
    
    public BasicBeanDescription(final MapperConfig<?> mapperConfig, final JavaType javaType, final AnnotatedClass annotatedClass) {
        this(mapperConfig, javaType, annotatedClass, Collections.emptyList());
    }
    
    protected BasicBeanDescription(final MapperConfig<?> config, final JavaType javaType, final AnnotatedClass classInfo, final List<BeanPropertyDefinition> properties) {
        super(javaType);
        this._config = config;
        AnnotationIntrospector annotationIntrospector;
        if (config == null) {
            annotationIntrospector = null;
        }
        else {
            annotationIntrospector = config.getAnnotationIntrospector();
        }
        this._annotationIntrospector = annotationIntrospector;
        this._classInfo = classInfo;
        this._properties = properties;
    }
    
    public static BasicBeanDescription forDeserialization(final POJOPropertiesCollector pojoPropertiesCollector) {
        final BasicBeanDescription basicBeanDescription = new BasicBeanDescription(pojoPropertiesCollector.getConfig(), pojoPropertiesCollector.getType(), pojoPropertiesCollector.getClassDef(), pojoPropertiesCollector.getProperties());
        basicBeanDescription._anySetterMethod = pojoPropertiesCollector.getAnySetterMethod();
        basicBeanDescription._ignoredPropertyNames = pojoPropertiesCollector.getIgnoredPropertyNames();
        basicBeanDescription._ignoredPropertyNamesForDeser = pojoPropertiesCollector.getIgnoredPropertyNamesForDeser();
        basicBeanDescription._injectables = pojoPropertiesCollector.getInjectables();
        return basicBeanDescription;
    }
    
    public static BasicBeanDescription forOtherUse(final MapperConfig<?> mapperConfig, final JavaType javaType, final AnnotatedClass annotatedClass) {
        return new BasicBeanDescription(mapperConfig, javaType, annotatedClass, Collections.emptyList());
    }
    
    public static BasicBeanDescription forSerialization(final POJOPropertiesCollector pojoPropertiesCollector) {
        final BasicBeanDescription basicBeanDescription = new BasicBeanDescription(pojoPropertiesCollector.getConfig(), pojoPropertiesCollector.getType(), pojoPropertiesCollector.getClassDef(), pojoPropertiesCollector.getProperties());
        basicBeanDescription._jsonValueMethod = pojoPropertiesCollector.getJsonValueMethod();
        basicBeanDescription._anyGetterMethod = pojoPropertiesCollector.getAnyGetterMethod();
        return basicBeanDescription;
    }
    
    public LinkedHashMap<String, AnnotatedField> _findPropertyFields(final Collection<String> collection, final boolean b) {
        final LinkedHashMap<String, AnnotatedField> linkedHashMap = new LinkedHashMap<String, AnnotatedField>();
        for (final BeanPropertyDefinition beanPropertyDefinition : this._properties) {
            final AnnotatedField field = beanPropertyDefinition.getField();
            if (field != null) {
                final String name = beanPropertyDefinition.getName();
                if (collection != null && collection.contains(name)) {
                    continue;
                }
                linkedHashMap.put(name, field);
            }
        }
        return linkedHashMap;
    }
    
    @Override
    public TypeBindings bindingsForBeanType() {
        if (this._bindings == null) {
            this._bindings = new TypeBindings(this._config.getTypeFactory(), this._type);
        }
        return this._bindings;
    }
    
    @Override
    public AnnotatedMethod findAnyGetter() throws IllegalArgumentException {
        if (this._anyGetterMethod != null && !Map.class.isAssignableFrom(this._anyGetterMethod.getRawType())) {
            throw new IllegalArgumentException("Invalid 'any-getter' annotation on method " + this._anyGetterMethod.getName() + "(): return type is not instance of java.util.Map");
        }
        return this._anyGetterMethod;
    }
    
    @Override
    public AnnotatedMethod findAnySetter() throws IllegalArgumentException {
        if (this._anySetterMethod != null) {
            final Class<?> parameterClass = this._anySetterMethod.getParameterClass(0);
            if (parameterClass != String.class && parameterClass != Object.class) {
                throw new IllegalArgumentException("Invalid 'any-setter' annotation on method " + this._anySetterMethod.getName() + "(): first argument not of type String or Object, but " + parameterClass.getName());
            }
        }
        return this._anySetterMethod;
    }
    
    public Map<String, AnnotatedMember> findBackReferenceProperties() {
        HashMap<String, AnnotatedMember> hashMap = null;
        final Iterator<BeanPropertyDefinition> iterator = this._properties.iterator();
        while (iterator.hasNext()) {
            final AnnotatedMember mutator = iterator.next().getMutator();
            if (mutator != null) {
                final AnnotationIntrospector.ReferenceProperty referenceType = this._annotationIntrospector.findReferenceType(mutator);
                if (referenceType == null || !referenceType.isBackReference()) {
                    continue;
                }
                if (hashMap == null) {
                    hashMap = new HashMap<String, AnnotatedMember>();
                }
                final String name = referenceType.getName();
                if (hashMap.put(name, mutator) != null) {
                    throw new IllegalArgumentException("Multiple back-reference properties with name '" + name + "'");
                }
                continue;
            }
        }
        return hashMap;
    }
    
    public List<String> findCreatorPropertyNames() {
        List<String> list = null;
        for (int i = 0; i < 2; ++i) {
            Object o;
            if (i == 0) {
                o = this.getConstructors();
            }
            else {
                o = this.getFactoryMethods();
            }
            for (final AnnotatedWithParams annotatedWithParams : o) {
                final int parameterCount = annotatedWithParams.getParameterCount();
                if (parameterCount >= 1) {
                    final String propertyNameForParam = this._annotationIntrospector.findPropertyNameForParam(annotatedWithParams.getParameter(0));
                    if (propertyNameForParam == null) {
                        continue;
                    }
                    if (list == null) {
                        list = new ArrayList<String>();
                    }
                    list.add(propertyNameForParam);
                    for (int j = 1; j < parameterCount; ++j) {
                        list.add(this._annotationIntrospector.findPropertyNameForParam(annotatedWithParams.getParameter(j)));
                    }
                }
            }
        }
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }
    
    @Override
    public AnnotatedConstructor findDefaultConstructor() {
        return this._classInfo.getDefaultConstructor();
    }
    
    @Override
    public LinkedHashMap<String, AnnotatedField> findDeserializableFields(final VisibilityChecker<?> visibilityChecker, final Collection<String> collection) {
        return this._findPropertyFields(collection, false);
    }
    
    public Method findFactoryMethod(final Class<?>... array) {
        for (final AnnotatedMethod annotatedMethod : this._classInfo.getStaticMethods()) {
            if (this.isFactoryMethod(annotatedMethod)) {
                final Class<?> parameterClass = annotatedMethod.getParameterClass(0);
                for (int length = array.length, i = 0; i < length; ++i) {
                    if (parameterClass.isAssignableFrom(array[i])) {
                        return annotatedMethod.getAnnotated();
                    }
                }
            }
        }
        return null;
    }
    
    @Override
    public LinkedHashMap<String, AnnotatedMethod> findGetters(final VisibilityChecker<?> visibilityChecker, final Collection<String> collection) {
        final LinkedHashMap<String, AnnotatedMethod> linkedHashMap = new LinkedHashMap<String, AnnotatedMethod>();
        for (final BeanPropertyDefinition beanPropertyDefinition : this._properties) {
            final AnnotatedMethod getter = beanPropertyDefinition.getGetter();
            if (getter != null) {
                final String name = beanPropertyDefinition.getName();
                if (collection != null && collection.contains(name)) {
                    continue;
                }
                linkedHashMap.put(name, getter);
            }
        }
        return linkedHashMap;
    }
    
    @Override
    public Map<Object, AnnotatedMember> findInjectables() {
        return this._injectables;
    }
    
    @Override
    public AnnotatedMethod findJsonValueMethod() {
        return this._jsonValueMethod;
    }
    
    public AnnotatedMethod findMethod(final String s, final Class<?>[] array) {
        return this._classInfo.findMethod(s, array);
    }
    
    @Override
    public List<BeanPropertyDefinition> findProperties() {
        return this._properties;
    }
    
    @Override
    public LinkedHashMap<String, AnnotatedField> findSerializableFields(final VisibilityChecker<?> visibilityChecker, final Collection<String> collection) {
        return this._findPropertyFields(collection, true);
    }
    
    public JsonSerialize.Inclusion findSerializationInclusion(final JsonSerialize.Inclusion inclusion) {
        if (this._annotationIntrospector == null) {
            return inclusion;
        }
        return this._annotationIntrospector.findSerializationInclusion(this._classInfo, inclusion);
    }
    
    @Override
    public LinkedHashMap<String, AnnotatedMethod> findSetters(final VisibilityChecker<?> visibilityChecker) {
        final LinkedHashMap<String, AnnotatedMethod> linkedHashMap = new LinkedHashMap<String, AnnotatedMethod>();
        for (final BeanPropertyDefinition beanPropertyDefinition : this._properties) {
            final AnnotatedMethod setter = beanPropertyDefinition.getSetter();
            if (setter != null) {
                linkedHashMap.put(beanPropertyDefinition.getName(), setter);
            }
        }
        return linkedHashMap;
    }
    
    public Constructor<?> findSingleArgConstructor(final Class<?>... array) {
        for (final AnnotatedConstructor annotatedConstructor : this._classInfo.getConstructors()) {
            if (annotatedConstructor.getParameterCount() == 1) {
                final Class<?> parameterClass = annotatedConstructor.getParameterClass(0);
                for (int length = array.length, i = 0; i < length; ++i) {
                    if (array[i] == parameterClass) {
                        return annotatedConstructor.getAnnotated();
                    }
                }
            }
        }
        return null;
    }
    
    @Override
    public Annotations getClassAnnotations() {
        return this._classInfo.getAnnotations();
    }
    
    @Override
    public AnnotatedClass getClassInfo() {
        return this._classInfo;
    }
    
    public List<AnnotatedConstructor> getConstructors() {
        return this._classInfo.getConstructors();
    }
    
    public List<AnnotatedMethod> getFactoryMethods() {
        final List<AnnotatedMethod> staticMethods = this._classInfo.getStaticMethods();
        if (staticMethods.isEmpty()) {
            return staticMethods;
        }
        final ArrayList<AnnotatedMethod> list = new ArrayList<AnnotatedMethod>();
        for (final AnnotatedMethod e : staticMethods) {
            if (this.isFactoryMethod(e)) {
                list.add(e);
            }
        }
        return list;
    }
    
    @Override
    public Set<String> getIgnoredPropertyNames() {
        if (this._ignoredPropertyNames == null) {
            return Collections.emptySet();
        }
        return this._ignoredPropertyNames;
    }
    
    public Set<String> getIgnoredPropertyNamesForDeser() {
        return this._ignoredPropertyNamesForDeser;
    }
    
    @Override
    public boolean hasKnownClassAnnotations() {
        return this._classInfo.hasAnnotations();
    }
    
    public Object instantiateBean(final boolean b) {
        final AnnotatedConstructor defaultConstructor = this._classInfo.getDefaultConstructor();
        if (defaultConstructor == null) {
            return null;
        }
        if (b) {
            defaultConstructor.fixAccess();
        }
        try {
            return defaultConstructor.getAnnotated().newInstance(new Object[0]);
        }
        catch (Exception ex) {
            Throwable cause;
            for (cause = ex; cause.getCause() != null; cause = cause.getCause()) {}
            if (cause instanceof Error) {
                throw (Error)cause;
            }
            if (cause instanceof RuntimeException) {
                throw (RuntimeException)cause;
            }
            throw new IllegalArgumentException("Failed to instantiate bean of type " + this._classInfo.getAnnotated().getName() + ": (" + ((Exception)cause).getClass().getName() + ") " + cause.getMessage(), cause);
        }
    }
    
    protected boolean isFactoryMethod(final AnnotatedMethod annotatedMethod) {
        return this.getBeanClass().isAssignableFrom(annotatedMethod.getRawType()) && (this._annotationIntrospector.hasCreatorAnnotation(annotatedMethod) || "valueOf".equals(annotatedMethod.getName()));
    }
    
    @Override
    public JavaType resolveType(final Type type) {
        if (type == null) {
            return null;
        }
        return this.bindingsForBeanType().resolveType(type);
    }
}
