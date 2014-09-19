package com.flurry.org.codehaus.jackson.map.ser.impl;

import com.flurry.org.codehaus.jackson.map.ser.std.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

public class UnknownSerializer extends SerializerBase<Object>
{
    public UnknownSerializer() {
        super(Object.class);
    }
    
    protected void failForEmpty(final Object o) throws JsonMappingException {
        throw new JsonMappingException("No serializer found for class " + o.getClass().getName() + " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) )");
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        return null;
    }
    
    @Override
    public void serialize(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonMappingException {
        if (serializerProvider.isEnabled(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS)) {
            this.failForEmpty(o);
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeEndObject();
    }
    
    @Override
    public final void serializeWithType(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        if (serializerProvider.isEnabled(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS)) {
            this.failForEmpty(o);
        }
        typeSerializer.writeTypePrefixForObject(o, jsonGenerator);
        typeSerializer.writeTypeSuffixForObject(o, jsonGenerator);
    }
}
