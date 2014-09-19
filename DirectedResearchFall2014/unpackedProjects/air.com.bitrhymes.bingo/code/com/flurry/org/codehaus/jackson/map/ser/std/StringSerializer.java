package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public final class StringSerializer extends NonTypedScalarSerializerBase<String>
{
    public StringSerializer() {
        super(String.class);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
        return this.createSchemaNode("string", true);
    }
    
    @Override
    public void serialize(final String s, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeString(s);
    }
}
