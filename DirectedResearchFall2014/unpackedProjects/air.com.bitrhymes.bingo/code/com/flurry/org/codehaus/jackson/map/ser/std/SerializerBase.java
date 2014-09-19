package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.schema.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;

public abstract class SerializerBase<T> extends JsonSerializer<T> implements SchemaAware
{
    protected final Class<T> _handledType;
    
    protected SerializerBase(final JavaType javaType) {
        super();
        this._handledType = (Class<T>)javaType.getRawClass();
    }
    
    protected SerializerBase(final Class<T> handledType) {
        super();
        this._handledType = handledType;
    }
    
    protected SerializerBase(final Class<?> handledType, final boolean b) {
        super();
        this._handledType = (Class<T>)handledType;
    }
    
    protected ObjectNode createObjectNode() {
        return JsonNodeFactory.instance.objectNode();
    }
    
    protected ObjectNode createSchemaNode(final String s) {
        final ObjectNode objectNode = this.createObjectNode();
        objectNode.put("type", s);
        return objectNode;
    }
    
    protected ObjectNode createSchemaNode(final String s, final boolean b) {
        final ObjectNode schemaNode = this.createSchemaNode(s);
        if (!b) {
            schemaNode.put("required", !b);
        }
        return schemaNode;
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        return this.createSchemaNode("string");
    }
    
    @Override
    public final Class<T> handledType() {
        return this._handledType;
    }
    
    protected boolean isDefaultSerializer(final JsonSerializer<?> jsonSerializer) {
        return jsonSerializer != null && jsonSerializer.getClass().getAnnotation(JacksonStdImpl.class) != null;
    }
    
    @Override
    public abstract void serialize(final T p0, final JsonGenerator p1, final SerializerProvider p2) throws IOException, JsonGenerationException;
    
    public void wrapAndThrow(final SerializerProvider serializerProvider, Throwable cause, final Object o, final int n) throws IOException {
        while (cause instanceof InvocationTargetException && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause instanceof Error) {
            throw (Error)cause;
        }
        boolean b;
        if (serializerProvider == null || serializerProvider.isEnabled(SerializationConfig.Feature.WRAP_EXCEPTIONS)) {
            b = true;
        }
        else {
            b = false;
        }
        if (cause instanceof IOException) {
            if (!b || !(cause instanceof JsonMappingException)) {
                throw (IOException)cause;
            }
        }
        else if (!b && cause instanceof RuntimeException) {
            throw (RuntimeException)cause;
        }
        throw JsonMappingException.wrapWithPath(cause, o, n);
    }
    
    public void wrapAndThrow(final SerializerProvider serializerProvider, Throwable cause, final Object o, final String s) throws IOException {
        while (cause instanceof InvocationTargetException && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause instanceof Error) {
            throw (Error)cause;
        }
        boolean b;
        if (serializerProvider == null || serializerProvider.isEnabled(SerializationConfig.Feature.WRAP_EXCEPTIONS)) {
            b = true;
        }
        else {
            b = false;
        }
        if (cause instanceof IOException) {
            if (!b || !(cause instanceof JsonMappingException)) {
                throw (IOException)cause;
            }
        }
        else if (!b && cause instanceof RuntimeException) {
            throw (RuntimeException)cause;
        }
        throw JsonMappingException.wrapWithPath(cause, o, s);
    }
    
    @Deprecated
    public void wrapAndThrow(final Throwable t, final Object o, final int n) throws IOException {
        this.wrapAndThrow(null, t, o, n);
    }
    
    @Deprecated
    public void wrapAndThrow(final Throwable t, final Object o, final String s) throws IOException {
        this.wrapAndThrow(null, t, o, s);
    }
}
