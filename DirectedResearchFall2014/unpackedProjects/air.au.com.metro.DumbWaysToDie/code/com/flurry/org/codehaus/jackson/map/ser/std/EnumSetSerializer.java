package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.util.*;

public class EnumSetSerializer extends AsArraySerializerBase<EnumSet<? extends Enum<?>>>
{
    public EnumSetSerializer(final JavaType javaType, final BeanProperty beanProperty) {
        super(EnumSet.class, javaType, true, null, beanProperty, null);
    }
    
    @Override
    public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
        return this;
    }
    
    public void serializeContents(final EnumSet<? extends Enum<?>> set, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        JsonSerializer<Object> jsonSerializer = this._elementSerializer;
        for (final Enum<?> enum1 : set) {
            if (jsonSerializer == null) {
                jsonSerializer = serializerProvider.findValueSerializer(enum1.getDeclaringClass(), this._property);
            }
            jsonSerializer.serialize(enum1, jsonGenerator, serializerProvider);
        }
    }
}
