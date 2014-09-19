package com.flurry.org.codehaus.jackson.map.deser;

import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

public final class SettableAnyProperty
{
    protected final BeanProperty _property;
    protected final Method _setter;
    protected final JavaType _type;
    protected JsonDeserializer<Object> _valueDeserializer;
    
    public SettableAnyProperty(final BeanProperty beanProperty, final AnnotatedMethod annotatedMethod, final JavaType javaType) {
        this(beanProperty, annotatedMethod, javaType, null);
    }
    
    public SettableAnyProperty(final BeanProperty beanProperty, final AnnotatedMethod annotatedMethod, final JavaType javaType, final JsonDeserializer<Object> jsonDeserializer) {
        this(beanProperty, annotatedMethod.getAnnotated(), javaType, jsonDeserializer);
    }
    
    public SettableAnyProperty(final BeanProperty property, final Method setter, final JavaType type, final JsonDeserializer<Object> valueDeserializer) {
        super();
        this._property = property;
        this._type = type;
        this._setter = setter;
        this._valueDeserializer = valueDeserializer;
    }
    
    private String getClassName() {
        return this._setter.getDeclaringClass().getName();
    }
    
    protected void _throwAsIOE(final Exception ex, final String str, final Object o) throws IOException {
        if (ex instanceof IllegalArgumentException) {
            String name;
            if (o == null) {
                name = "[NULL]";
            }
            else {
                name = o.getClass().getName();
            }
            final StringBuilder append = new StringBuilder("Problem deserializing \"any\" property '").append(str);
            append.append("' of class " + this.getClassName() + " (expected type: ").append(this._type);
            append.append("; actual type: ").append(name).append(")");
            final String message = ex.getMessage();
            if (message != null) {
                append.append(", problem: ").append(message);
            }
            else {
                append.append(" (no error message provided)");
            }
            throw new JsonMappingException(append.toString(), null, ex);
        }
        if (ex instanceof IOException) {
            throw (IOException)ex;
        }
        if (ex instanceof RuntimeException) {
            throw (RuntimeException)ex;
        }
        Throwable cause;
        for (cause = ex; cause.getCause() != null; cause = cause.getCause()) {}
        throw new JsonMappingException(cause.getMessage(), null, cause);
    }
    
    public final Object deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            return null;
        }
        return this._valueDeserializer.deserialize(jsonParser, deserializationContext);
    }
    
    public final void deserializeAndSet(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o, final String s) throws IOException, JsonProcessingException {
        this.set(o, s, this.deserialize(jsonParser, deserializationContext));
    }
    
    public BeanProperty getProperty() {
        return this._property;
    }
    
    public JavaType getType() {
        return this._type;
    }
    
    public boolean hasValueDeserializer() {
        return this._valueDeserializer != null;
    }
    
    public final void set(final Object obj, final String s, final Object o) throws IOException {
        try {
            this._setter.invoke(obj, s, o);
        }
        catch (Exception ex) {
            this._throwAsIOE(ex, s, o);
        }
    }
    
    @Deprecated
    public void setValueDeserializer(final JsonDeserializer<Object> valueDeserializer) {
        if (this._valueDeserializer != null) {
            throw new IllegalStateException("Already had assigned deserializer for SettableAnyProperty");
        }
        this._valueDeserializer = valueDeserializer;
    }
    
    @Override
    public String toString() {
        return "[any property on class " + this.getClassName() + "]";
    }
    
    public SettableAnyProperty withValueDeserializer(final JsonDeserializer<Object> jsonDeserializer) {
        return new SettableAnyProperty(this._property, this._setter, this._type, jsonDeserializer);
    }
}
