package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

@JacksonStdImpl
public class ToStringSerializer extends SerializerBase<Object>
{
    public static final ToStringSerializer instance;
    
    static {
        instance = new ToStringSerializer();
    }
    
    public ToStringSerializer() {
        super(Object.class);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        return this.createSchemaNode("string", true);
    }
    
    @Override
    public void serialize(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeString(o.toString());
    }
    
    @Override
    public void serializeWithType(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForScalar(o, jsonGenerator);
        this.serialize(o, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(o, jsonGenerator);
    }
}
