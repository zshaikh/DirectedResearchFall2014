package com.fusepowered.m1.google.gson.internal.bind;

import com.fusepowered.m1.google.gson.reflect.*;
import java.util.*;
import com.fusepowered.m1.google.gson.*;
import java.text.*;
import java.io.*;
import com.fusepowered.m1.google.gson.stream.*;

public final class DateTypeAdapter extends TypeAdapter<Date>
{
    public static final TypeAdapterFactory FACTORY;
    private final DateFormat enUsFormat;
    private final DateFormat iso8601Format;
    private final DateFormat localFormat;
    
    static {
        FACTORY = new TypeAdapterFactory() {
            @Override
            public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
                if (typeToken.getRawType() == Date.class) {
                    return (TypeAdapter<T>)new DateTypeAdapter();
                }
                return null;
            }
        };
    }
    
    public DateTypeAdapter() {
        super();
        this.enUsFormat = DateFormat.getDateTimeInstance(2, 2, Locale.US);
        this.localFormat = DateFormat.getDateTimeInstance(2, 2);
        this.iso8601Format = buildIso8601Format();
    }
    
    private static DateFormat buildIso8601Format() {
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }
    
    private Date deserializeToDate(final String source) {
        synchronized (this) {
            try {
                return this.localFormat.parse(source);
            }
            catch (ParseException ex2) {
                try {
                    final Date date = this.enUsFormat.parse(source);
                }
                catch (ParseException ex3) {
                    try {
                        final Date date = this.iso8601Format.parse(source);
                    }
                    catch (ParseException ex) {
                        throw new JsonSyntaxException(source, ex);
                    }
                }
            }
        }
    }
    
    @Override
    public Date read(final JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return this.deserializeToDate(jsonReader.nextString());
    }
    
    @Override
    public void write(final JsonWriter jsonWriter, final Date date) throws IOException {
        // monitorenter(this)
        Label_0014: {
            if (date != null) {
                break Label_0014;
            }
            try {
                jsonWriter.nullValue();
                return;
                jsonWriter.value(this.enUsFormat.format(date));
            }
            finally {
            }
            // monitorexit(this)
        }
    }
}
