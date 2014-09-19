package com.flurry.org.codehaus.jackson.map.ser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class CalendarSerializer extends ScalarSerializerBase<Calendar>
{
    public static CalendarSerializer instance;
    
    static {
        CalendarSerializer.instance = new CalendarSerializer();
    }
    
    public CalendarSerializer() {
        super(Calendar.class);
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
    public void serialize(final Calendar calendar, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        serializerProvider.defaultSerializeDateValue(calendar.getTimeInMillis(), jsonGenerator);
    }
}
