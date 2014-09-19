package com.flurry.org.codehaus.jackson.schema;

import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class JsonSchema
{
    private final ObjectNode schema;
    
    public JsonSchema(final ObjectNode schema) {
        super();
        this.schema = schema;
    }
    
    public static JsonNode getDefaultSchemaNode() {
        final ObjectNode objectNode = JsonNodeFactory.instance.objectNode();
        objectNode.put("type", "any");
        return objectNode;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (!(o instanceof JsonSchema)) {
            return false;
        }
        final JsonSchema jsonSchema = (JsonSchema)o;
        if (this.schema == null) {
            return jsonSchema.schema == null;
        }
        return this.schema.equals(jsonSchema.schema);
    }
    
    @JsonValue
    public ObjectNode getSchemaNode() {
        return this.schema;
    }
    
    @Override
    public String toString() {
        return this.schema.toString();
    }
}
