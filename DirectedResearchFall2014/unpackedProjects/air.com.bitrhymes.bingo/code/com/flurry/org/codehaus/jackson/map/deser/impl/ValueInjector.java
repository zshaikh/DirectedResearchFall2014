package com.flurry.org.codehaus.jackson.map.deser.impl;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;

public class ValueInjector extends Std
{
    protected final Object _valueId;
    
    public ValueInjector(final String s, final JavaType javaType, final Annotations annotations, final AnnotatedMember annotatedMember, final Object valueId) {
        super(s, javaType, annotations, annotatedMember);
        this._valueId = valueId;
    }
    
    public Object findValue(final DeserializationContext deserializationContext, final Object o) {
        return deserializationContext.findInjectableValue(this._valueId, this, o);
    }
    
    public void inject(final DeserializationContext deserializationContext, final Object o) throws IOException {
        this._member.setValue(o, this.findValue(deserializationContext, o));
    }
}
