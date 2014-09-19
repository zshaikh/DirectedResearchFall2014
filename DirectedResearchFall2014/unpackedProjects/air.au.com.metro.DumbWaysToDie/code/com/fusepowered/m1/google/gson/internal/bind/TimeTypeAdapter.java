package com.fusepowered.m1.google.gson.internal.bind;

import java.sql.*;
import com.fusepowered.m1.google.gson.reflect.*;
import java.io.*;
import com.fusepowered.m1.google.gson.*;
import java.text.*;
import com.fusepowered.m1.google.gson.stream.*;
import java.util.*;

public final class TimeTypeAdapter extends TypeAdapter<Time>
{
    public static final TypeAdapterFactory FACTORY;
    private final DateFormat format;
    
    static {
        FACTORY = new TypeAdapterFactory() {
            @Override
            public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
                if (typeToken.getRawType() == Time.class) {
                    return (TypeAdapter<T>)new TimeTypeAdapter();
                }
                return null;
            }
        };
    }
    
    public TimeTypeAdapter() {
        super();
        this.format = new SimpleDateFormat("hh:mm:ss a");
    }
    
    @Override
    public Time read(final JsonReader jsonReader) throws IOException {
        synchronized (this) {
            Time time;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                time = null;
            }
            else {
                try {
                    time = new Time(this.format.parse(jsonReader.nextString()).getTime());
                }
                catch (ParseException ex) {
                    throw new JsonSyntaxException(ex);
                }
            }
            return time;
        }
    }
    
    @Override
    public void write(final JsonWriter jsonWriter, final Time date) throws IOException {
        // monitorenter(this)
        Label_0019: {
            if (date != null) {
                break Label_0019;
            }
            String format = null;
            try {
                while (true) {
                    jsonWriter.value(format);
                    return;
                    format = this.format.format(date);
                    continue;
                }
            }
            finally {
            }
            // monitorexit(this)
        }
    }
}
