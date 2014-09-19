package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.ser.impl.*;

public class BeanSerializer extends BeanSerializerBase
{
    protected BeanSerializer(final BeanSerializer beanSerializer) {
        super(beanSerializer);
    }
    
    protected BeanSerializer(final BeanSerializerBase beanSerializerBase) {
        super(beanSerializerBase);
    }
    
    public BeanSerializer(final JavaType javaType, final BeanPropertyWriter[] array, final BeanPropertyWriter[] array2, final AnyGetterWriter anyGetterWriter, final Object o) {
        super(javaType, array, array2, anyGetterWriter, o);
    }
    
    public BeanSerializer(final Class<?> clazz, final BeanPropertyWriter[] array, final BeanPropertyWriter[] array2, final AnyGetterWriter anyGetterWriter, final Object o) {
        super(clazz, array, array2, anyGetterWriter, o);
    }
    
    public static BeanSerializer createDummy(final Class<?> clazz) {
        return new BeanSerializer(clazz, BeanSerializer.NO_PROPS, null, null, null);
    }
    
    @Override
    public final void serialize(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeStartObject();
        if (this._propertyFilterId != null) {
            this.serializeFieldsFiltered(o, jsonGenerator, serializerProvider);
        }
        else {
            this.serializeFields(o, jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndObject();
    }
    
    @Override
    public String toString() {
        return "BeanSerializer for " + this.handledType().getName();
    }
    
    @Override
    public JsonSerializer<Object> unwrappingSerializer() {
        return new UnwrappingBeanSerializer(this);
    }
}
