package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.node.*;

@Deprecated
public class JsonNodeDeserializer extends com.flurry.org.codehaus.jackson.map.deser.std.JsonNodeDeserializer
{
    @Deprecated
    public static final JsonNodeDeserializer instance;
    
    static {
        instance = new JsonNodeDeserializer();
    }
    
    @Deprecated
    protected final JsonNode deserializeAny(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this.deserializeAny(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
    }
    
    @Deprecated
    protected final ArrayNode deserializeArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this.deserializeArray(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
    }
    
    @Deprecated
    protected final ObjectNode deserializeObject(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this.deserializeObject(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
    }
}
