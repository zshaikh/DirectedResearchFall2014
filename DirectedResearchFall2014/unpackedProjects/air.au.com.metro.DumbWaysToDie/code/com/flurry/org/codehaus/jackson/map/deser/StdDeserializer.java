package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

@Deprecated
public abstract class StdDeserializer<T> extends com.flurry.org.codehaus.jackson.map.deser.std.StdDeserializer<T>
{
    protected StdDeserializer(final JavaType javaType) {
        super(javaType);
    }
    
    protected StdDeserializer(final Class<?> clazz) {
        super(clazz);
    }
    
    @JacksonStdImpl
    @Deprecated
    public class CalendarDeserializer extends com.flurry.org.codehaus.jackson.map.deser.std.CalendarDeserializer
    {
    }
    
    @JacksonStdImpl
    @Deprecated
    public class ClassDeserializer extends com.flurry.org.codehaus.jackson.map.deser.std.ClassDeserializer
    {
    }
    
    @JacksonStdImpl
    @Deprecated
    public static final class StringDeserializer extends StdScalarDeserializer<String>
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
}
