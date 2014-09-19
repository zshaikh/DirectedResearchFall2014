package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.lang.reflect.*;

@JsonCachable
public class EnumDeserializer extends StdScalarDeserializer<Enum<?>>
{
    protected final EnumResolver<?> _resolver;
    
    public EnumDeserializer(final EnumResolver<?> resolver) {
        super(Enum.class);
        this._resolver = resolver;
    }
    
    public static JsonDeserializer<?> deserializerForCreator(final DeserializationConfig deserializationConfig, final Class<?> clazz, final AnnotatedMethod obj) {
        if (obj.getParameterType(0) != String.class) {
            throw new IllegalArgumentException("Parameter #0 type for factory method (" + obj + ") not suitable, must be java.lang.String");
        }
        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            ClassUtil.checkAndFixAccess(obj.getMember());
        }
        return new FactoryBasedDeserializer(clazz, obj);
    }
    
    @Override
    public Enum<?> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING || currentToken == JsonToken.FIELD_NAME) {
            final Object enum1 = this._resolver.findEnum(jsonParser.getText());
            if (enum1 == null) {
                throw deserializationContext.weirdStringException(this._resolver.getEnumClass(), "value not one of declared Enum instance names");
            }
            return (Enum<?>)enum1;
        }
        else {
            if (currentToken != JsonToken.VALUE_NUMBER_INT) {
                throw deserializationContext.mappingException(this._resolver.getEnumClass());
            }
            if (deserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                throw deserializationContext.mappingException("Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)");
            }
            final Object enum2 = this._resolver.getEnum(jsonParser.getIntValue());
            if (enum2 == null) {
                throw deserializationContext.weirdNumberException(this._resolver.getEnumClass(), "index value outside legal index range [0.." + this._resolver.lastValidIndex() + "]");
            }
            return (Enum<?>)enum2;
        }
    }
    
    protected static class FactoryBasedDeserializer extends StdScalarDeserializer<Object>
    {
        protected final Class<?> _enumClass;
        protected final Method _factory;
        
        public FactoryBasedDeserializer(final Class<?> enumClass, final AnnotatedMethod annotatedMethod) {
            super(Enum.class);
            this._enumClass = enumClass;
            this._factory = annotatedMethod.getAnnotated();
        }
        
        @Override
        public Object deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken != JsonToken.VALUE_STRING && currentToken != JsonToken.FIELD_NAME) {
                throw deserializationContext.mappingException(this._enumClass);
            }
            final String text = jsonParser.getText();
            try {
                return this._factory.invoke(this._enumClass, text);
            }
            catch (Exception ex) {
                ClassUtil.unwrapAndThrowAsIAE(ex);
                return null;
            }
        }
    }
}
