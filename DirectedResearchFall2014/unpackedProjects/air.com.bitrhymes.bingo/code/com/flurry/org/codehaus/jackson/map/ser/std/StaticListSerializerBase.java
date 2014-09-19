package com.flurry.org.codehaus.jackson.map.ser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.node.*;

public abstract class StaticListSerializerBase<T extends Collection<?>> extends SerializerBase<T>
{
    protected final BeanProperty _property;
    
    protected StaticListSerializerBase(final Class<?> clazz, final BeanProperty property) {
        super(clazz, false);
        this._property = property;
    }
    
    protected abstract JsonNode contentSchema();
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
        final ObjectNode schemaNode = this.createSchemaNode("array", true);
        schemaNode.put("items", this.contentSchema());
        return schemaNode;
    }
}
