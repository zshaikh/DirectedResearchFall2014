package com.flurry.org.codehaus.jackson.schema;

import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public interface SchemaAware
{
    JsonNode getSchema(SerializerProvider p0, Type p1) throws JsonMappingException;
}
