package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class ClassDeserializer extends StdScalarDeserializer<Class<?>>
{
    public ClassDeserializer() {
        super(Class.class);
    }
    
    @Override
    public Class<?> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING) {
            final String text = jsonParser.getText();
            if (text.indexOf(46) < 0) {
                if ("int".equals(text)) {
                    return Integer.TYPE;
                }
                if ("long".equals(text)) {
                    return Long.TYPE;
                }
                if ("float".equals(text)) {
                    return Float.TYPE;
                }
                if ("double".equals(text)) {
                    return Double.TYPE;
                }
                if ("boolean".equals(text)) {
                    return Boolean.TYPE;
                }
                if ("byte".equals(text)) {
                    return Byte.TYPE;
                }
                if ("char".equals(text)) {
                    return Character.TYPE;
                }
                if ("short".equals(text)) {
                    return Short.TYPE;
                }
                if ("void".equals(text)) {
                    return Void.TYPE;
                }
            }
            try {
                return Class.forName(jsonParser.getText());
            }
            catch (ClassNotFoundException ex) {
                throw deserializationContext.instantiationException(this._valueClass, ex);
            }
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
}
