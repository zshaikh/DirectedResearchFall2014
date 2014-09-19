package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.ser.impl.*;

public class CollectionSerializer extends AsArraySerializerBase<Collection<?>>
{
    public CollectionSerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty, final JsonSerializer<Object> jsonSerializer) {
        super(Collection.class, javaType, b, typeSerializer, beanProperty, jsonSerializer);
    }
    
    @Override
    public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
        return new CollectionSerializer(this._elementType, this._staticTyping, typeSerializer, this._property, this._elementSerializer);
    }
    
    public void serializeContents(final Collection<?> collection, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (this._elementSerializer != null) {
            this.serializeContentsUsing(collection, jsonGenerator, serializerProvider, this._elementSerializer);
        }
        else {
            final Iterator<?> iterator = collection.iterator();
            if (iterator.hasNext()) {
                PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
                final TypeSerializer valueTypeSerializer = this._valueTypeSerializer;
                int n = 0;
            Label_0071_Outer:
                while (true) {
                Label_0135_Outer:
                    while (true) {
                        Object next;
                        JsonSerializer<Object> jsonSerializer;
                        while (true) {
                            Class<?> class1 = null;
                            try {
                                while (true) {
                                    next = iterator.next();
                                    Label_0085: {
                                        if (next != null) {
                                            break Label_0085;
                                        }
                                        serializerProvider.defaultSerializeNull(jsonGenerator);
                                        while (true) {
                                            ++n;
                                            try {
                                                if (!iterator.hasNext()) {
                                                    return;
                                                }
                                                break;
                                                // iftrue(Label_0171:, !this._elementType.hasGenericTypes())
                                            Label_0141:
                                                while (true) {
                                                    jsonSerializer = this._findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, class1), serializerProvider);
                                                    propertySerializerMap = this._dynamicSerializers;
                                                    break Label_0141;
                                                    continue Label_0135_Outer;
                                                }
                                                // iftrue(Label_0185:, valueTypeSerializer != null)
                                                jsonSerializer.serialize(next, jsonGenerator, serializerProvider);
                                                continue Label_0071_Outer;
                                                class1 = next.getClass();
                                                jsonSerializer = propertySerializerMap.serializerFor(class1);
                                            }
                                            // iftrue(Label_0141:, jsonSerializer != null)
                                            catch (Exception ex) {
                                                this.wrapAndThrow(serializerProvider, ex, collection, n);
                                                return;
                                            }
                                        }
                                    }
                                }
                            }
                            catch (Exception) {}
                            Label_0171: {
                                jsonSerializer = this._findAndAddDynamic(propertySerializerMap, class1, serializerProvider);
                            }
                            continue;
                        }
                        Label_0185: {
                            jsonSerializer.serializeWithType(next, jsonGenerator, serializerProvider, valueTypeSerializer);
                        }
                        continue Label_0135_Outer;
                    }
                }
            }
        }
    }
    
    public void serializeContentsUsing(final Collection<?> collection, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final JsonSerializer<Object> jsonSerializer) throws IOException, JsonGenerationException {
        final Iterator<?> iterator = collection.iterator();
        while (true) {
            while (true) {
                Label_0027: {
                    if (iterator.hasNext()) {
                        final TypeSerializer valueTypeSerializer = this._valueTypeSerializer;
                        final int n = 0;
                        break Label_0027;
                    }
                    return;
                    while (true) {
                    Label_0049_Outer:
                        while (true) {
                            final Object next;
                            while (true) {
                                try {
                                    serializerProvider.defaultSerializeNull(jsonGenerator);
                                    int n = 0;
                                    ++n;
                                    if (!iterator.hasNext()) {
                                        return;
                                    }
                                    break;
                                    while (true) {
                                        jsonSerializer.serialize(next, jsonGenerator, serializerProvider);
                                        continue Label_0049_Outer;
                                        continue;
                                    }
                                }
                                // iftrue(Label_0092:, valueTypeSerializer != null)
                                catch (Exception ex) {
                                    final int n;
                                    this.wrapAndThrow(serializerProvider, ex, collection, n);
                                    continue;
                                }
                                break;
                            }
                            Label_0092: {
                                final TypeSerializer valueTypeSerializer;
                                jsonSerializer.serializeWithType(next, jsonGenerator, serializerProvider, valueTypeSerializer);
                            }
                            continue;
                        }
                    }
                }
                final Object next = iterator.next();
                if (next == null) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
}
