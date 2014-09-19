package com.flurry.org.codehaus.jackson.map.deser.impl;

import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;

public class CreatorProperty extends SettableBeanProperty
{
    protected final AnnotatedParameter _annotated;
    protected final Object _injectableValueId;
    
    protected CreatorProperty(final CreatorProperty creatorProperty, final JsonDeserializer<Object> jsonDeserializer) {
        super(creatorProperty, jsonDeserializer);
        this._annotated = creatorProperty._annotated;
        this._injectableValueId = creatorProperty._injectableValueId;
    }
    
    public CreatorProperty(final String s, final JavaType javaType, final TypeDeserializer typeDeserializer, final Annotations annotations, final AnnotatedParameter annotated, final int propertyIndex, final Object injectableValueId) {
        super(s, javaType, typeDeserializer, annotations);
        this._annotated = annotated;
        this._propertyIndex = propertyIndex;
        this._injectableValueId = injectableValueId;
    }
    
    @Override
    public void deserializeAndSet(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
        this.set(o, this.deserialize(jsonParser, deserializationContext));
    }
    
    public Object findInjectableValue(final DeserializationContext deserializationContext, final Object o) {
        if (this._injectableValueId == null) {
            throw new IllegalStateException("Property '" + this.getName() + "' (type " + this.getClass().getName() + ") has no injectable value id configured");
        }
        return deserializationContext.findInjectableValue(this._injectableValueId, this, o);
    }
    
    @Override
    public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
        if (this._annotated == null) {
            return null;
        }
        return this._annotated.getAnnotation(clazz);
    }
    
    @Override
    public Object getInjectableValueId() {
        return this._injectableValueId;
    }
    
    @Override
    public AnnotatedMember getMember() {
        return this._annotated;
    }
    
    public void inject(final DeserializationContext deserializationContext, final Object o) throws IOException {
        this.set(o, this.findInjectableValue(deserializationContext, o));
    }
    
    @Override
    public void set(final Object o, final Object o2) throws IOException {
    }
    
    @Override
    public CreatorProperty withValueDeserializer(final JsonDeserializer<Object> jsonDeserializer) {
        return new CreatorProperty(this, jsonDeserializer);
    }
}
