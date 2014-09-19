package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.*;
import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.lang.reflect.*;
import java.util.*;

public final class AnnotatedClass extends Annotated
{
    private static final AnnotationMap[] NO_ANNOTATION_MAPS;
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final Class<?> _class;
    protected AnnotationMap _classAnnotations;
    protected List<AnnotatedConstructor> _constructors;
    protected List<AnnotatedMethod> _creatorMethods;
    protected AnnotatedConstructor _defaultConstructor;
    protected List<AnnotatedField> _fields;
    protected AnnotatedMethodMap _memberMethods;
    protected final ClassIntrospector.MixInResolver _mixInResolver;
    protected final Class<?> _primaryMixIn;
    protected final List<Class<?>> _superTypes;
    
    static {
        NO_ANNOTATION_MAPS = new AnnotationMap[0];
    }
    
    private AnnotatedClass(final Class<?> class1, final List<Class<?>> superTypes, final AnnotationIntrospector annotationIntrospector, final ClassIntrospector.MixInResolver mixInResolver, final AnnotationMap classAnnotations) {
        super();
        this._class = class1;
        this._superTypes = superTypes;
        this._annotationIntrospector = annotationIntrospector;
        this._mixInResolver = mixInResolver;
        Class<?> mixInClass;
        if (this._mixInResolver == null) {
            mixInClass = null;
        }
        else {
            mixInClass = this._mixInResolver.findMixInClassFor(this._class);
        }
        this._primaryMixIn = mixInClass;
        this._classAnnotations = classAnnotations;
    }
    
    private AnnotationMap _emptyAnnotationMap() {
        return new AnnotationMap();
    }
    
    private AnnotationMap[] _emptyAnnotationMaps(final int n) {
        if (n == 0) {
            return AnnotatedClass.NO_ANNOTATION_MAPS;
        }
        final AnnotationMap[] array = new AnnotationMap[n];
        for (int i = 0; i < n; ++i) {
            array[i] = this._emptyAnnotationMap();
        }
        return array;
    }
    
    private boolean _isIncludableField(final Field field) {
        if (field.isSynthetic()) {
            return false;
        }
        final int modifiers = field.getModifiers();
        return !Modifier.isStatic(modifiers) && !Modifier.isTransient(modifiers);
    }
    
    public static AnnotatedClass construct(final Class<?> clazz, final AnnotationIntrospector annotationIntrospector, final ClassIntrospector.MixInResolver mixInResolver) {
        final AnnotatedClass annotatedClass = new AnnotatedClass(clazz, ClassUtil.findSuperTypes(clazz, null), annotationIntrospector, mixInResolver, null);
        annotatedClass.resolveClassAnnotations();
        return annotatedClass;
    }
    
    public static AnnotatedClass constructWithoutSuperTypes(final Class<?> clazz, final AnnotationIntrospector annotationIntrospector, final ClassIntrospector.MixInResolver mixInResolver) {
        final AnnotatedClass annotatedClass = new AnnotatedClass(clazz, Collections.emptyList(), annotationIntrospector, mixInResolver, null);
        annotatedClass.resolveClassAnnotations();
        return annotatedClass;
    }
    
    protected void _addClassMixIns(final AnnotationMap annotationMap, final Class<?> clazz) {
        if (this._mixInResolver != null) {
            this._addClassMixIns(annotationMap, clazz, this._mixInResolver.findMixInClassFor(clazz));
        }
    }
    
    protected void _addClassMixIns(final AnnotationMap annotationMap, final Class<?> clazz, final Class<?> clazz2) {
        if (clazz2 != null) {
            for (final Annotation annotation : clazz2.getDeclaredAnnotations()) {
                if (this._annotationIntrospector.isHandled(annotation)) {
                    annotationMap.addIfNotPresent(annotation);
                }
            }
            final Iterator<Class<?>> iterator = ClassUtil.findSuperTypes(clazz2, clazz).iterator();
            while (iterator.hasNext()) {
                for (final Annotation annotation2 : iterator.next().getDeclaredAnnotations()) {
                    if (this._annotationIntrospector.isHandled(annotation2)) {
                        annotationMap.addIfNotPresent(annotation2);
                    }
                }
            }
        }
    }
    
