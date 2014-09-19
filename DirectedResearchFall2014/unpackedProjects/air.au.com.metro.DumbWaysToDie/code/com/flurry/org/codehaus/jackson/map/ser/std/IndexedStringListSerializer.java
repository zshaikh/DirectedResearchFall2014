package com.flurry.org.codehaus.jackson.map.ser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public final class IndexedStringListSerializer extends StaticListSerializerBase<List<String>> implements ResolvableSerializer
{
    protected JsonSerializer<String> _serializer;
    
    public IndexedStringListSerializer(final BeanProperty beanProperty) {
        super(List.class, beanProperty);
    }
    
    private final void serializeContents(final List<String> list, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        while (true) {
            int n = 0;
            while (true) {
                Label_0066: {
                    try {
                        final int size = list.size();
                        if (n < size) {
                            final String s = list.get(n);
                            if (s == null) {
                                serializerProvider.defaultSerializeNull(jsonGenerator);
                                break Label_0066;
                            }
                            jsonGenerator.writeString(s);
                            break Label_0066;
                        }
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(serializerProvider, ex, list, n);
                    }
                    break;
                }
                ++n;
                continue;
            }
        }
    }
    
    private final void serializeUsingCustom(final List<String> list, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        while (true) {
            int n = 0;
            while (true) {
                Label_0078: {
                    try {
                        final int size = list.size();
                        final JsonSerializer<String> serializer = this._serializer;
                        n = 0;
                        if (n < size) {
                            final String s = list.get(n);
                            if (s == null) {
                                serializerProvider.defaultSerializeNull(jsonGenerator);
                                break Label_0078;
                            }
                            serializer.serialize(s, jsonGenerator, serializerProvider);
                            break Label_0078;
                        }
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(serializerProvider, ex, list, n);
                    }
                    break;
                }
                ++n;
                continue;
            }
        }
    }
    
    @Override
    protected JsonNode contentSchema() {
        return this.createSchemaNode("string", true);
    }
    
    @Override
    public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
        final JsonSerializer<Object> valueSerializer = serializerProvider.findValueSerializer(String.class, this._property);
        if (!this.isDefaultSerializer(valueSerializer)) {
            this._serializer = (JsonSerializer<String>)valueSerializer;
        }
    }
    
    @Override
    public void serialize(final List<String> list, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeStartArray();
        if (this._serializer == null) {
            this.serializeContents(list, jsonGenerator, serializerProvider);
        }
        else {
            this.serializeUsingCustom(list, jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndArray();
    }
    
    @Override
    public void serializeWithType(final List<String> list, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForArray(list, jsonGenerator);
        if (this._serializer == null) {
            this.serializeContents(list, jsonGenerator, serializerProvider);
        }
        else {
            this.serializeUsingCustom(list, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForArray(list, jsonGenerator);
    }
}
