package com.flurry.org.codehaus.jackson.map.deser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class DateDeserializer extends StdScalarDeserializer<Date>
{
    public DateDeserializer() {
        super(Date.class);
    }
    
    @Override
    public Date deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this._parseDate(jsonParser, deserializationContext);
    }
}
