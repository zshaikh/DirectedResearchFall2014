package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class AsExternalTypeSerializer extends TypeSerializerBase
{
    protected final String _typePropertyName;
    
    public AsExternalTypeSerializer(final TypeIdResolver typeIdResolver, final BeanProperty beanProperty, final String typePropertyName) {
        super(typeIdResolver, beanProperty);
        this._typePropertyName = typePropertyName;
    }
    
    protected final void _writePrefix(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        jsonGenerator.writeStartObject();
    }
    
    protected final void _writePrefix(final Object o, final JsonGenerator jsonGenerator, final Class<?> clazz) throws IOException, JsonProcessingException {
        jsonGenerator.writeStartObject();
    }
    
    protected final void _writeSuffix(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        jsonGenerator.writeEndObject();
        jsonGenerator.writeStringField(this._typePropertyName, this._idResolver.idFromValue(o));
    }
    
    @Override
    public String getPropertyName() {
        return this._typePropertyName;
    }
    
    @Override
    public JsonTypeInfo.As getTypeInclusion() {
        return JsonTypeInfo.As.EXTERNAL_PROPERTY;
    }
    
    @Override
    public void writeTypePrefixForArray(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        this._writePrefix(o, jsonGenerator);
    }
    
    @Override
    public void writeTypePrefixForArray(final Object o, final JsonGenerator jsonGenerator, final Class<?> clazz) throws IOException, JsonProcessingException {
        this._writePrefix(o, jsonGenerator, clazz);
    }
    
    @Override
    public void writeTypePrefixForObject(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        this._writePrefix(o, jsonGenerator);
    }
    
    @Override
    public void writeTypePrefixForObject(final Object o, final JsonGenerator jsonGenerator, final Class<?> clazz) throws IOException, JsonProcessingException {
        this._writePrefix(o, jsonGenerator, clazz);
    }
    
    @Override
    public void writeTypePrefixForScalar(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        this._writePrefix(o, jsonGenerator);
    }
    
    @Override
    public void writeTypePrefixForScalar(final Object o, final JsonGenerator jsonGenerator, final Class<?> clazz) throws IOException, JsonProcessingException {
        this._writePrefix(o, jsonGenerator, clazz);
    }
    
    @Override
    public void writeTypeSuffixForArray(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        this._writeSuffix(o, jsonGenerator);
    }
    
    @Override
    public void writeTypeSuffixForObject(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        this._writeSuffix(o, jsonGenerator);
    }
    
    @Override
    public void writeTypeSuffixForScalar(final Object o, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        this._writeSuffix(o, jsonGenerator);
    }
}
