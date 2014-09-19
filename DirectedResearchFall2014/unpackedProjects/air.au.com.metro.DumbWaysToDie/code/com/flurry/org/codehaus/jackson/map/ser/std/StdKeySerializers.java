package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.type.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class StdKeySerializers
{
    protected static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER;
    protected static final JsonSerializer<Object> DEFAULT_STRING_SERIALIZER;
    
    static {
        DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
        DEFAULT_STRING_SERIALIZER = new StringKeySerializer();
    }
    
    public static JsonSerializer<Object> getStdKeySerializer(final JavaType javaType) {
        if (javaType == null) {
            return StdKeySerializers.DEFAULT_KEY_SERIALIZER;
        }
        final Class<?> rawClass = javaType.getRawClass();
        if (rawClass == String.class) {
            return StdKeySerializers.DEFAULT_STRING_SERIALIZER;
        }
        if (rawClass == Object.class) {
            return StdKeySerializers.DEFAULT_KEY_SERIALIZER;
        }
        if (Date.class.isAssignableFrom(rawClass)) {
            return (JsonSerializer<Object>)DateKeySerializer.instance;
        }
        if (Calendar.class.isAssignableFrom(rawClass)) {
            return (JsonSerializer<Object>)CalendarKeySerializer.instance;
        }
        return StdKeySerializers.DEFAULT_KEY_SERIALIZER;
    }
    
    public static class CalendarKeySerializer extends SerializerBase<Calendar>
    {
        protected static final JsonSerializer<?> instance;
        
        static {
            instance = new CalendarKeySerializer();
        }
        
        public CalendarKeySerializer() {
            super(Calendar.class);
        }
        
        @Override
        public void serialize(final Calendar calendar, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            serializerProvider.defaultSerializeDateKey(calendar.getTimeInMillis(), jsonGenerator);
        }
    }
    
    public static class DateKeySerializer extends SerializerBase<Date>
    {
        protected static final JsonSerializer<?> instance;
        
        static {
            instance = new DateKeySerializer();
        }
        
        public DateKeySerializer() {
            super(Date.class);
        }
        
        @Override
        public void serialize(final Date date, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            serializerProvider.defaultSerializeDateKey(date, jsonGenerator);
        }
    }
    
    public static class StringKeySerializer extends SerializerBase<String>
    {
        public StringKeySerializer() {
            super(String.class);
        }
        
        @Override
        public void serialize(final String s, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeFieldName(s);
        }
    }
}
