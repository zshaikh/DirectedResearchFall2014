package com.flurry.org.codehaus.jackson.node;

import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public abstract class BaseJsonNode extends JsonNode implements JsonSerializableWithType
{
    @Override
    public abstract JsonToken asToken();
    
    @Override
    public ObjectNode findParent(final String s) {
        return null;
    }
    
    @Override
    public List<JsonNode> findParents(final String s, final List<JsonNode> list) {
        return list;
    }
    
    @Override
    public final JsonNode findPath(final String s) {
        final JsonNode value = this.findValue(s);
        if (value == null) {
            return MissingNode.getInstance();
        }
        return value;
    }
    
    @Override
    public JsonNode findValue(final String s) {
        return null;
    }
    
    @Override
    public List<JsonNode> findValues(final String s, final List<JsonNode> list) {
        return list;
    }
    
    @Override
    public List<String> findValuesAsText(final String s, final List<String> list) {
        return list;
    }
    
    @Override
    public JsonParser.NumberType getNumberType() {
        return null;
    }
    
    @Override
    public abstract void serialize(final JsonGenerator p0, final SerializerProvider p1) throws IOException, JsonProcessingException;
    
    @Override
    public abstract void serializeWithType(final JsonGenerator p0, final SerializerProvider p1, final TypeSerializer p2) throws IOException, JsonProcessingException;
    
    @Override
    public JsonParser traverse() {
        return new TreeTraversingParser(this);
    }
}
