package com.flurry.org.codehaus.jackson.map.ext;

import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import org.joda.time.format.*;
import org.joda.time.*;

public class JodaDeserializers implements Provider<StdDeserializer<?>>
{
    @Override
    public Collection<StdDeserializer<?>> provide() {
        return (Collection<StdDeserializer<?>>)Arrays.asList(new DateTimeDeserializer(DateTime.class), new DateTimeDeserializer(ReadableDateTime.class), new DateTimeDeserializer(ReadableInstant.class), new LocalDateDeserializer(), new LocalDateTimeDeserializer(), new DateMidnightDeserializer(), new PeriodDeserializer());
    }
    
    public static class DateMidnightDeserializer extends JodaDeserializer<DateMidnight>
    {
        public DateMidnightDeserializer() {
            super(DateMidnight.class);
        }
        
        @Override
        public DateMidnight deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.isExpectedStartArrayToken()) {
                jsonParser.nextToken();
                final int intValue = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue2 = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue3 = jsonParser.getIntValue();
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "after DateMidnight ints");
                }
                return new DateMidnight(intValue, intValue2, intValue3);
            }
            else {
                switch (jsonParser.getCurrentToken()) {
                    default: {
                        throw deserializationContext.wrongTokenException(jsonParser, JsonToken.START_ARRAY, "expected JSON Array, Number or String");
                    }
                    case VALUE_NUMBER_INT: {
                        return new DateMidnight(jsonParser.getLongValue());
                    }
                    case VALUE_STRING: {
                        final DateTime local = ((JodaDeserializer)this).parseLocal(jsonParser);
                        if (local == null) {
                            return null;
                        }
                        return local.toDateMidnight();
                    }
                }
            }
        }
    }
    
    public static class DateTimeDeserializer<T extends ReadableInstant> extends JodaDeserializer<T>
    {
        public DateTimeDeserializer(final Class<T> clazz) {
            super(clazz);
        }
        
        @Override
        public T deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT) {
                return (T)new DateTime(jsonParser.getLongValue(), DateTimeZone.UTC);
            }
            if (currentToken != JsonToken.VALUE_STRING) {
                throw deserializationContext.mappingException(this.getValueClass());
            }
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return null;
            }
            return (T)new DateTime((Object)trim, DateTimeZone.UTC);
        }
    }
    
    abstract static class JodaDeserializer<T> extends StdScalarDeserializer<T>
    {
        static final DateTimeFormatter _localDateTimeFormat;
        
        static {
            _localDateTimeFormat = ISODateTimeFormat.localDateOptionalTimeParser();
        }
        
        protected JodaDeserializer(final Class<T> clazz) {
            super(clazz);
        }
        
        protected DateTime parseLocal(final JsonParser jsonParser) throws IOException, JsonProcessingException {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return null;
            }
            return JodaDeserializer._localDateTimeFormat.parseDateTime(trim);
        }
    }
    
    public static class LocalDateDeserializer extends JodaDeserializer<LocalDate>
    {
        public LocalDateDeserializer() {
            super(LocalDate.class);
        }
        
        @Override
        public LocalDate deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.isExpectedStartArrayToken()) {
                jsonParser.nextToken();
                final int intValue = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue2 = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue3 = jsonParser.getIntValue();
                if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "after LocalDate ints");
                }
                return new LocalDate(intValue, intValue2, intValue3);
            }
            else {
                switch (jsonParser.getCurrentToken()) {
                    default: {
                        throw deserializationContext.wrongTokenException(jsonParser, JsonToken.START_ARRAY, "expected JSON Array, String or Number");
                    }
                    case VALUE_NUMBER_INT: {
                        return new LocalDate(jsonParser.getLongValue());
                    }
                    case VALUE_STRING: {
                        final DateTime local = ((JodaDeserializer)this).parseLocal(jsonParser);
                        if (local == null) {
                            return null;
                        }
                        return local.toLocalDate();
                    }
                }
            }
        }
    }
    
    public static class LocalDateTimeDeserializer extends JodaDeserializer<LocalDateTime>
    {
        public LocalDateTimeDeserializer() {
            super(LocalDateTime.class);
        }
        
        @Override
        public LocalDateTime deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.isExpectedStartArrayToken()) {
                jsonParser.nextToken();
                final int intValue = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue2 = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue3 = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue4 = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue5 = jsonParser.getIntValue();
                jsonParser.nextToken();
                final int intValue6 = jsonParser.getIntValue();
                final JsonToken nextToken = jsonParser.nextToken();
                final JsonToken end_ARRAY = JsonToken.END_ARRAY;
                int intValue7 = 0;
                if (nextToken != end_ARRAY) {
                    intValue7 = jsonParser.getIntValue();
                    jsonParser.nextToken();
                }
                if (jsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
                    throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "after LocalDateTime ints");
                }
                return new LocalDateTime(intValue, intValue2, intValue3, intValue4, intValue5, intValue6, intValue7);
            }
            else {
                switch (jsonParser.getCurrentToken()) {
                    default: {
                        throw deserializationContext.wrongTokenException(jsonParser, JsonToken.START_ARRAY, "expected JSON Array or Number");
                    }
                    case VALUE_NUMBER_INT: {
                        return new LocalDateTime(jsonParser.getLongValue());
                    }
                    case VALUE_STRING: {
                        final DateTime local = ((JodaDeserializer)this).parseLocal(jsonParser);
                        if (local == null) {
                            return null;
                        }
                        return local.toLocalDateTime();
                    }
                }
            }
        }
    }
    
    public static class PeriodDeserializer extends JodaDeserializer<ReadablePeriod>
    {
        public PeriodDeserializer() {
            super(ReadablePeriod.class);
        }
        
        @Override
        public ReadablePeriod deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            switch (jsonParser.getCurrentToken()) {
                default: {
                    throw deserializationContext.wrongTokenException(jsonParser, JsonToken.START_ARRAY, "expected JSON Number or String");
                }
                case VALUE_NUMBER_INT: {
                    return (ReadablePeriod)new Period(jsonParser.getLongValue());
                }
                case VALUE_STRING: {
                    return (ReadablePeriod)new Period((Object)jsonParser.getText());
                }
            }
        }
    }
}
