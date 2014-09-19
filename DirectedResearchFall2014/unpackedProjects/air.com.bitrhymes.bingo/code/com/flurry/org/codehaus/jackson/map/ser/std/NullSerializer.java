package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class NullSerializer extends SerializerBase<Object>
{
    public static final NullSerializer instance;
    
    static {
        instance = new NullSerializer();
    }
    
    private NullSerializer() {
        super(Object.class);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        return this.createSchemaNode("null");
    }
    
    @Override
    public void serialize(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeNull();
    }
}
