package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;

public class POJOPropertiesCollector
{
    protected final AnnotationIntrospector _annotationIntrospector;
    protected LinkedList<AnnotatedMethod> _anyGetters;
    protected LinkedList<AnnotatedMethod> _anySetters;
    protected final AnnotatedClass _classDef;
    protected final MapperConfig<?> _config;
    protected LinkedList<POJOPropertyBuilder> _creatorProperties;
    protected final boolean _forSerialization;
    protected Set<String> _ignoredPropertyNames;
    protected Set<String> _ignoredPropertyNamesForDeser;
    protected LinkedHashMap<Object, AnnotatedMember> _injectables;
    protected LinkedList<AnnotatedMethod> _jsonValueGetters;
    protected final LinkedHashMap<String, POJOPropertyBuilder> _properties;
    protected final JavaType _type;
    protected final VisibilityChecker<?> _visibilityChecker;
    
    protected POJOPropertiesCollector(final MapperConfig<?> config, final boolean forSerialization, final JavaType type, final AnnotatedClass classDef) {
        super();
        this._properties = new LinkedHashMap<String, POJOPropertyBuilder>();
        this._creatorProperties = null;
        this._anyGetters = null;
        this._anySetters = null;
        this._jsonValueGetters = null;
        this._config = config;
        this._forSerialization = forSerialization;
        this._type = type;
        this._classDef = classDef;
        AnnotationIntrospector annotationIntrospector;
        if (config.isAnnotationProcessingEnabled()) {
            annotationIntrospector = this._config.getAnnotationIntrospector();
        }
        else {
            annotationIntrospector = null;
        }
        this._annotationIntrospector = annotationIntrospector;
        if (this._annotationIntrospector == null) {
            this._visibilityChecker = this._config.getDefaultVisibilityChecker();
            return;
        }
        this._visibilityChecker = this._annotationIntrospector.findAutoDetectVisibility(classDef, this._config.getDefaultVisibilityChecker());
    }
    
    private void _addIgnored(final POJOPropertyBuilder pojoPropertyBuilder) {
        if (!this._forSerialization) {
            final String name = pojoPropertyBuilder.getName();
            this._ignoredPropertyNames = this.addToSet(this._ignoredPropertyNames, name);
            if (pojoPropertyBuilder.anyDeserializeIgnorals()) {
                this._ignoredPropertyNamesForDeser = this.addToSet(this._ignoredPropertyNamesForDeser, name);
            }
        }
    }
    
    private Set<String> addToSet(Set<String> set, final String s) {
        if (set == null) {
            set = new HashSet<String>();
        }
        set.add(s);
        return set;
    }
    
