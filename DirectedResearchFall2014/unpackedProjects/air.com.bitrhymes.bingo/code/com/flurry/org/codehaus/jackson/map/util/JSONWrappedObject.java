package com.flurry.org.codehaus.jackson.map.util;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class JSONWrappedObject implements JsonSerializableWithType
{
    protected final String _prefix;
    protected final JavaType _serializationType;
    protected final String _suffix;
    protected final Object _value;
    
    public JSONWrappedObject(final String s, final String s2, final Object o) {
        this(s, s2, o, (JavaType)null);
    }
    
    public JSONWrappedObject(final String prefix, final String suffix, final Object value, final JavaType serializationType) {
        super();
        this._prefix = prefix;
        this._suffix = suffix;
        this._value = value;
        this._serializationType = serializationType;
    }
    
    public JSONWrappedObject(final String prefix, final String suffix, final Object value, final Class<?> clazz) {
        super();
        this._prefix = prefix;
        this._suffix = suffix;
        this._value = value;
        JavaType constructType;
        if (clazz == null) {
            constructType = null;
        }
        else {
            constructType = TypeFactory.defaultInstance().constructType(clazz);
        }
        this._serializationType = constructType;
    }
    
    public String getPrefix() {
        return this._prefix;
    }
    
    public JavaType getSerializationType() {
        return this._serializationType;
    }
    
    public String getSuffix() {
        return this._suffix;
    }
    
    public Object getValue() {
        return this._value;
    }
    
    @Override
    public void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        if (this._prefix != null) {
            jsonGenerator.writeRaw(this._prefix);
        }
        if (this._value == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        }
        else if (this._serializationType != null) {
            serializerProvider.findTypedValueSerializer(this._serializationType, true, null).serialize(this._value, jsonGenerator, serializerProvider);
        }
        else {
            serializerProvider.findTypedValueSerializer(this._value.getClass(), true, null).serialize(this._value, jsonGenerator, serializerProvider);
        }
        if (this._suffix != null) {
            jsonGenerator.writeRaw(this._suffix);
        }
    }
    
    @Override
    public void serializeWithType(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        this.serialize(jsonGenerator, serializerProvider);
    }
}
