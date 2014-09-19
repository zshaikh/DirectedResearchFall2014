package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.deser.impl.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.deser.*;

public class StdValueInstantiator extends ValueInstantiator
{
    protected final boolean _cfgEmptyStringsAsObjects;
    protected CreatorProperty[] _constructorArguments;
    protected AnnotatedWithParams _defaultCreator;
    protected AnnotatedWithParams _delegateCreator;
    protected JavaType _delegateType;
    protected AnnotatedWithParams _fromBooleanCreator;
    protected AnnotatedWithParams _fromDoubleCreator;
    protected AnnotatedWithParams _fromIntCreator;
    protected AnnotatedWithParams _fromLongCreator;
    protected AnnotatedWithParams _fromStringCreator;
    protected final String _valueTypeDesc;
    protected AnnotatedWithParams _withArgsCreator;
    
    public StdValueInstantiator(final DeserializationConfig deserializationConfig, final JavaType javaType) {
        super();
        this._cfgEmptyStringsAsObjects = (deserializationConfig != null && deserializationConfig.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT));
        String string;
        if (javaType == null) {
            string = "UNKNOWN TYPE";
        }
        else {
            string = javaType.toString();
        }
        this._valueTypeDesc = string;
    }
    
    public StdValueInstantiator(final DeserializationConfig deserializationConfig, final Class<?> clazz) {
        super();
        this._cfgEmptyStringsAsObjects = (deserializationConfig != null && deserializationConfig.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT));
        String name;
        if (clazz == null) {
            name = "UNKNOWN TYPE";
        }
        else {
            name = clazz.getName();
        }
        this._valueTypeDesc = name;
    }
    
    protected StdValueInstantiator(final StdValueInstantiator stdValueInstantiator) {
        super();
        this._cfgEmptyStringsAsObjects = stdValueInstantiator._cfgEmptyStringsAsObjects;
        this._valueTypeDesc = stdValueInstantiator._valueTypeDesc;
        this._defaultCreator = stdValueInstantiator._defaultCreator;
        this._constructorArguments = stdValueInstantiator._constructorArguments;
        this._withArgsCreator = stdValueInstantiator._withArgsCreator;
        this._delegateType = stdValueInstantiator._delegateType;
        this._delegateCreator = stdValueInstantiator._delegateCreator;
        this._fromStringCreator = stdValueInstantiator._fromStringCreator;
        this._fromIntCreator = stdValueInstantiator._fromIntCreator;
        this._fromLongCreator = stdValueInstantiator._fromLongCreator;
        this._fromDoubleCreator = stdValueInstantiator._fromDoubleCreator;
        this._fromBooleanCreator = stdValueInstantiator._fromBooleanCreator;
    }
    
    protected Object _createFromStringFallbacks(final String s) throws IOException, JsonProcessingException {
        if (this._fromBooleanCreator != null) {
            final String trim = s.trim();
            if ("true".equals(trim)) {
                return this.createFromBoolean(true);
            }
            if ("false".equals(trim)) {
                return this.createFromBoolean(false);
            }
        }
        if (this._cfgEmptyStringsAsObjects && s.length() == 0) {
            return null;
        }
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON String; no single-String constructor/factory method");
    }
    
    @Override
    public boolean canCreateFromBoolean() {
        return this._fromBooleanCreator != null;
    }
    
    @Override
    public boolean canCreateFromDouble() {
        return this._fromDoubleCreator != null;
    }
    
    @Override
    public boolean canCreateFromInt() {
        return this._fromIntCreator != null;
    }
    
    @Override
    public boolean canCreateFromLong() {
        return this._fromLongCreator != null;
    }
    
    @Override
    public boolean canCreateFromObjectWith() {
        return this._withArgsCreator != null;
    }
    
    @Override
    public boolean canCreateFromString() {
        return this._fromStringCreator != null;
    }
    
    @Override
    public boolean canCreateUsingDefault() {
        return this._defaultCreator != null;
    }
    
    public void configureFromBooleanCreator(final AnnotatedWithParams fromBooleanCreator) {
        this._fromBooleanCreator = fromBooleanCreator;
    }
    
    public void configureFromDoubleCreator(final AnnotatedWithParams fromDoubleCreator) {
        this._fromDoubleCreator = fromDoubleCreator;
    }
    
    public void configureFromIntCreator(final AnnotatedWithParams fromIntCreator) {
        this._fromIntCreator = fromIntCreator;
    }
    
    public void configureFromLongCreator(final AnnotatedWithParams fromLongCreator) {
        this._fromLongCreator = fromLongCreator;
    }
    
    public void configureFromObjectSettings(final AnnotatedWithParams defaultCreator, final AnnotatedWithParams delegateCreator, final JavaType delegateType, final AnnotatedWithParams withArgsCreator, final CreatorProperty[] constructorArguments) {
        this._defaultCreator = defaultCreator;
        this._delegateCreator = delegateCreator;
        this._delegateType = delegateType;
        this._withArgsCreator = withArgsCreator;
        this._constructorArguments = constructorArguments;
    }
    
    public void configureFromStringCreator(final AnnotatedWithParams fromStringCreator) {
        this._fromStringCreator = fromStringCreator;
    }
    
    @Override
    public Object createFromBoolean(final boolean b) throws IOException, JsonProcessingException {
        try {
            if (this._fromBooleanCreator != null) {
                return this._fromBooleanCreator.call1(b);
            }
        }
        catch (Exception ex) {
            throw this.wrapException(ex);
        }
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON boolean value; no single-boolean/Boolean-arg constructor/factory method");
    }
    
    @Override
    public Object createFromDouble(final double d) throws IOException, JsonProcessingException {
        try {
            if (this._fromDoubleCreator != null) {
                return this._fromDoubleCreator.call1(d);
            }
        }
        catch (Exception ex) {
            throw this.wrapException(ex);
        }
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON floating-point number; no one-double/Double-arg constructor/factory method");
    }
    
    @Override
    public Object createFromInt(final int i) throws IOException, JsonProcessingException {
        try {
            if (this._fromIntCreator != null) {
                return this._fromIntCreator.call1(i);
            }
            if (this._fromLongCreator != null) {
                return this._fromLongCreator.call1((long)i);
            }
        }
        catch (Exception ex) {
            throw this.wrapException(ex);
        }
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON integral number; no single-int-arg constructor/factory method");
    }
    
    @Override
    public Object createFromLong(final long l) throws IOException, JsonProcessingException {
        try {
            if (this._fromLongCreator != null) {
                return this._fromLongCreator.call1(l);
            }
        }
        catch (Exception ex) {
            throw this.wrapException(ex);
        }
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON long integral number; no single-long-arg constructor/factory method");
    }
    
    @Override
    public Object createFromObjectWith(final Object[] array) throws IOException, JsonProcessingException {
        if (this._withArgsCreator == null) {
            throw new IllegalStateException("No with-args constructor for " + this.getValueTypeDesc());
        }
        try {
            return this._withArgsCreator.call(array);
        }
        catch (ExceptionInInitializerError exceptionInInitializerError) {
            throw this.wrapException(exceptionInInitializerError);
        }
        catch (Exception ex) {
            throw this.wrapException(ex);
        }
    }
    
    @Override
    public Object createFromString(final String s) throws IOException, JsonProcessingException {
        if (this._fromStringCreator != null) {
            try {
                return this._fromStringCreator.call1(s);
            }
            catch (Exception ex) {
                throw this.wrapException(ex);
            }
        }
        return this._createFromStringFallbacks(s);
    }
    
    @Override
    public Object createUsingDefault() throws IOException, JsonProcessingException {
        if (this._defaultCreator == null) {
            throw new IllegalStateException("No default constructor for " + this.getValueTypeDesc());
        }
        try {
            return this._defaultCreator.call();
        }
        catch (ExceptionInInitializerError exceptionInInitializerError) {
            throw this.wrapException(exceptionInInitializerError);
        }
        catch (Exception ex) {
            throw this.wrapException(ex);
        }
    }
    
    @Override
    public Object createUsingDelegate(final Object o) throws IOException, JsonProcessingException {
        if (this._delegateCreator == null) {
            throw new IllegalStateException("No delegate constructor for " + this.getValueTypeDesc());
        }
        try {
            return this._delegateCreator.call1(o);
        }
        catch (ExceptionInInitializerError exceptionInInitializerError) {
            throw this.wrapException(exceptionInInitializerError);
        }
        catch (Exception ex) {
            throw this.wrapException(ex);
        }
    }
    
    @Override
    public AnnotatedWithParams getDefaultCreator() {
        return this._defaultCreator;
    }
    
    @Override
    public AnnotatedWithParams getDelegateCreator() {
        return this._delegateCreator;
    }
    
    @Override
    public JavaType getDelegateType() {
        return this._delegateType;
    }
    
    @Override
    public SettableBeanProperty[] getFromObjectArguments() {
        return this._constructorArguments;
    }
    
    @Override
    public String getValueTypeDesc() {
        return this._valueTypeDesc;
    }
    
    @Override
    public AnnotatedWithParams getWithArgsCreator() {
        return this._withArgsCreator;
    }
    
    protected JsonMappingException wrapException(Throwable cause) {
        while (cause.getCause() != null) {
            cause = cause.getCause();
        }
        return new JsonMappingException("Instantiation of " + this.getValueTypeDesc() + " value failed: " + cause.getMessage(), cause);
    }
}
