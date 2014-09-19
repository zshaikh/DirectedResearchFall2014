package com.flurry.org.codehaus.jackson.map.util;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class JSONPObject implements JsonSerializableWithType
{
    protected final String _function;
    protected final JavaType _serializationType;
    protected final Object _value;
    
    public JSONPObject(final String s, final Object o) {
        this(s, o, (JavaType)null);
    }
    
    public JSONPObject(final String function, final Object value, final JavaType serializationType) {
        super();
        this._function = function;
        this._value = value;
        this._serializationType = serializationType;
    }
    
    public JSONPObject(final String function, final Object value, final Class<?> clazz) {
        super();
        this._function = function;
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
    
    public String getFunction() {
        return this._function;
    }
    
    public JavaType getSerializationType() {
        return this._serializationType;
    }
    
    public Object getValue() {
        return this._value;
    }
    
    @Override
    public void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeRaw(this._function);
        jsonGenerator.writeRaw('(');
        if (this._value == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        }
        else if (this._serializationType != null) {
            serializerProvider.findTypedValueSerializer(this._serializationType, true, null).serialize(this._value, jsonGenerator, serializerProvider);
        }
        else {
            serializerProvider.findTypedValueSerializer(this._value.getClass(), true, null).serialize(this._value, jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeRaw(')');
    }
    
    @Override
    public void serializeWithType(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        this.serialize(jsonGenerator, serializerProvider);
    }
}
