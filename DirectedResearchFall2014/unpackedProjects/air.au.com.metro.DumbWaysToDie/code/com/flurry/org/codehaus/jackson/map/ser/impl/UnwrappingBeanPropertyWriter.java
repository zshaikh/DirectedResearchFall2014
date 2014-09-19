package com.flurry.org.codehaus.jackson.map.ser.impl;

import com.flurry.org.codehaus.jackson.map.ser.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

public class UnwrappingBeanPropertyWriter extends BeanPropertyWriter
{
    public UnwrappingBeanPropertyWriter(final BeanPropertyWriter beanPropertyWriter) {
        super(beanPropertyWriter);
    }
    
    public UnwrappingBeanPropertyWriter(final BeanPropertyWriter beanPropertyWriter, final JsonSerializer<Object> jsonSerializer) {
        super(beanPropertyWriter, jsonSerializer);
    }
    
    @Override
    protected JsonSerializer<Object> _findAndAddDynamic(final PropertySerializerMap propertySerializerMap, final Class<?> clazz, final SerializerProvider serializerProvider) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        if (this._nonTrivialBaseType != null) {
            jsonSerializer = serializerProvider.findValueSerializer(serializerProvider.constructSpecializedType(this._nonTrivialBaseType, clazz), this);
        }
        else {
            jsonSerializer = serializerProvider.findValueSerializer(clazz, this);
        }
        if (!jsonSerializer.isUnwrappingSerializer()) {
            jsonSerializer = jsonSerializer.unwrappingSerializer();
        }
        this._dynamicSerializers = this._dynamicSerializers.newWith(clazz, jsonSerializer);
        return jsonSerializer;
    }
    
    @Override
    public void serializeAsField(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws Exception {
        final Object value = this.get(o);
        if (value != null) {
            if (value == o) {
                this._reportSelfReference(o);
            }
            if (this._suppressableValue == null || !this._suppressableValue.equals(value)) {
                JsonSerializer<Object> jsonSerializer = this._serializer;
                if (jsonSerializer == null) {
                    final Class<?> class1 = value.getClass();
                    final PropertySerializerMap dynamicSerializers = this._dynamicSerializers;
                    jsonSerializer = dynamicSerializers.serializerFor(class1);
                    if (jsonSerializer == null) {
                        jsonSerializer = this._findAndAddDynamic(dynamicSerializers, class1, serializerProvider);
                    }
                }
                if (!jsonSerializer.isUnwrappingSerializer()) {
                    jsonGenerator.writeFieldName(this._name);
                }
                if (this._typeSerializer == null) {
                    jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                    return;
                }
                jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, this._typeSerializer);
            }
        }
    }
    
    @Override
    public BeanPropertyWriter withSerializer(JsonSerializer<Object> unwrappingSerializer) {
        if (this.getClass() != UnwrappingBeanPropertyWriter.class) {
            throw new IllegalStateException("UnwrappingBeanPropertyWriter sub-class does not override 'withSerializer()'; needs to!");
        }
        if (!unwrappingSerializer.isUnwrappingSerializer()) {
            unwrappingSerializer = unwrappingSerializer.unwrappingSerializer();
        }
        return new UnwrappingBeanPropertyWriter(this, unwrappingSerializer);
    }
}
