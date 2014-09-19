package com.flurry.org.codehaus.jackson.map.ser.std;

import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class TimeZoneSerializer extends ScalarSerializerBase<TimeZone>
{
    public static final TimeZoneSerializer instance;
    
    static {
        instance = new TimeZoneSerializer();
    }
    
    public TimeZoneSerializer() {
        super(TimeZone.class);
    }
    
    @Override
    public void serialize(final TimeZone timeZone, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeString(timeZone.getID());
    }
    
    @Override
    public void serializeWithType(final TimeZone timeZone, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForScalar(timeZone, jsonGenerator, TimeZone.class);
        this.serialize(timeZone, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(timeZone, jsonGenerator);
    }
}
