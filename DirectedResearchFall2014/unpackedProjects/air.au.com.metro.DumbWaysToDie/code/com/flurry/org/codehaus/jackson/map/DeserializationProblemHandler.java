package com.flurry.org.codehaus.jackson.map;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class DeserializationProblemHandler
{
    public boolean handleUnknownProperty(final DeserializationContext deserializationContext, final JsonDeserializer<?> jsonDeserializer, final Object o, final String s) throws IOException, JsonProcessingException {
        return false;
    }
}