    protected void _addCreators() {
        final AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector != null) {
            for (final AnnotatedConstructor annotatedConstructor : this._classDef.getConstructors()) {
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList<POJOPropertyBuilder>();
                }
                for (int i = 0; i < annotatedConstructor.getParameterCount(); ++i) {
                    final AnnotatedParameter parameter = annotatedConstructor.getParameter(i);
                    final String propertyNameForParam = annotationIntrospector.findPropertyNameForParam(parameter);
                    if (propertyNameForParam != null) {
                        final POJOPropertyBuilder property = this._property(propertyNameForParam);
                        property.addCtor(parameter, propertyNameForParam, true, false);
                        this._creatorProperties.add(property);
                    }
                }
            }
            for (final AnnotatedMethod annotatedMethod : this._classDef.getStaticMethods()) {
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList<POJOPropertyBuilder>();
                }
                for (int j = 0; j < annotatedMethod.getParameterCount(); ++j) {
                    final AnnotatedParameter parameter2 = annotatedMethod.getParameter(j);
                    final String propertyNameForParam2 = annotationIntrospector.findPropertyNameForParam(parameter2);
                    if (propertyNameForParam2 != null) {
                        final POJOPropertyBuilder property2 = this._property(propertyNameForParam2);
                        property2.addCtor(parameter2, propertyNameForParam2, true, false);
                        this._creatorProperties.add(property2);
                    }
                }
            }
        }
    }
    
    protected void _addFields() {
        final AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        for (final AnnotatedField annotatedField : this._classDef.fields()) {
            final String name = annotatedField.getName();
            String anObject;
            if (annotationIntrospector == null) {
                anObject = null;
            }
            else if (this._forSerialization) {
                anObject = annotationIntrospector.findSerializablePropertyName(annotatedField);
            }
            else {
                anObject = annotationIntrospector.findDeserializablePropertyName(annotatedField);
            }
            if ("".equals(anObject)) {
                anObject = name;
            }
            boolean fieldVisible = anObject != null;
            if (!fieldVisible) {
                fieldVisible = this._visibilityChecker.isFieldVisible(annotatedField);
            }
            this._property(name).addField(annotatedField, anObject, fieldVisible, annotationIntrospector != null && annotationIntrospector.hasIgnoreMarker(annotatedField));
        }
    }
    
    protected void _addInjectables() {
        final AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector != null) {
            for (final AnnotatedField annotatedField : this._classDef.fields()) {
                this._doAddInjectable(annotationIntrospector.findInjectableValueId(annotatedField), annotatedField);
            }
            for (final AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
                if (annotatedMethod.getParameterCount() == 1) {
                    this._doAddInjectable(annotationIntrospector.findInjectableValueId(annotatedMethod), annotatedMethod);
                }
            }
        }
    }
    
    protected void _addMethods() {
        final AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        for (final AnnotatedMethod e : this._classDef.memberMethods()) {
            final int parameterCount = e.getParameterCount();
            if (parameterCount == 0) {
                if (annotationIntrospector != null) {
                    if (annotationIntrospector.hasAnyGetterAnnotation(e)) {
                        if (this._anyGetters == null) {
                            this._anyGetters = new LinkedList<AnnotatedMethod>();
                        }
                        this._anyGetters.add(e);
                        continue;
                    }
                    if (annotationIntrospector.hasAsValueAnnotation(e)) {
                        if (this._jsonValueGetters == null) {
                            this._jsonValueGetters = new LinkedList<AnnotatedMethod>();
                        }
                        this._jsonValueGetters.add(e);
                        continue;
                    }
                }
                String gettablePropertyName;
                if (annotationIntrospector == null) {
                    gettablePropertyName = null;
                }
                else {
                    gettablePropertyName = annotationIntrospector.findGettablePropertyName(e);
                }
                String s;
                boolean b;
                if (gettablePropertyName == null) {
                    s = BeanUtil.okNameForRegularGetter(e, e.getName());
                    if (s == null) {
                        s = BeanUtil.okNameForIsGetter(e, e.getName());
                        if (s == null) {
                            continue;
                        }
                        b = this._visibilityChecker.isIsGetterVisible(e);
                    }
                    else {
                        b = this._visibilityChecker.isGetterVisible(e);
                    }
                }
                else {
                    s = BeanUtil.okNameForGetter(e);
                    if (s == null) {
                        s = e.getName();
                    }
                    if (gettablePropertyName.length() == 0) {
                        gettablePropertyName = s;
                    }
                    b = true;
                }
                this._property(s).addGetter(e, gettablePropertyName, b, annotationIntrospector != null && annotationIntrospector.hasIgnoreMarker(e));
            }
            else if (parameterCount == 1) {
                String settablePropertyName;
                if (annotationIntrospector == null) {
                    settablePropertyName = null;
                }
                else {
                    settablePropertyName = annotationIntrospector.findSettablePropertyName(e);
                }
                String s2;
                boolean setterVisible;
                if (settablePropertyName == null) {
                    s2 = BeanUtil.okNameForSetter(e);
                    if (s2 == null) {
                        continue;
                    }
                    setterVisible = this._visibilityChecker.isSetterVisible(e);
                }
                else {
                    s2 = BeanUtil.okNameForSetter(e);
                    if (s2 == null) {
                        s2 = e.getName();
                    }
                    if (settablePropertyName.length() == 0) {
                        settablePropertyName = s2;
                    }
                    setterVisible = true;
                }
                this._property(s2).addSetter(e, settablePropertyName, setterVisible, annotationIntrospector != null && annotationIntrospector.hasIgnoreMarker(e));
            }
            else {
                if (parameterCount != 2 || annotationIntrospector == null || !annotationIntrospector.hasAnySetterAnnotation(e)) {
                    continue;
                }
                if (this._anySetters == null) {
                    this._anySetters = new LinkedList<AnnotatedMethod>();
                }
                this._anySetters.add(e);
            }
        }
    }
    
    protected void _doAddInjectable(final Object o, final AnnotatedMember value) {
        if (o != null) {
            if (this._injectables == null) {
                this._injectables = new LinkedHashMap<Object, AnnotatedMember>();
            }
            if (this._injectables.put(o, value) != null) {
                String name;
                if (o == null) {
                    name = "[null]";
                }
                else {
                    name = o.getClass().getName();
                }
                throw new IllegalArgumentException("Duplicate injectable value with id '" + String.valueOf(o) + "' (of type " + name + ")");
            }
        }
    }
    
    protected POJOPropertyBuilder _property(final String s) {
        POJOPropertyBuilder value = this._properties.get(s);
        if (value == null) {
            value = new POJOPropertyBuilder(s);
            this._properties.put(s, value);
        }
        return value;
    }
    
    protected void _removeUnwantedProperties() {
        final Iterator<Map.Entry<Object, Object>> iterator = this._properties.entrySet().iterator();
        while (iterator.hasNext()) {
            final POJOPropertyBuilder pojoPropertyBuilder = iterator.next().getValue();
            if (!pojoPropertyBuilder.anyVisible()) {
                iterator.remove();
            }
            else {
                if (pojoPropertyBuilder.anyIgnorals()) {
                    this._addIgnored(pojoPropertyBuilder);
                    if (!pojoPropertyBuilder.anyExplicitNames()) {
                        iterator.remove();
                        continue;
                    }
                    pojoPropertyBuilder.removeIgnored();
                }
                pojoPropertyBuilder.removeNonVisible();
            }
        }
    }
    
    protected void _renameProperties() {
        final Iterator<Map.Entry<Object, Object>> iterator = this._properties.entrySet().iterator();
        AbstractSequentialList<POJOPropertyBuilder> list = null;
        while (iterator.hasNext()) {
            final POJOPropertyBuilder pojoPropertyBuilder = iterator.next().getValue();
            final String newName = pojoPropertyBuilder.findNewName();
            if (newName != null) {
                if (list == null) {
                    list = new LinkedList<POJOPropertyBuilder>();
                }
                ((LinkedList<POJOPropertyBuilder>)list).add(pojoPropertyBuilder.withName(newName));
                iterator.remove();
            }
        }
        if (list != null) {
            for (final POJOPropertyBuilder value : list) {
                final String name = value.getName();
                final POJOPropertyBuilder pojoPropertyBuilder2 = this._properties.get(name);
                if (pojoPropertyBuilder2 == null) {
                    this._properties.put(name, value);
                }
                else {
                    pojoPropertyBuilder2.addAll(value);
                }
            }
        }
    }
    
    protected void _renameUsing(final PropertyNamingStrategy propertyNamingStrategy) {
        final POJOPropertyBuilder[] array = this._properties.values().toArray(new POJOPropertyBuilder[this._properties.size()]);
        this._properties.clear();
        for (POJOPropertyBuilder withName : array) {
            String s = withName.getName();
            if (this._forSerialization) {
                if (withName.hasGetter()) {
                    s = propertyNamingStrategy.nameForGetterMethod(this._config, withName.getGetter(), s);
                }
                else if (withName.hasField()) {
                    s = propertyNamingStrategy.nameForField(this._config, withName.getField(), s);
                }
            }
            else if (withName.hasSetter()) {
                s = propertyNamingStrategy.nameForSetterMethod(this._config, withName.getSetter(), s);
            }
            else if (withName.hasConstructorParameter()) {
                s = propertyNamingStrategy.nameForConstructorParameter(this._config, withName.getConstructorParameter(), s);
            }
            else if (withName.hasField()) {
                s = propertyNamingStrategy.nameForField(this._config, withName.getField(), s);
            }
            else if (withName.hasGetter()) {
                s = propertyNamingStrategy.nameForGetterMethod(this._config, withName.getGetter(), s);
            }
            if (!s.equals(withName.getName())) {
                withName = withName.withName(s);
            }
            final POJOPropertyBuilder pojoPropertyBuilder = this._properties.get(s);
            if (pojoPropertyBuilder == null) {
                this._properties.put(s, withName);
            }
            else {
                pojoPropertyBuilder.addAll(withName);
            }
        }
    }
    
    protected void _sortProperties() {
        final AnnotationIntrospector annotationIntrospector = this._config.getAnnotationIntrospector();
        final Boolean serializationSortAlphabetically = annotationIntrospector.findSerializationSortAlphabetically(this._classDef);
        boolean b;
        if (serializationSortAlphabetically == null) {
            b = this._config.shouldSortPropertiesAlphabetically();
        }
        else {
            b = serializationSortAlphabetically;
        }
        final String[] serializationPropertyOrder = annotationIntrospector.findSerializationPropertyOrder(this._classDef);
        if (!b && this._creatorProperties == null && serializationPropertyOrder == null) {
            return;
        }
        final int size = this._properties.size();
        Cloneable cloneable;
        if (b) {
            cloneable = new TreeMap<Object, Object>();
        }
        else {
            cloneable = new LinkedHashMap<Object, Object>(size + size);
        }
        for (final POJOPropertyBuilder pojoPropertyBuilder : this._properties.values()) {
            ((Map<String, POJOPropertyBuilder>)cloneable).put(pojoPropertyBuilder.getName(), pojoPropertyBuilder);
        }
        final LinkedHashMap m = new LinkedHashMap<String, POJOPropertyBuilder>(size + size);
        if (serializationPropertyOrder != null) {
            for (String name : serializationPropertyOrder) {
                POJOPropertyBuilder pojoPropertyBuilder2 = ((Map<String, POJOPropertyBuilder>)cloneable).get(name);
                if (pojoPropertyBuilder2 == null) {
                    for (final POJOPropertyBuilder pojoPropertyBuilder3 : this._properties.values()) {
                        if (name.equals(pojoPropertyBuilder3.getInternalName())) {
                            pojoPropertyBuilder2 = pojoPropertyBuilder3;
                            name = pojoPropertyBuilder3.getName();
                            break;
                        }
                    }
                }
                if (pojoPropertyBuilder2 != null) {
                    m.put(name, pojoPropertyBuilder2);
                }
            }
        }
        if (this._creatorProperties != null) {
            for (final POJOPropertyBuilder pojoPropertyBuilder4 : this._creatorProperties) {
                m.put(pojoPropertyBuilder4.getName(), pojoPropertyBuilder4);
            }
        }
        m.putAll((Map<?, ?>)cloneable);
        this._properties.clear();
        this._properties.putAll((Map<?, ?>)m);
    }
    
    public POJOPropertiesCollector collect() {
        this._properties.clear();
        this._addFields();
        this._addMethods();
        this._addCreators();
        this._addInjectables();
        this._removeUnwantedProperties();
        this._renameProperties();
        final PropertyNamingStrategy propertyNamingStrategy = this._config.getPropertyNamingStrategy();
        if (propertyNamingStrategy != null) {
            this._renameUsing(propertyNamingStrategy);
        }
        final Iterator<POJOPropertyBuilder> iterator = this._properties.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().trimByVisibility();
        }
        final Iterator<POJOPropertyBuilder> iterator2 = this._properties.values().iterator();
        while (iterator2.hasNext()) {
            iterator2.next().mergeAnnotations(this._forSerialization);
        }
        this._sortProperties();
        return this;
    }
    
    public AnnotationIntrospector getAnnotationIntrospector() {
        return this._annotationIntrospector;
    }
    
    public AnnotatedMethod getAnyGetterMethod() {
        if (this._anyGetters != null) {
            if (this._anyGetters.size() > 1) {
                this.reportProblem("Multiple 'any-getters' defined (" + this._anyGetters.get(0) + " vs " + this._anyGetters.get(1) + ")");
            }
            return this._anyGetters.getFirst();
        }
        return null;
    }
    
    public AnnotatedMethod getAnySetterMethod() {
        if (this._anySetters != null) {
            if (this._anySetters.size() > 1) {
                this.reportProblem("Multiple 'any-setters' defined (" + this._anySetters.get(0) + " vs " + this._anySetters.get(1) + ")");
            }
            return this._anySetters.getFirst();
        }
        return null;
    }
    
    public AnnotatedClass getClassDef() {
        return this._classDef;
    }
    
    public MapperConfig<?> getConfig() {
        return this._config;
    }
    
    public Set<String> getIgnoredPropertyNames() {
        return this._ignoredPropertyNames;
    }
    
    public Set<String> getIgnoredPropertyNamesForDeser() {
        return this._ignoredPropertyNamesForDeser;
    }
    
    public Map<Object, AnnotatedMember> getInjectables() {
        return this._injectables;
    }
    
    public AnnotatedMethod getJsonValueMethod() {
        if (this._jsonValueGetters != null) {
            if (this._jsonValueGetters.size() > 1) {
                this.reportProblem("Multiple value properties defined (" + this._jsonValueGetters.get(0) + " vs " + this._jsonValueGetters.get(1) + ")");
            }
            return this._jsonValueGetters.get(0);
        }
        return null;
    }
    
    public List<BeanPropertyDefinition> getProperties() {
        return new ArrayList<BeanPropertyDefinition>(this._properties.values());
    }
    
    protected Map<String, POJOPropertyBuilder> getPropertyMap() {
        return this._properties;
    }
    
    public JavaType getType() {
        return this._type;
    }
    
    protected void reportProblem(final String str) {
        throw new IllegalArgumentException("Problem with definition of " + this._classDef + ": " + str);
    }
}
