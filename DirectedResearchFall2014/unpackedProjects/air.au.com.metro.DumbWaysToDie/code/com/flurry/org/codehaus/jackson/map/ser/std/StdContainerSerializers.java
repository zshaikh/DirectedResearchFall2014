package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.ser.impl.*;
import java.util.*;

public class StdContainerSerializers
{
    public static ContainerSerializerBase<?> collectionSerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty, final JsonSerializer<Object> jsonSerializer) {
        return new CollectionSerializer(javaType, b, typeSerializer, beanProperty, jsonSerializer);
    }
    
    public static JsonSerializer<?> enumSetSerializer(final JavaType javaType, final BeanProperty beanProperty) {
        return new EnumSetSerializer(javaType, beanProperty);
    }
    
    public static ContainerSerializerBase<?> indexedListSerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty, final JsonSerializer<Object> jsonSerializer) {
        return new IndexedListSerializer(javaType, b, typeSerializer, beanProperty, jsonSerializer);
    }
    
    public static ContainerSerializerBase<?> iterableSerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
        return new IterableSerializer(javaType, b, typeSerializer, beanProperty);
    }
    
    public static ContainerSerializerBase<?> iteratorSerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
        return new IteratorSerializer(javaType, b, typeSerializer, beanProperty);
    }
    
    @JacksonStdImpl
    public static class IndexedListSerializer extends AsArraySerializerBase<List<?>>
    {
        public IndexedListSerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty, final JsonSerializer<Object> jsonSerializer) {
            super(List.class, javaType, b, typeSerializer, beanProperty, jsonSerializer);
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return new IndexedListSerializer(this._elementType, this._staticTyping, typeSerializer, this._property, this._elementSerializer);
        }
        
        public void serializeContents(final List<?> list, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            if (this._elementSerializer != null) {
                this.serializeContentsUsing(list, jsonGenerator, serializerProvider, this._elementSerializer);
            }
            else {
                if (this._valueTypeSerializer != null) {
                    this.serializeTypedContents(list, jsonGenerator, serializerProvider);
                    return;
                }
                final int size = list.size();
                if (size != 0) {
                    while (true) {
                        int n = 0;
                        while (true) {
                            Label_0185: {
                                while (true) {
                                    PropertySerializerMap propertySerializerMap = null;
                                    Class<?> class1 = null;
                                    Label_0167: {
                                        try {
                                            propertySerializerMap = this._dynamicSerializers;
                                            if (n >= size) {
                                                break;
                                            }
                                            final Object value = list.get(n);
                                            if (value == null) {
                                                serializerProvider.defaultSerializeNull(jsonGenerator);
                                                break Label_0185;
                                            }
                                            class1 = value.getClass();
                                            JsonSerializer<Object> jsonSerializer = propertySerializerMap.serializerFor(class1);
                                            if (jsonSerializer == null) {
                                                if (!this._elementType.hasGenericTypes()) {
                                                    break Label_0167;
                                                }
                                                jsonSerializer = this._findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, class1), serializerProvider);
                                                propertySerializerMap = this._dynamicSerializers;
                                            }
                                            jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                                            break Label_0185;
                                        }
                                        catch (Exception ex) {
                                            this.wrapAndThrow(serializerProvider, ex, list, n);
                                            return;
                                        }
                                    }
                                    JsonSerializer<Object> jsonSerializer = this._findAndAddDynamic(propertySerializerMap, class1, serializerProvider);
                                    continue;
                                }
                            }
                            ++n;
                            continue;
                        }
                    }
                }
            }
        }
        
        public void serializeContentsUsing(final List<?> list, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final JsonSerializer<Object> jsonSerializer) throws IOException, JsonGenerationException {
            final int size = list.size();
            if (size != 0) {
                final TypeSerializer valueTypeSerializer = this._valueTypeSerializer;
                for (int i = 0; i < size; ++i) {
                    final Object value = list.get(i);
                    Label_0053: {
                        if (value != null) {
                            break Label_0053;
                        }
                        try {
                            serializerProvider.defaultSerializeNull(jsonGenerator);
                            continue;
                            // iftrue(Label_0085:, valueTypeSerializer != null)
                            jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                        }
                        catch (Exception ex) {
                            this.wrapAndThrow(serializerProvider, ex, list, i);
                        }
                    }
                    continue;
                    Label_0085: {
                        jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, valueTypeSerializer);
                    }
                }
            }
        }
        
        public void serializeTypedContents(final List<?> list, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            final int size = list.size();
            if (size != 0) {
                while (true) {
                    int n = 0;
                    while (true) {
                        Label_0160: {
                            while (true) {
                                PropertySerializerMap propertySerializerMap = null;
                                Class<?> class1 = null;
                                Label_0142: {
                                    try {
                                        final TypeSerializer valueTypeSerializer = this._valueTypeSerializer;
                                        propertySerializerMap = this._dynamicSerializers;
                                        if (n >= size) {
                                            break;
                                        }
                                        final Object value = list.get(n);
                                        if (value == null) {
                                            serializerProvider.defaultSerializeNull(jsonGenerator);
                                            break Label_0160;
                                        }
                                        class1 = value.getClass();
                                        JsonSerializer<Object> jsonSerializer = propertySerializerMap.serializerFor(class1);
                                        if (jsonSerializer == null) {
                                            if (!this._elementType.hasGenericTypes()) {
                                                break Label_0142;
                                            }
                                            jsonSerializer = this._findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, class1), serializerProvider);
                                            propertySerializerMap = this._dynamicSerializers;
                                        }
                                        jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, valueTypeSerializer);
                                        break Label_0160;
                                    }
                                    catch (Exception ex) {
                                        this.wrapAndThrow(serializerProvider, ex, list, n);
                                        return;
                                    }
                                }
                                JsonSerializer<Object> jsonSerializer = this._findAndAddDynamic(propertySerializerMap, class1, serializerProvider);
                                continue;
                            }
                        }
                        ++n;
                        continue;
                    }
                }
            }
        }
    }
    
    @JacksonStdImpl
    public static class IteratorSerializer extends AsArraySerializerBase<Iterator<?>>
    {
        public IteratorSerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
            super(Iterator.class, javaType, b, typeSerializer, beanProperty, null);
        }
        
        @Override
        public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
            return new IteratorSerializer(this._elementType, this._staticTyping, typeSerializer, this._property);
        }
        
        public void serializeContents(final Iterator<?> iterator, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
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
}