    protected void _addConstructorMixIns(final Class<?> clazz) {
        MemberKey[] array = null;
        int size;
        if (this._constructors == null) {
            size = 0;
        }
        else {
            size = this._constructors.size();
        }
        for (final Constructor constructor : clazz.getDeclaredConstructors()) {
            if (constructor.getParameterTypes().length == 0) {
                if (this._defaultConstructor != null) {
                    this._addMixOvers(constructor, this._defaultConstructor, false);
                }
            }
            else {
                if (array == null) {
                    array = new MemberKey[size];
                    for (int j = 0; j < size; ++j) {
                        array[j] = new MemberKey(this._constructors.get(j).getAnnotated());
                    }
                }
                final MemberKey memberKey = new MemberKey(constructor);
                for (int k = 0; k < size; ++k) {
                    if (memberKey.equals(array[k])) {
                        this._addMixOvers(constructor, this._constructors.get(k), true);
                        break;
                    }
                }
            }
        }
    }
    
    protected void _addFactoryMixIns(final Class<?> clazz) {
        MemberKey[] array = null;
        final int size = this._creatorMethods.size();
        for (final Method method : clazz.getDeclaredMethods()) {
            if (Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length != 0) {
                if (array == null) {
                    array = new MemberKey[size];
                    for (int j = 0; j < size; ++j) {
                        array[j] = new MemberKey(this._creatorMethods.get(j).getAnnotated());
                    }
                }
                final MemberKey memberKey = new MemberKey(method);
                for (int k = 0; k < size; ++k) {
                    if (memberKey.equals(array[k])) {
                        this._addMixOvers(method, this._creatorMethods.get(k), true);
                        break;
                    }
                }
            }
        }
    }
    
    protected void _addFieldMixIns(final Class<?> clazz, final Map<String, AnnotatedField> map) {
        for (final Field field : clazz.getDeclaredFields()) {
            if (this._isIncludableField(field)) {
                final AnnotatedField annotatedField = map.get(field.getName());
                if (annotatedField != null) {
                    for (final Annotation annotation : field.getDeclaredAnnotations()) {
                        if (this._annotationIntrospector.isHandled(annotation)) {
                            annotatedField.addOrOverride(annotation);
                        }
                    }
                }
            }
        }
    }
    
    protected void _addFields(final Map<String, AnnotatedField> map, final Class<?> clazz) {
        final Class<?> superclass = clazz.getSuperclass();
        if (superclass != null) {
            this._addFields(map, superclass);
            for (final Field field : clazz.getDeclaredFields()) {
                if (this._isIncludableField(field)) {
                    map.put(field.getName(), this._constructField(field));
                }
            }
            if (this._mixInResolver != null) {
                final Class<?> mixInClass = this._mixInResolver.findMixInClassFor(clazz);
                if (mixInClass != null) {
                    this._addFieldMixIns(mixInClass, map);
                }
            }
        }
    }
    
    protected void _addMemberMethods(final Class<?> clazz, final MethodFilter methodFilter, final AnnotatedMethodMap annotatedMethodMap, final Class<?> clazz2, final AnnotatedMethodMap annotatedMethodMap2) {
        if (clazz2 != null) {
            this._addMethodMixIns(methodFilter, annotatedMethodMap, clazz2, annotatedMethodMap2);
        }
        if (clazz != null) {
            for (final Method method : clazz.getDeclaredMethods()) {
                if (this._isIncludableMethod(method, methodFilter)) {
                    final AnnotatedMethod find = annotatedMethodMap.find(method);
                    if (find == null) {
                        final AnnotatedMethod constructMethod = this._constructMethod(method);
                        annotatedMethodMap.add(constructMethod);
                        final AnnotatedMethod remove = annotatedMethodMap2.remove(method);
                        if (remove != null) {
                            this._addMixOvers(remove.getAnnotated(), constructMethod, false);
                        }
                    }
                    else {
                        this._addMixUnders(method, find);
                        if (find.getDeclaringClass().isInterface() && !method.getDeclaringClass().isInterface()) {
                            annotatedMethodMap.add(find.withMethod(method));
                        }
                    }
                }
            }
        }
    }
    
    protected void _addMethodMixIns(final MethodFilter methodFilter, final AnnotatedMethodMap annotatedMethodMap, final Class<?> clazz, final AnnotatedMethodMap annotatedMethodMap2) {
        for (final Method method : clazz.getDeclaredMethods()) {
            if (this._isIncludableMethod(method, methodFilter)) {
                final AnnotatedMethod find = annotatedMethodMap.find(method);
                if (find != null) {
                    this._addMixUnders(method, find);
                }
                else {
                    annotatedMethodMap2.add(this._constructMethod(method));
                }
            }
        }
    }
    
