package com.flurry.org.codehaus.jackson.map.ser.std;

import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class StdKeySerializer extends SerializerBase<Object>
{
    static final StdKeySerializer instace;
    
    static {
        instace = new StdKeySerializer();
    }
    
    public StdKeySerializer() {
        super(Object.class);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        return this.createSchemaNode("string");
    }
    
    @Override
    public void serialize(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (o instanceof Date) {
            serializerProvider.defaultSerializeDateKey((Date)o, jsonGenerator);
            return;
        }
        jsonGenerator.writeFieldName(o.toString());
    }
}
