package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;

public abstract class BeanPropertyDefinition implements Named
{
    public boolean couldDeserialize() {
        return this.getMutator() != null;
    }
    
    public boolean couldSerialize() {
        return this.getAccessor() != null;
    }
    
    public abstract AnnotatedMember getAccessor();
    
    public abstract AnnotatedParameter getConstructorParameter();
    
    public abstract AnnotatedField getField();
    
    public abstract AnnotatedMethod getGetter();
    
    public abstract String getInternalName();
    
    public abstract AnnotatedMember getMutator();
    
    @Override
    public abstract String getName();
    
    public abstract AnnotatedMethod getSetter();
    
    public abstract boolean hasConstructorParameter();
    
    public abstract boolean hasField();
    
    public abstract boolean hasGetter();
    
    public abstract boolean hasSetter();
}
