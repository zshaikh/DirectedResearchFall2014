package com.flurry.org.codehaus.jackson.map;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class KeyDeserializer
{
    public abstract Object deserializeKey(final String p0, final DeserializationContext p1) throws IOException, JsonProcessingException;
    
    public abstract static class None extends KeyDeserializer
    {
    }
}
