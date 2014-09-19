package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.util.*;

@JacksonStdImpl
public class CalendarDeserializer extends StdScalarDeserializer<Calendar>
{
    protected final Class<? extends Calendar> _calendarClass;
    
    public CalendarDeserializer() {
        this((Class<? extends Calendar>)null);
    }
    
    public CalendarDeserializer(final Class<? extends Calendar> calendarClass) {
        super(Calendar.class);
        this._calendarClass = calendarClass;
    }
    
    @Override
    public Calendar deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final Date parseDate = this._parseDate(jsonParser, deserializationContext);
        if (parseDate == null) {
            return null;
        }
        if (this._calendarClass == null) {
            return deserializationContext.constructCalendar(parseDate);
        }
        try {
            final Calendar calendar = (Calendar)this._calendarClass.newInstance();
            calendar.setTimeInMillis(parseDate.getTime());
            return calendar;
        }
        catch (Exception ex) {
            throw deserializationContext.instantiationException(this._calendarClass, ex);
        }
    }
}
