package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.node.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

public class JsonNodeDeserializer extends BaseNodeDeserializer<JsonNode>
{
    private static final JsonNodeDeserializer instance;
    
    static {
        instance = new JsonNodeDeserializer();
    }
    
    protected JsonNodeDeserializer() {
        super(JsonNode.class);
    }
    
    public static JsonDeserializer<? extends JsonNode> getDeserializer(final Class<?> clazz) {
        if (clazz == ObjectNode.class) {
            return ObjectDeserializer.getInstance();
        }
        if (clazz == ArrayNode.class) {
            return ArrayDeserializer.getInstance();
        }
        return JsonNodeDeserializer.instance;
    }
    
    @Override
    public JsonNode deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        switch (jsonParser.getCurrentToken()) {
            default: {
                return this.deserializeAny(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
            case START_OBJECT: {
                return this.deserializeObject(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
            case START_ARRAY: {
                return this.deserializeArray(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
        }
    }
    
    static final class ArrayDeserializer extends BaseNodeDeserializer<ArrayNode>
    {
        protected static final ArrayDeserializer _instance;
        
        static {
            _instance = new ArrayDeserializer();
        }
        
        protected ArrayDeserializer() {
            super(ArrayNode.class);
        }
        
        public static ArrayDeserializer getInstance() {
            return ArrayDeserializer._instance;
        }
        
        @Override
        public ArrayNode deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.isExpectedStartArrayToken()) {
                return this.deserializeArray(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
            throw deserializationContext.mappingException(ArrayNode.class);
        }
    }
    
    static final class ObjectDeserializer extends BaseNodeDeserializer<ObjectNode>
    {
        protected static final ObjectDeserializer _instance;
        
        static {
            _instance = new ObjectDeserializer();
        }
        
        protected ObjectDeserializer() {
            super(ObjectNode.class);
        }
        
        public static ObjectDeserializer getInstance() {
            return ObjectDeserializer._instance;
        }
        
        @Override
        public ObjectNode deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.START_OBJECT) {
                jsonParser.nextToken();
                return this.deserializeObject(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
            if (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                return this.deserializeObject(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
            }
            throw deserializationContext.mappingException(ObjectNode.class);
        }
    }
}