    protected void _addMixOvers(final Constructor<?> constructor, final AnnotatedConstructor annotatedConstructor, final boolean b) {
        for (final Annotation annotation : constructor.getDeclaredAnnotations()) {
            if (this._annotationIntrospector.isHandled(annotation)) {
                annotatedConstructor.addOrOverride(annotation);
            }
        }
        if (b) {
            final Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
            for (int j = 0; j < parameterAnnotations.length; ++j) {
                final Annotation[] array = parameterAnnotations[j];
                for (int length2 = array.length, k = 0; k < length2; ++k) {
                    annotatedConstructor.addOrOverrideParam(j, array[k]);
                }
            }
        }
    }
    
    protected void _addMixOvers(final Method method, final AnnotatedMethod annotatedMethod, final boolean b) {
        for (final Annotation annotation : method.getDeclaredAnnotations()) {
            if (this._annotationIntrospector.isHandled(annotation)) {
                annotatedMethod.addOrOverride(annotation);
            }
        }
        if (b) {
            final Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            for (int j = 0; j < parameterAnnotations.length; ++j) {
                final Annotation[] array = parameterAnnotations[j];
                for (int length2 = array.length, k = 0; k < length2; ++k) {
                    annotatedMethod.addOrOverrideParam(j, array[k]);
                }
            }
        }
    }
    
    protected void _addMixUnders(final Method method, final AnnotatedMethod annotatedMethod) {
        for (final Annotation annotation : method.getDeclaredAnnotations()) {
            if (this._annotationIntrospector.isHandled(annotation)) {
                annotatedMethod.addIfNotPresent(annotation);
            }
        }
    }
    
    protected AnnotationMap _collectRelevantAnnotations(final Annotation[] array) {
        final AnnotationMap annotationMap = new AnnotationMap();
        if (array != null) {
            for (final Annotation annotation : array) {
                if (this._annotationIntrospector.isHandled(annotation)) {
                    annotationMap.add(annotation);
                }
            }
        }
        return annotationMap;
    }
    
    protected AnnotationMap[] _collectRelevantAnnotations(final Annotation[][] array) {
        final int length = array.length;
        final AnnotationMap[] array2 = new AnnotationMap[length];
        for (int i = 0; i < length; ++i) {
            array2[i] = this._collectRelevantAnnotations(array[i]);
        }
        return array2;
    }
    
    protected AnnotatedConstructor _constructConstructor(final Constructor<?> constructor, final boolean b) {
        if (this._annotationIntrospector == null) {
            return new AnnotatedConstructor(constructor, this._emptyAnnotationMap(), this._emptyAnnotationMaps(constructor.getParameterTypes().length));
        }
        if (b) {
            return new AnnotatedConstructor(constructor, this._collectRelevantAnnotations(constructor.getDeclaredAnnotations()), null);
        }
        Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
        final int length = constructor.getParameterTypes().length;
        AnnotationMap[] array2;
        if (length != parameterAnnotations.length) {
            final Class<?> declaringClass = constructor.getDeclaringClass();
            if (declaringClass.isEnum() && length == 2 + parameterAnnotations.length) {
                final Annotation[][] array = parameterAnnotations;
                parameterAnnotations = new Annotation[2 + array.length][];
                System.arraycopy(array, 0, parameterAnnotations, 2, array.length);
                array2 = this._collectRelevantAnnotations(parameterAnnotations);
            }
            else {
                final boolean memberClass = declaringClass.isMemberClass();
                array2 = null;
                if (memberClass) {
                    final int n = 1 + parameterAnnotations.length;
                    array2 = null;
                    if (length == n) {
                        final Annotation[][] array3 = parameterAnnotations;
                        parameterAnnotations = new Annotation[1 + array3.length][];
                        System.arraycopy(array3, 0, parameterAnnotations, 1, array3.length);
                        array2 = this._collectRelevantAnnotations(parameterAnnotations);
                    }
                }
            }
            if (array2 == null) {
                throw new IllegalStateException("Internal error: constructor for " + constructor.getDeclaringClass().getName() + " has mismatch: " + length + " parameters; " + parameterAnnotations.length + " sets of annotations");
            }
        }
        else {
            array2 = this._collectRelevantAnnotations(parameterAnnotations);
        }
        return new AnnotatedConstructor(constructor, this._collectRelevantAnnotations(constructor.getDeclaredAnnotations()), array2);
    }
    
