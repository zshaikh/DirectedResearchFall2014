package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class ValueNode extends BaseJsonNode
{
    @Override
    public abstract JsonToken asToken();
    
    @Override
    public boolean isValueNode() {
        return true;
    }
    
    @Override
    public JsonNode path(final int n) {
        return MissingNode.getInstance();
    }
    
    @Override
    public JsonNode path(final String s) {
        return MissingNode.getInstance();
    }
    
    @Override
    public void serializeWithType(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForScalar(this, jsonGenerator);
        this.serialize(jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(this, jsonGenerator);
    }
    
    @Override
    public String toString() {
        return this.asText();
    }
}
