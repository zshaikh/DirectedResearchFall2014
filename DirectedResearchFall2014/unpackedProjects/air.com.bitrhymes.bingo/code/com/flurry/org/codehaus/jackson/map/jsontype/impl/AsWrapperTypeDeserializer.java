package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class AsWrapperTypeDeserializer extends TypeDeserializerBase
{
    public AsWrapperTypeDeserializer(final JavaType javaType, final TypeIdResolver typeIdResolver, final BeanProperty beanProperty) {
        this(javaType, typeIdResolver, beanProperty, null);
    }
    
    public AsWrapperTypeDeserializer(final JavaType javaType, final TypeIdResolver typeIdResolver, final BeanProperty beanProperty, final Class<?> clazz) {
        super(javaType, typeIdResolver, beanProperty, null);
    }
    
    private final Object _deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            throw deserializationContext.wrongTokenException(jsonParser, JsonToken.START_OBJECT, "need JSON Object to contain As.WRAPPER_OBJECT type information for class " + this.baseTypeName());
        }
        if (jsonParser.nextToken() != JsonToken.FIELD_NAME) {
            throw deserializationContext.wrongTokenException(jsonParser, JsonToken.FIELD_NAME, "need JSON String that contains type id (for subtype of " + this.baseTypeName() + ")");
        }
        final JsonDeserializer<Object> findDeserializer = this._findDeserializer(deserializationContext, jsonParser.getText());
        jsonParser.nextToken();
        final Object deserialize = findDeserializer.deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() != JsonToken.END_OBJECT) {
            throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_OBJECT, "expected closing END_OBJECT after type information and deserialized value");
        }
        return deserialize;
    }
    
    @Override
    public Object deserializeTypedFromAny(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this._deserialize(jsonParser, deserializationContext);
    }
    
    @Override
    public Object deserializeTypedFromArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this._deserialize(jsonParser, deserializationContext);
    }
    
    @Override
    public Object deserializeTypedFromObject(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this._deserialize(jsonParser, deserializationContext);
    }
    
    @Override
    public Object deserializeTypedFromScalar(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return this._deserialize(jsonParser, deserializationContext);
    }
    
    @Override
    public JsonTypeInfo.As getTypeInclusion() {
        return JsonTypeInfo.As.WRAPPER_OBJECT;
    }
}
