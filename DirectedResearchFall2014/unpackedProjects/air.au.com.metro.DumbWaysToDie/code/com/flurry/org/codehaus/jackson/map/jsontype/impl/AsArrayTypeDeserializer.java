package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class AsArrayTypeDeserializer extends TypeDeserializerBase
{
    public AsArrayTypeDeserializer(final JavaType javaType, final TypeIdResolver typeIdResolver, final BeanProperty beanProperty) {
        this(javaType, typeIdResolver, beanProperty, null);
    }
    
    public AsArrayTypeDeserializer(final JavaType javaType, final TypeIdResolver typeIdResolver, final BeanProperty beanProperty, final Class<?> clazz) {
        super(javaType, typeIdResolver, beanProperty, clazz);
    }
    
    private final Object _deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final boolean expectedStartArrayToken = jsonParser.isExpectedStartArrayToken();
        final Object deserialize = this._findDeserializer(deserializationContext, this._locateTypeId(jsonParser, deserializationContext)).deserialize(jsonParser, deserializationContext);
        if (expectedStartArrayToken && jsonParser.nextToken() != JsonToken.END_ARRAY) {
            throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "expected closing END_ARRAY after type information and deserialized value");
        }
        return deserialize;
    }
    
    protected final String _locateTypeId(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            if (this._idResolver instanceof TypeIdResolverBase && this._defaultImpl != null) {
                return ((TypeIdResolverBase)this._idResolver).idFromBaseType();
            }
            throw deserializationContext.wrongTokenException(jsonParser, JsonToken.START_ARRAY, "need JSON Array to contain As.WRAPPER_ARRAY type information for class " + this.baseTypeName());
        }
        else {
            if (jsonParser.nextToken() == JsonToken.VALUE_STRING) {
                final String text = jsonParser.getText();
                jsonParser.nextToken();
                return text;
            }
            if (this._idResolver instanceof TypeIdResolverBase && this._defaultImpl != null) {
                return ((TypeIdResolverBase)this._idResolver).idFromBaseType();
            }
            throw deserializationContext.wrongTokenException(jsonParser, JsonToken.VALUE_STRING, "need JSON String that contains type id (for subtype of " + this.baseTypeName() + ")");
        }
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
        return JsonTypeInfo.As.WRAPPER_ARRAY;
    }
}
