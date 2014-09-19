package com.flurry.org.codehaus.jackson.map.deser.std;

import java.sql.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class TimestampDeserializer extends StdScalarDeserializer<Timestamp>
{
    public TimestampDeserializer() {
        super(Timestamp.class);
    }
    
    @Override
    public Timestamp deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return new Timestamp(this._parseDate(jsonParser, deserializationContext).getTime());
    }
}