    protected AnnotatedMethod _constructCreatorMethod(final Method method) {
        if (this._annotationIntrospector == null) {
            return new AnnotatedMethod(method, this._emptyAnnotationMap(), this._emptyAnnotationMaps(method.getParameterTypes().length));
        }
        return new AnnotatedMethod(method, this._collectRelevantAnnotations(method.getDeclaredAnnotations()), this._collectRelevantAnnotations(method.getParameterAnnotations()));
    }
    
    protected AnnotatedField _constructField(final Field field) {
        if (this._annotationIntrospector == null) {
            return new AnnotatedField(field, this._emptyAnnotationMap());
        }
        return new AnnotatedField(field, this._collectRelevantAnnotations(field.getDeclaredAnnotations()));
    }
    
    protected AnnotatedMethod _constructMethod(final Method method) {
        if (this._annotationIntrospector == null) {
            return new AnnotatedMethod(method, this._emptyAnnotationMap(), null);
        }
        return new AnnotatedMethod(method, this._collectRelevantAnnotations(method.getDeclaredAnnotations()), null);
    }
    
    protected boolean _isIncludableMethod(final Method method, final MethodFilter methodFilter) {
        return (methodFilter == null || methodFilter.includeMethod(method)) && !method.isSynthetic() && !method.isBridge();
    }
    
    public Iterable<AnnotatedField> fields() {
        if (this._fields == null) {
            return (Iterable<AnnotatedField>)Collections.emptyList();
        }
        return this._fields;
    }
    
    public AnnotatedMethod findMethod(final String s, final Class<?>[] array) {
        return this._memberMethods.find(s, array);
    }
    
    @Override
    protected AnnotationMap getAllAnnotations() {
        return this._classAnnotations;
    }
    
    @Override
    public Class<?> getAnnotated() {
        return this._class;
    }
    
