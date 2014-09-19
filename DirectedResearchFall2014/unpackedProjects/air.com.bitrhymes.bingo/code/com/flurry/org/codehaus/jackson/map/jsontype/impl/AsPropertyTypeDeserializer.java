package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class AsPropertyTypeDeserializer extends AsArrayTypeDeserializer
{
    protected final String _typePropertyName;
    
    public AsPropertyTypeDeserializer(final JavaType javaType, final TypeIdResolver typeIdResolver, final BeanProperty beanProperty, final Class<?> clazz, final String typePropertyName) {
        super(javaType, typeIdResolver, beanProperty, clazz);
        this._typePropertyName = typePropertyName;
    }
    
    public AsPropertyTypeDeserializer(final JavaType javaType, final TypeIdResolver typeIdResolver, final BeanProperty beanProperty, final String s) {
        this(javaType, typeIdResolver, beanProperty, null, s);
    }
    
    protected Object _deserializeIfNatural(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        switch (jsonParser.getCurrentToken()) {
            case VALUE_STRING: {
                if (this._baseType.getRawClass().isAssignableFrom(String.class)) {
                    return jsonParser.getText();
                }
                break;
            }
            case VALUE_NUMBER_INT: {
                if (this._baseType.getRawClass().isAssignableFrom(Integer.class)) {
                    return jsonParser.getIntValue();
                }
                break;
            }
            case VALUE_NUMBER_FLOAT: {
                if (this._baseType.getRawClass().isAssignableFrom(Double.class)) {
                    return jsonParser.getDoubleValue();
                }
                break;
            }
            case VALUE_TRUE: {
                if (this._baseType.getRawClass().isAssignableFrom(Boolean.class)) {
                    return Boolean.TRUE;
                }
                break;
            }
            case VALUE_FALSE: {
                if (this._baseType.getRawClass().isAssignableFrom(Boolean.class)) {
                    return Boolean.FALSE;
                }
                break;
            }
        }
        return null;
    }
    
    protected Object _deserializeTypedUsingDefaultImpl(JsonParser parser, final DeserializationContext deserializationContext, final TokenBuffer tokenBuffer) throws IOException, JsonProcessingException {
        if (this._defaultImpl != null) {
            final JsonDeserializer<Object> findDefaultImplDeserializer = this._findDefaultImplDeserializer(deserializationContext);
            if (tokenBuffer != null) {
                tokenBuffer.writeEndObject();
                parser = tokenBuffer.asParser(parser);
                parser.nextToken();
            }
            return findDefaultImplDeserializer.deserialize(parser, deserializationContext);
        }
        final Object deserializeIfNatural = this._deserializeIfNatural(parser, deserializationContext);
        if (deserializeIfNatural != null) {
            return deserializeIfNatural;
        }
        if (parser.getCurrentToken() == JsonToken.START_ARRAY) {
            return super.deserializeTypedFromAny(parser, deserializationContext);
        }
        throw deserializationContext.wrongTokenException(parser, JsonToken.FIELD_NAME, "missing property '" + this._typePropertyName + "' that is to contain type id  (for class " + this.baseTypeName() + ")");
    }
    
    @Override
    public Object deserializeTypedFromAny(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.getCurrentToken() == JsonToken.START_ARRAY) {
            return super.deserializeTypedFromArray(jsonParser, deserializationContext);
        }
        return this.deserializeTypedFromObject(jsonParser, deserializationContext);
    }
    
    @Override
    public Object deserializeTypedFromObject(JsonParser flattened, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        JsonToken jsonToken = flattened.getCurrentToken();
        if (jsonToken == JsonToken.START_OBJECT) {
            jsonToken = flattened.nextToken();
        }
        else {
            if (jsonToken == JsonToken.START_ARRAY) {
                return this._deserializeTypedUsingDefaultImpl(flattened, deserializationContext, null);
            }
            if (jsonToken != JsonToken.FIELD_NAME) {
                return this._deserializeTypedUsingDefaultImpl(flattened, deserializationContext, null);
            }
        }
        TokenBuffer tokenBuffer = null;
        while (jsonToken == JsonToken.FIELD_NAME) {
            final String currentName = flattened.getCurrentName();
            flattened.nextToken();
            if (this._typePropertyName.equals(currentName)) {
                final JsonDeserializer<Object> findDeserializer = this._findDeserializer(deserializationContext, flattened.getText());
                if (tokenBuffer != null) {
                    flattened = JsonParserSequence.createFlattened(tokenBuffer.asParser(flattened), flattened);
                }
                flattened.nextToken();
                return findDeserializer.deserialize(flattened, deserializationContext);
            }
            if (tokenBuffer == null) {
                tokenBuffer = new TokenBuffer(null);
            }
            tokenBuffer.writeFieldName(currentName);
            tokenBuffer.copyCurrentStructure(flattened);
            jsonToken = flattened.nextToken();
        }
        return this._deserializeTypedUsingDefaultImpl(flattened, deserializationContext, tokenBuffer);
    }
    
    @Override
    public String getPropertyName() {
        return this._typePropertyName;
    }
    
    @Override
    public JsonTypeInfo.As getTypeInclusion() {
        return JsonTypeInfo.As.PROPERTY;
    }
}
