package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

@JacksonStdImpl
public class StringDeserializer extends StdScalarDeserializer<String>
{
    public StringDeserializer() {
        super(String.class);
    }
    
    @Override
    public String deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING) {
            return jsonParser.getText();
        }
        if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
            final Object embeddedObject = jsonParser.getEmbeddedObject();
            if (embeddedObject == null) {
                return null;
            }
            if (embeddedObject instanceof byte[]) {
                return Base64Variants.getDefaultVariant().encode((byte[])embeddedObject, false);
            }
            return embeddedObject.toString();
        }
        else {
            if (currentToken.isScalarValue()) {
                return jsonParser.getText();
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
    }
    
    @Override
    public String deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return this.deserialize(jsonParser, deserializationContext);
    }
}
