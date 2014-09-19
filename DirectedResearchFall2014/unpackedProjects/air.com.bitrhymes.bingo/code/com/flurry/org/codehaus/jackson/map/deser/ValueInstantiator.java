package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.type.*;

public abstract class ValueInstantiator
{
    public boolean canCreateFromBoolean() {
        return false;
    }
    
    public boolean canCreateFromDouble() {
        return false;
    }
    
    public boolean canCreateFromInt() {
        return false;
    }
    
    public boolean canCreateFromLong() {
        return false;
    }
    
    public boolean canCreateFromObjectWith() {
        return false;
    }
    
    public boolean canCreateFromString() {
        return false;
    }
    
    public boolean canCreateUsingDefault() {
        return this.getDefaultCreator() != null;
    }
    
    public boolean canCreateUsingDelegate() {
        return this.getDelegateType() != null;
    }
    
    public boolean canInstantiate() {
        return this.canCreateUsingDefault() || this.canCreateUsingDelegate() || this.canCreateFromObjectWith() || this.canCreateFromString() || this.canCreateFromInt() || this.canCreateFromLong() || this.canCreateFromDouble() || this.canCreateFromBoolean();
    }
    
    public Object createFromBoolean(final boolean b) throws IOException, JsonProcessingException {
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON boolean value");
    }
    
    public Object createFromDouble(final double n) throws IOException, JsonProcessingException {
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON floating-point number");
    }
    
    public Object createFromInt(final int n) throws IOException, JsonProcessingException {
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON int number");
    }
    
    public Object createFromLong(final long n) throws IOException, JsonProcessingException {
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON long number");
    }
    
    public Object createFromObjectWith(final Object[] array) throws IOException, JsonProcessingException {
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " with arguments");
    }
    
    public Object createFromString(final String s) throws IOException, JsonProcessingException {
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " from JSON String");
    }
    
    public Object createUsingDefault() throws IOException, JsonProcessingException {
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + "; no default creator found");
    }
    
    public Object createUsingDelegate(final Object o) throws IOException, JsonProcessingException {
        throw new JsonMappingException("Can not instantiate value of type " + this.getValueTypeDesc() + " using delegate");
    }
    
    public AnnotatedWithParams getDefaultCreator() {
        return null;
    }
    
    public AnnotatedWithParams getDelegateCreator() {
        return null;
    }
    
    public JavaType getDelegateType() {
        return null;
    }
    
    public SettableBeanProperty[] getFromObjectArguments() {
        return null;
    }
    
    public abstract String getValueTypeDesc();
    
    public AnnotatedWithParams getWithArgsCreator() {
        return null;
    }
}
