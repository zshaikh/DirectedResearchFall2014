package com.flurry.org.codehaus.jackson.map.ser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class DateSerializer extends ScalarSerializerBase<Date>
{
    public static DateSerializer instance;
    
    static {
        DateSerializer.instance = new DateSerializer();
    }
    
    public DateSerializer() {
        super(Date.class);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
        String s;
        if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
            s = "number";
        }
        else {
            s = "string";
        }
        return this.createSchemaNode(s, true);
    }
    
    @Override
    public void serialize(final Date date, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        serializerProvider.defaultSerializeDateValue(date, jsonGenerator);
    }
}
