package com.flurry.org.codehaus.jackson.map.deser.impl;

import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.util.*;

public class CreatorCollector
{
    final BasicBeanDescription _beanDesc;
    protected AnnotatedWithParams _booleanCreator;
    final boolean _canFixAccess;
    protected AnnotatedConstructor _defaultConstructor;
    protected AnnotatedWithParams _delegateCreator;
    protected AnnotatedWithParams _doubleCreator;
    protected AnnotatedWithParams _intCreator;
    protected AnnotatedWithParams _longCreator;
    protected CreatorProperty[] _propertyBasedArgs;
    protected AnnotatedWithParams _propertyBasedCreator;
    protected AnnotatedWithParams _stringCreator;
    
    public CreatorCollector(final BasicBeanDescription beanDesc, final boolean canFixAccess) {
        super();
        this._propertyBasedArgs = null;
        this._beanDesc = beanDesc;
        this._canFixAccess = canFixAccess;
    }
    
    public void addBooleanCreator(final AnnotatedWithParams annotatedWithParams) {
        this._booleanCreator = this.verifyNonDup(annotatedWithParams, this._booleanCreator, "boolean");
    }
    
    public void addDelegatingCreator(final AnnotatedWithParams annotatedWithParams) {
        this._delegateCreator = this.verifyNonDup(annotatedWithParams, this._delegateCreator, "delegate");
    }
    
    public void addDoubleCreator(final AnnotatedWithParams annotatedWithParams) {
        this._doubleCreator = this.verifyNonDup(annotatedWithParams, this._doubleCreator, "double");
    }
    
    public void addIntCreator(final AnnotatedWithParams annotatedWithParams) {
        this._intCreator = this.verifyNonDup(annotatedWithParams, this._intCreator, "int");
    }
    
    public void addLongCreator(final AnnotatedWithParams annotatedWithParams) {
        this._longCreator = this.verifyNonDup(annotatedWithParams, this._longCreator, "long");
    }
    
    public void addPropertyCreator(final AnnotatedWithParams annotatedWithParams, final CreatorProperty[] propertyBasedArgs) {
        this._propertyBasedCreator = this.verifyNonDup(annotatedWithParams, this._propertyBasedCreator, "property-based");
        if (propertyBasedArgs.length > 1) {
            final HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
            for (int i = 0; i < propertyBasedArgs.length; ++i) {
                final String name = propertyBasedArgs[i].getName();
                final Integer obj = hashMap.put(name, i);
                if (obj != null) {
                    throw new IllegalArgumentException("Duplicate creator property \"" + name + "\" (index " + obj + " vs " + i + ")");
                }
            }
        }
        this._propertyBasedArgs = propertyBasedArgs;
    }
    
    public void addStringCreator(final AnnotatedWithParams annotatedWithParams) {
        this._stringCreator = this.verifyNonDup(annotatedWithParams, this._stringCreator, "String");
    }
    
    public ValueInstantiator constructValueInstantiator(final DeserializationConfig deserializationConfig) {
        final StdValueInstantiator stdValueInstantiator = new StdValueInstantiator(deserializationConfig, this._beanDesc.getType());
        JavaType resolveType;
        if (this._delegateCreator == null) {
            resolveType = null;
        }
        else {
            resolveType = this._beanDesc.bindingsForBeanType().resolveType(this._delegateCreator.getParameterType(0));
        }
        stdValueInstantiator.configureFromObjectSettings(this._defaultConstructor, this._delegateCreator, resolveType, this._propertyBasedCreator, this._propertyBasedArgs);
        stdValueInstantiator.configureFromStringCreator(this._stringCreator);
        stdValueInstantiator.configureFromIntCreator(this._intCreator);
        stdValueInstantiator.configureFromLongCreator(this._longCreator);
        stdValueInstantiator.configureFromDoubleCreator(this._doubleCreator);
        stdValueInstantiator.configureFromBooleanCreator(this._booleanCreator);
        return stdValueInstantiator;
    }
    
    public void setDefaultConstructor(final AnnotatedConstructor defaultConstructor) {
        this._defaultConstructor = defaultConstructor;
    }
    
    protected AnnotatedWithParams verifyNonDup(final AnnotatedWithParams obj, final AnnotatedWithParams obj2, final String str) {
        if (obj2 != null && obj2.getClass() == obj.getClass()) {
            throw new IllegalArgumentException("Conflicting " + str + " creators: already had " + obj2 + ", encountered " + obj);
        }
        if (this._canFixAccess) {
            ClassUtil.checkAndFixAccess((Member)obj.getAnnotated());
        }
        return obj;
    }
}