    @Override
    public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
        if (this._classAnnotations == null) {
            return null;
        }
        return this._classAnnotations.get(clazz);
    }
    
    public Annotations getAnnotations() {
        return this._classAnnotations;
    }
    
    public List<AnnotatedConstructor> getConstructors() {
        if (this._constructors == null) {
            return Collections.emptyList();
        }
        return this._constructors;
    }
    
    public AnnotatedConstructor getDefaultConstructor() {
        return this._defaultConstructor;
    }
    
    public int getFieldCount() {
        if (this._fields == null) {
            return 0;
        }
        return this._fields.size();
    }
    
    @Override
    public Type getGenericType() {
        return this._class;
    }
    
    public int getMemberMethodCount() {
        return this._memberMethods.size();
    }
    
    public int getModifiers() {
        return this._class.getModifiers();
    }
    
    @Override
    public String getName() {
        return this._class.getName();
    }
    
    @Override
    public Class<?> getRawType() {
        return this._class;
    }
    
    public List<AnnotatedMethod> getStaticMethods() {
        if (this._creatorMethods == null) {
            return Collections.emptyList();
        }
        return this._creatorMethods;
    }
    
    public boolean hasAnnotations() {
        return this._classAnnotations.size() > 0;
    }
    
    public Iterable<AnnotatedMethod> memberMethods() {
        return this._memberMethods;
    }
    
    public void resolveClassAnnotations() {
        this._classAnnotations = new AnnotationMap();
        if (this._annotationIntrospector == null) {
            return;
        }
        if (this._primaryMixIn != null) {
            this._addClassMixIns(this._classAnnotations, this._class, this._primaryMixIn);
        }
        for (final Annotation annotation : this._class.getDeclaredAnnotations()) {
            if (this._annotationIntrospector.isHandled(annotation)) {
                this._classAnnotations.addIfNotPresent(annotation);
            }
        }
        for (final Class<?> clazz : this._superTypes) {
            this._addClassMixIns(this._classAnnotations, clazz);
            for (final Annotation annotation2 : clazz.getDeclaredAnnotations()) {
                if (this._annotationIntrospector.isHandled(annotation2)) {
                    this._classAnnotations.addIfNotPresent(annotation2);
                }
            }
        }
        this._addClassMixIns(this._classAnnotations, Object.class);
    }
    
    public void resolveCreators(final boolean b) {
        this._constructors = null;
        for (final Constructor<?> constructor : this._class.getDeclaredConstructors()) {
            if (constructor.getParameterTypes().length == 0) {
                this._defaultConstructor = this._constructConstructor(constructor, true);
            }
            else if (b) {
                if (this._constructors == null) {
                    final Constructor<?>[] declaredConstructors;
                    this._constructors = new ArrayList<AnnotatedConstructor>(Math.max(10, declaredConstructors.length));
                }
                this._constructors.add(this._constructConstructor(constructor, false));
            }
        }
        if (this._primaryMixIn != null && (this._defaultConstructor != null || this._constructors != null)) {
            this._addConstructorMixIns(this._primaryMixIn);
        }
        if (this._annotationIntrospector != null) {
            if (this._defaultConstructor != null && this._annotationIntrospector.isIgnorableConstructor(this._defaultConstructor)) {
                this._defaultConstructor = null;
            }
            if (this._constructors != null) {
                int size = this._constructors.size();
                while (--size >= 0) {
                    if (this._annotationIntrospector.isIgnorableConstructor(this._constructors.get(size))) {
                        this._constructors.remove(size);
                    }
                }
            }
        }
        this._creatorMethods = null;
        if (b) {
            for (final Method method : this._class.getDeclaredMethods()) {
                if (Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length >= 1) {
                    if (this._creatorMethods == null) {
                        this._creatorMethods = new ArrayList<AnnotatedMethod>(8);
                    }
                    this._creatorMethods.add(this._constructCreatorMethod(method));
                }
            }
            if (this._primaryMixIn != null && this._creatorMethods != null) {
                this._addFactoryMixIns(this._primaryMixIn);
            }
            if (this._annotationIntrospector != null && this._creatorMethods != null) {
                int size2 = this._creatorMethods.size();
                while (--size2 >= 0) {
                    if (this._annotationIntrospector.isIgnorableMethod(this._creatorMethods.get(size2))) {
                        this._creatorMethods.remove(size2);
                    }
                }
            }
        }
    }
    
    public void resolveFields() {
        final LinkedHashMap<String, AnnotatedField> linkedHashMap = new LinkedHashMap<String, AnnotatedField>();
        this._addFields(linkedHashMap, this._class);
        if (linkedHashMap.isEmpty()) {
            this._fields = Collections.emptyList();
            return;
        }
        (this._fields = new ArrayList<AnnotatedField>(linkedHashMap.size())).addAll(linkedHashMap.values());
    }
    
    @Deprecated
    public void resolveFields(final boolean b) {
        this.resolveFields();
    }
    
    public void resolveMemberMethods(final MethodFilter methodFilter) {
        this._memberMethods = new AnnotatedMethodMap();
        final AnnotatedMethodMap annotatedMethodMap = new AnnotatedMethodMap();
        this._addMemberMethods(this._class, methodFilter, this._memberMethods, this._primaryMixIn, annotatedMethodMap);
        for (final Class<?> clazz : this._superTypes) {
            Class<?> mixInClass;
            if (this._mixInResolver == null) {
                mixInClass = null;
            }
            else {
                mixInClass = this._mixInResolver.findMixInClassFor(clazz);
            }
            this._addMemberMethods(clazz, methodFilter, this._memberMethods, mixInClass, annotatedMethodMap);
        }
        if (this._mixInResolver != null) {
            final Class<?> mixInClass2 = this._mixInResolver.findMixInClassFor(Object.class);
            if (mixInClass2 != null) {
                this._addMethodMixIns(methodFilter, this._memberMethods, mixInClass2, annotatedMethodMap);
            }
        }
        if (this._annotationIntrospector != null && !annotatedMethodMap.isEmpty()) {
            for (final AnnotatedMethod annotatedMethod : annotatedMethodMap) {
                try {
                    final Method declaredMethod = Object.class.getDeclaredMethod(annotatedMethod.getName(), annotatedMethod.getParameterClasses());
                    if (declaredMethod == null) {
                        continue;
                    }
                    final AnnotatedMethod constructMethod = this._constructMethod(declaredMethod);
                    this._addMixOvers(annotatedMethod.getAnnotated(), constructMethod, false);
                    this._memberMethods.add(constructMethod);
                }
                catch (Exception ex) {}
            }
        }
    }
    
    @Deprecated
    public void resolveMemberMethods(final MethodFilter methodFilter, final boolean b) {
        this.resolveMemberMethods(methodFilter);
    }
    
    @Override
    public String toString() {
        return "[AnnotedClass " + this._class.getName() + "]";
    }
    
    @Override
    public AnnotatedClass withAnnotations(final AnnotationMap annotationMap) {
        return new AnnotatedClass(this._class, this._superTypes, this._annotationIntrospector, this._mixInResolver, annotationMap);
    }
}
