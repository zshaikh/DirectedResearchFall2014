package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class IterableSerializer extends AsArraySerializerBase<Iterable<?>>
{
    public IterableSerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
        super(Iterable.class, javaType, b, typeSerializer, beanProperty, null);
    }
    
    @Override
    public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
        return new IterableSerializer(this._elementType, this._staticTyping, typeSerializer, this._property);
    }
    
    public void serializeContents(final Iterable<?> iterable, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        final Iterator<?> iterator = iterable.iterator();
        if (iterator.hasNext()) {
            final TypeSerializer valueTypeSerializer = this._valueTypeSerializer;
            JsonSerializer<Object> valueSerializer = null;
            Class<?> clazz = null;
            do {
                final Object next = iterator.next();
                if (next == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                }
                else {
                    final Class<?> class1 = next.getClass();
                    JsonSerializer<Object> jsonSerializer;
                    if (class1 == clazz) {
                        jsonSerializer = valueSerializer;
                    }
                    else {
                        jsonSerializer = (valueSerializer = serializerProvider.findValueSerializer(class1, this._property));
                        clazz = class1;
                    }
                    if (valueTypeSerializer == null) {
                        jsonSerializer.serialize(next, jsonGenerator, serializerProvider);
                    }
                    else {
                        jsonSerializer.serializeWithType(next, jsonGenerator, serializerProvider, valueTypeSerializer);
                    }
                }
            } while (iterator.hasNext());
        }
    }
}
