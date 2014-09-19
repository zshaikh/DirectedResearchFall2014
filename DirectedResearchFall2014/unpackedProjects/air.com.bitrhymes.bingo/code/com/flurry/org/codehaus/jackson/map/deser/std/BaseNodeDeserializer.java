package com.flurry.org.codehaus.jackson.map.deser.std;

import java.io.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

abstract class BaseNodeDeserializer<N extends JsonNode> extends StdDeserializer<N>
{
    public BaseNodeDeserializer(final Class<N> clazz) {
        super(clazz);
    }
    
    protected void _handleDuplicateField(final String s, final ObjectNode objectNode, final JsonNode jsonNode, final JsonNode jsonNode2) throws JsonProcessingException {
    }
    
    protected void _reportProblem(final JsonParser jsonParser, final String s) throws JsonMappingException {
        throw new JsonMappingException(s, jsonParser.getTokenLocation());
    }
    
    protected final JsonNode deserializeAny(final JsonParser jsonParser, final DeserializationContext deserializationContext, final JsonNodeFactory jsonNodeFactory) throws IOException, JsonProcessingException {
        switch (jsonParser.getCurrentToken()) {
            default: {
                throw deserializationContext.mappingException(this.getValueClass());
            }
            case START_OBJECT: {
                return this.deserializeObject(jsonParser, deserializationContext, jsonNodeFactory);
            }
            case START_ARRAY: {
                return this.deserializeArray(jsonParser, deserializationContext, jsonNodeFactory);
            }
            case FIELD_NAME: {
                return this.deserializeObject(jsonParser, deserializationContext, jsonNodeFactory);
            }
            case VALUE_EMBEDDED_OBJECT: {
                final Object embeddedObject = jsonParser.getEmbeddedObject();
                if (embeddedObject == null) {
                    return jsonNodeFactory.nullNode();
                }
                if (((byte[])embeddedObject).getClass() == byte[].class) {
                    return jsonNodeFactory.binaryNode((byte[])embeddedObject);
                }
                return jsonNodeFactory.POJONode(embeddedObject);
            }
            case VALUE_STRING: {
                return jsonNodeFactory.textNode(jsonParser.getText());
            }
            case VALUE_NUMBER_INT: {
                final JsonParser.NumberType numberType = jsonParser.getNumberType();
                if (numberType == JsonParser.NumberType.BIG_INTEGER || deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
                    return jsonNodeFactory.numberNode(jsonParser.getBigIntegerValue());
                }
                if (numberType == JsonParser.NumberType.INT) {
                    return jsonNodeFactory.numberNode(jsonParser.getIntValue());
                }
                return jsonNodeFactory.numberNode(jsonParser.getLongValue());
            }
            case VALUE_NUMBER_FLOAT: {
                if (jsonParser.getNumberType() == JsonParser.NumberType.BIG_DECIMAL || deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return jsonNodeFactory.numberNode(jsonParser.getDecimalValue());
                }
                return jsonNodeFactory.numberNode(jsonParser.getDoubleValue());
            }
            case VALUE_TRUE: {
                return jsonNodeFactory.booleanNode(true);
            }
            case VALUE_FALSE: {
                return jsonNodeFactory.booleanNode(false);
            }
            case VALUE_NULL: {
                return jsonNodeFactory.nullNode();
            }
        }
    }
    
    protected final ArrayNode deserializeArray(final JsonParser jsonParser, final DeserializationContext deserializationContext, final JsonNodeFactory jsonNodeFactory) throws IOException, JsonProcessingException {
        final ArrayNode arrayNode = jsonNodeFactory.arrayNode();
    Label_0109:
        while (true) {
            switch (jsonParser.nextToken()) {
                default: {
                    arrayNode.add(this.deserializeAny(jsonParser, deserializationContext, jsonNodeFactory));
                    continue;
                }
                case START_OBJECT: {
                    arrayNode.add(this.deserializeObject(jsonParser, deserializationContext, jsonNodeFactory));
                    continue;
                }
                case START_ARRAY: {
                    arrayNode.add(this.deserializeArray(jsonParser, deserializationContext, jsonNodeFactory));
                    continue;
                }
                case VALUE_STRING: {
                    arrayNode.add(jsonNodeFactory.textNode(jsonParser.getText()));
                    continue;
                }
                case END_ARRAY: {
                    break Label_0109;
                }
            }
        }
        return arrayNode;
    }
    
    protected final ObjectNode deserializeObject(final JsonParser jsonParser, final DeserializationContext deserializationContext, final JsonNodeFactory jsonNodeFactory) throws IOException, JsonProcessingException {
        final ObjectNode objectNode = jsonNodeFactory.objectNode();
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        }
        while (jsonToken == JsonToken.FIELD_NAME) {
            final String currentName = jsonParser.getCurrentName();
            JsonNode jsonNode = null;
            switch (jsonParser.nextToken()) {
                default: {
                    jsonNode = this.deserializeAny(jsonParser, deserializationContext, jsonNodeFactory);
                    break;
                }
                case START_OBJECT: {
                    jsonNode = this.deserializeObject(jsonParser, deserializationContext, jsonNodeFactory);
                    break;
                }
                case START_ARRAY: {
                    jsonNode = this.deserializeArray(jsonParser, deserializationContext, jsonNodeFactory);
                    break;
                }
                case VALUE_STRING: {
                    jsonNode = jsonNodeFactory.textNode(jsonParser.getText());
                    break;
                }
            }
            final JsonNode put = objectNode.put(currentName, jsonNode);
            if (put != null) {
                this._handleDuplicateField(currentName, objectNode, put, jsonNode);
            }
            jsonToken = jsonParser.nextToken();
        }
        return objectNode;
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }
}
