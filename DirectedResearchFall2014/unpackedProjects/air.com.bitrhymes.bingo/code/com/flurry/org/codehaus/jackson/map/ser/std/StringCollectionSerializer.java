package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class StringCollectionSerializer extends StaticListSerializerBase<Collection<String>> implements ResolvableSerializer
{
    protected JsonSerializer<String> _serializer;
    
    public StringCollectionSerializer(final BeanProperty beanProperty) {
        super(Collection.class, beanProperty);
    }
    
    private final void serializeContents(final Collection<String> collection, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (this._serializer != null) {
            this.serializeUsingCustom(collection, jsonGenerator, serializerProvider);
        }
        else {
            int n = 0;
            for (final String s : collection) {
                Label_0061: {
                    if (s != null) {
                        break Label_0061;
                    }
                    try {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                        break Label_0061;
                        jsonGenerator.writeString(s);
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(serializerProvider, ex, collection, n);
                        continue;
                    }
                }
                ++n;
            }
        }
    }
    
    private void serializeUsingCustom(final Collection<String> collection, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        final JsonSerializer<String> serializer = this._serializer;
        for (final String s : collection) {
            if (s == null) {
                try {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                }
                catch (Exception ex) {
                    this.wrapAndThrow(serializerProvider, ex, collection, 0);
                }
            }
            else {
                serializer.serialize(s, jsonGenerator, serializerProvider);
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
    public void serialize(final Collection<String> collection, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeStartArray();
        if (this._serializer == null) {
            this.serializeContents(collection, jsonGenerator, serializerProvider);
        }
        else {
            this.serializeUsingCustom(collection, jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndArray();
    }
    
    @Override
    public void serializeWithType(final Collection<String> collection, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForArray(collection, jsonGenerator);
        if (this._serializer == null) {
            this.serializeContents(collection, jsonGenerator, serializerProvider);
        }
        else {
            this.serializeUsingCustom(collection, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForArray(collection, jsonGenerator);
    }
}
