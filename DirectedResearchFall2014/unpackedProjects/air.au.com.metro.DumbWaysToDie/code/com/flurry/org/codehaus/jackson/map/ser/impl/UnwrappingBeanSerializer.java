package com.flurry.org.codehaus.jackson.map.ser.impl;

import com.flurry.org.codehaus.jackson.map.ser.std.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class UnwrappingBeanSerializer extends BeanSerializerBase
{
    public UnwrappingBeanSerializer(final BeanSerializerBase beanSerializerBase) {
        super(beanSerializerBase);
    }
    
    @Override
    public boolean isUnwrappingSerializer() {
        return true;
    }
    
    @Override
    public final void serialize(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (this._propertyFilterId != null) {
            this.serializeFieldsFiltered(o, jsonGenerator, serializerProvider);
            return;
        }
        this.serializeFields(o, jsonGenerator, serializerProvider);
    }
    
    @Override
    public String toString() {
        return "UnwrappingBeanSerializer for " + this.handledType().getName();
    }
    
    @Override
    public JsonSerializer<Object> unwrappingSerializer() {
        return this;
    }
}
