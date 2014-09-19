package com.flurry.org.codehaus.jackson.map.ext;

import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.ser.std.*;
import org.joda.time.format.*;
import com.flurry.org.codehaus.jackson.*;
import org.joda.time.*;

public class JodaSerializers implements Provider<Map.Entry<Class<?>, JsonSerializer<?>>>
{
    static final HashMap<Class<?>, JsonSerializer<?>> _serializers;
    
    static {
        (_serializers = new HashMap<Class<?>, JsonSerializer<?>>()).put(DateTime.class, new DateTimeSerializer());
        JodaSerializers._serializers.put(LocalDateTime.class, new LocalDateTimeSerializer());
        JodaSerializers._serializers.put(LocalDate.class, new LocalDateSerializer());
        JodaSerializers._serializers.put(DateMidnight.class, new DateMidnightSerializer());
        JodaSerializers._serializers.put(Period.class, ToStringSerializer.instance);
    }
    
    @Override
    public Collection<Map.Entry<Class<?>, JsonSerializer<?>>> provide() {
        return JodaSerializers._serializers.entrySet();
    }
    
    public static final class DateMidnightSerializer extends JodaSerializer<DateMidnight>
    {
        public DateMidnightSerializer() {
            super(DateMidnight.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            String s;
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
                s = "array";
            }
            else {
                s = "string";
            }
            return this.createSchemaNode(s, true);
        }
        
        @Override
        public void serialize(final DateMidnight dateMidnight, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
                jsonGenerator.writeStartArray();
                jsonGenerator.writeNumber(dateMidnight.year().get());
                jsonGenerator.writeNumber(dateMidnight.monthOfYear().get());
                jsonGenerator.writeNumber(dateMidnight.dayOfMonth().get());
                jsonGenerator.writeEndArray();
                return;
            }
            jsonGenerator.writeString(((JodaSerializer)this).printLocalDate((ReadableInstant)dateMidnight));
        }
    }
    
    public static final class DateTimeSerializer extends JodaSerializer<DateTime>
    {
        public DateTimeSerializer() {
            super(DateTime.class);
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
        public void serialize(final DateTime dateTime, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
                jsonGenerator.writeNumber(dateTime.getMillis());
                return;
            }
            jsonGenerator.writeString(dateTime.toString());
        }
    }
    
    protected abstract static class JodaSerializer<T> extends SerializerBase<T>
    {
        static final DateTimeFormatter _localDateFormat;
        static final DateTimeFormatter _localDateTimeFormat;
        
        static {
            _localDateTimeFormat = ISODateTimeFormat.dateTime();
            _localDateFormat = ISODateTimeFormat.date();
        }
        
        protected JodaSerializer(final Class<T> clazz) {
            super(clazz);
        }
        
        protected String printLocalDate(final ReadableInstant readableInstant) throws IOException, JsonProcessingException {
            return JodaSerializer._localDateFormat.print(readableInstant);
        }
        
        protected String printLocalDate(final ReadablePartial readablePartial) throws IOException, JsonProcessingException {
            return JodaSerializer._localDateFormat.print(readablePartial);
        }
        
        protected String printLocalDateTime(final ReadablePartial readablePartial) throws IOException, JsonProcessingException {
            return JodaSerializer._localDateTimeFormat.print(readablePartial);
        }
    }
    
    public static final class LocalDateSerializer extends JodaSerializer<LocalDate>
    {
        public LocalDateSerializer() {
            super(LocalDate.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            String s;
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
                s = "array";
            }
            else {
                s = "string";
            }
            return this.createSchemaNode(s, true);
        }
        
        @Override
        public void serialize(final LocalDate localDate, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
                jsonGenerator.writeStartArray();
                jsonGenerator.writeNumber(localDate.year().get());
                jsonGenerator.writeNumber(localDate.monthOfYear().get());
                jsonGenerator.writeNumber(localDate.dayOfMonth().get());
                jsonGenerator.writeEndArray();
                return;
            }
            jsonGenerator.writeString(((JodaSerializer)this).printLocalDate((ReadablePartial)localDate));
        }
    }
    
    public static final class LocalDateTimeSerializer extends JodaSerializer<LocalDateTime>
    {
        public LocalDateTimeSerializer() {
            super(LocalDateTime.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            String s;
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
                s = "array";
            }
            else {
                s = "string";
            }
            return this.createSchemaNode(s, true);
        }
        
        @Override
        public void serialize(final LocalDateTime localDateTime, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
                jsonGenerator.writeStartArray();
                jsonGenerator.writeNumber(localDateTime.year().get());
                jsonGenerator.writeNumber(localDateTime.monthOfYear().get());
                jsonGenerator.writeNumber(localDateTime.dayOfMonth().get());
                jsonGenerator.writeNumber(localDateTime.hourOfDay().get());
                jsonGenerator.writeNumber(localDateTime.minuteOfHour().get());
                jsonGenerator.writeNumber(localDateTime.secondOfMinute().get());
                jsonGenerator.writeNumber(localDateTime.millisOfSecond().get());
                jsonGenerator.writeEndArray();
                return;
            }
            jsonGenerator.writeString(((JodaSerializer)this).printLocalDateTime((ReadablePartial)localDateTime));
        }
    }
}
