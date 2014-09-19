package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.schema.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class EnumMapSerializer extends ContainerSerializerBase<EnumMap<? extends Enum<?>, ?>> implements ResolvableSerializer
{
    protected final EnumValues _keyEnums;
    protected final BeanProperty _property;
    protected final boolean _staticTyping;
    protected JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final TypeSerializer _valueTypeSerializer;
    
    public EnumMapSerializer(final JavaType javaType, final boolean b, final EnumValues enumValues, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
        this(javaType, b, enumValues, typeSerializer, beanProperty, null);
    }
    
    public EnumMapSerializer(final JavaType valueType, final boolean b, final EnumValues keyEnums, final TypeSerializer valueTypeSerializer, final BeanProperty property, final JsonSerializer<Object> valueSerializer) {
        super(EnumMap.class, false);
        this._staticTyping = (b || (valueType != null && valueType.isFinal()));
        this._valueType = valueType;
        this._keyEnums = keyEnums;
        this._valueTypeSerializer = valueTypeSerializer;
        this._property = property;
        this._valueSerializer = valueSerializer;
    }
    
    @Override
    public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
        return new EnumMapSerializer(this._valueType, this._staticTyping, this._keyEnums, typeSerializer, this._property, this._valueSerializer);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        final ObjectNode schemaNode = this.createSchemaNode("object", true);
        if (type instanceof ParameterizedType) {
            final Type[] actualTypeArguments = ((ParameterizedType)type).getActualTypeArguments();
            if (actualTypeArguments.length == 2) {
                final JavaType constructType = serializerProvider.constructType(actualTypeArguments[0]);
                final JavaType constructType2 = serializerProvider.constructType(actualTypeArguments[1]);
                final ObjectNode objectNode = JsonNodeFactory.instance.objectNode();
                for (final Enum enum1 : (Enum[])constructType.getRawClass().getEnumConstants()) {
                    final JsonSerializer<Object> valueSerializer = serializerProvider.findValueSerializer(constructType2.getRawClass(), this._property);
                    JsonNode jsonNode;
                    if (valueSerializer instanceof SchemaAware) {
                        jsonNode = ((SchemaAware)valueSerializer).getSchema(serializerProvider, null);
                    }
                    else {
                        jsonNode = JsonSchema.getDefaultSchemaNode();
                    }
                    objectNode.put(serializerProvider.getConfig().getAnnotationIntrospector().findEnumValue(enum1), jsonNode);
                }
                schemaNode.put("properties", objectNode);
            }
        }
        return schemaNode;
    }
    
    @Override
    public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
        if (this._staticTyping && this._valueSerializer == null) {
            this._valueSerializer = serializerProvider.findValueSerializer(this._valueType, this._property);
        }
    }
    
    @Override
    public void serialize(final EnumMap<? extends Enum<?>, ?> enumMap, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeStartObject();
        if (!enumMap.isEmpty()) {
            this.serializeContents(enumMap, jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndObject();
    }
    
    protected void serializeContents(final EnumMap<? extends Enum<?>, ?> enumMap, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (this._valueSerializer != null) {
            this.serializeContentsUsing(enumMap, jsonGenerator, serializerProvider, this._valueSerializer);
        }
        else {
            JsonSerializer<Object> valueSerializer = null;
            Class<?> clazz = null;
            EnumValues enumValues = this._keyEnums;
            for (final Map.Entry<? extends Enum<?>, ?> entry : enumMap.entrySet()) {
                final Enum<?> enum1 = (Enum<?>)entry.getKey();
                if (enumValues == null) {
                    enumValues = ((EnumSerializer)(SerializerBase)serializerProvider.findValueSerializer(enum1.getDeclaringClass(), this._property)).getEnumValues();
                }
                jsonGenerator.writeFieldName(enumValues.serializedValueFor(enum1));
                final Object value = entry.getValue();
                if (value == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                }
                else {
                    final Class<?> class1 = value.getClass();
                    JsonSerializer<Object> jsonSerializer;
                    if (class1 == clazz) {
                        jsonSerializer = valueSerializer;
                    }
                    else {
                        jsonSerializer = (valueSerializer = serializerProvider.findValueSerializer(class1, this._property));
                        clazz = class1;
                    }
                    try {
                        jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(serializerProvider, ex, enumMap, ((Enum<?>)entry.getKey()).name());
                    }
                }
            }
        }
    }
    
    protected void serializeContentsUsing(final EnumMap<? extends Enum<?>, ?> enumMap, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final JsonSerializer<Object> jsonSerializer) throws IOException, JsonGenerationException {
        EnumValues enumValues = this._keyEnums;
        for (final Map.Entry<? extends Enum<?>, ?> entry : enumMap.entrySet()) {
            final Enum<?> enum1 = (Enum<?>)entry.getKey();
            if (enumValues == null) {
                enumValues = ((EnumSerializer)(SerializerBase)serializerProvider.findValueSerializer(enum1.getDeclaringClass(), this._property)).getEnumValues();
            }
            jsonGenerator.writeFieldName(enumValues.serializedValueFor(enum1));
            final Object value = entry.getValue();
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            }
            else {
                try {
                    jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                }
                catch (Exception ex) {
                    this.wrapAndThrow(serializerProvider, ex, enumMap, ((Enum<?>)entry.getKey()).name());
                }
            }
        }
    }
    
    @Override
    public void serializeWithType(final EnumMap<? extends Enum<?>, ?> enumMap, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForObject(enumMap, jsonGenerator);
        if (!enumMap.isEmpty()) {
            this.serializeContents(enumMap, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForObject(enumMap, jsonGenerator);
    }
}
