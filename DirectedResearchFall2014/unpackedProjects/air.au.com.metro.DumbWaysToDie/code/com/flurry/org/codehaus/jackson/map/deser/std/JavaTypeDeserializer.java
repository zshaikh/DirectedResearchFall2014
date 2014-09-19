package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class JavaTypeDeserializer extends StdScalarDeserializer<JavaType>
{
    public JavaTypeDeserializer() {
        super(JavaType.class);
    }
    
    @Override
    public JavaType deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return this.getEmptyValue();
            }
            return deserializationContext.getTypeFactory().constructFromCanonical(trim);
        }
        else {
            if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                return (JavaType)jsonParser.getEmbeddedObject();
            }
            throw deserializationContext.mappingException(this._valueClass);
        }
    }
}
