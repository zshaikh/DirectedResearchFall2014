package com.fusepowered.m1.google.gson;

import java.util.*;
import java.text.*;
import java.lang.reflect.*;
import java.sql.*;

final class DefaultDateTypeAdapter implements JsonSerializer<Date>, JsonDeserializer<Date>
{
    private final DateFormat enUsFormat;
    private final DateFormat iso8601Format;
    private final DateFormat localFormat;
    
    DefaultDateTypeAdapter() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }
    
    DefaultDateTypeAdapter(final int n) {
        this(DateFormat.getDateInstance(n, Locale.US), DateFormat.getDateInstance(n));
    }
    
    public DefaultDateTypeAdapter(final int n, final int n2) {
        this(DateFormat.getDateTimeInstance(n, n2, Locale.US), DateFormat.getDateTimeInstance(n, n2));
    }
    
    DefaultDateTypeAdapter(final String s) {
        this(new SimpleDateFormat(s, Locale.US), new SimpleDateFormat(s));
    }
    
    DefaultDateTypeAdapter(final DateFormat enUsFormat, final DateFormat localFormat) {
        super();
        this.enUsFormat = enUsFormat;
        this.localFormat = localFormat;
        (this.iso8601Format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US)).setTimeZone(TimeZone.getTimeZone("UTC"));
    }
    
    private Date deserializeToDate(final JsonElement jsonElement) {
        final DateFormat localFormat = this.localFormat;
        // monitorenter(localFormat)
        try {
            return this.localFormat.parse(jsonElement.getAsString());
        }
        catch (ParseException ex2) {
            try {
                return this.enUsFormat.parse(jsonElement.getAsString());
            }
            catch (ParseException ex3) {
                try {
                    // monitorexit(localFormat)
                    return this.iso8601Format.parse(jsonElement.getAsString());
                }
                catch (ParseException ex) {
                    throw new JsonSyntaxException(jsonElement.getAsString(), ex);
                    try {}
                    finally {
                    }
                    // monitorexit(localFormat)
                }
            }
        }
    }
    
    @Override
    public Date deserialize(final JsonElement jsonElement, final Type obj, final JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (!(jsonElement instanceof JsonPrimitive)) {
            throw new JsonParseException("The date should be a string value");
        }
        final Date deserializeToDate = this.deserializeToDate(jsonElement);
        if (obj == Date.class) {
            return deserializeToDate;
        }
        if (obj == Timestamp.class) {
            return new Timestamp(deserializeToDate.getTime());
        }
        if (obj == java.sql.Date.class) {
            return new java.sql.Date(deserializeToDate.getTime());
        }
        throw new IllegalArgumentException(this.getClass() + " cannot deserialize to " + obj);
    }
    
    @Override
    public JsonElement serialize(final Date date, final Type type, final JsonSerializationContext jsonSerializationContext) {
        synchronized (this.localFormat) {
            return new JsonPrimitive(this.enUsFormat.format(date));
        }
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(DefaultDateTypeAdapter.class.getSimpleName());
        sb.append('(').append(this.localFormat.getClass().getSimpleName()).append(')');
        return sb.toString();
    }
}
