package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.type.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

public class AbstractDeserializer extends JsonDeserializer<Object>
{
    protected final boolean _acceptBoolean;
    protected final boolean _acceptDouble;
    protected final boolean _acceptInt;
    protected final boolean _acceptString;
    protected final JavaType _baseType;
    
    public AbstractDeserializer(final JavaType baseType) {
        super();
        this._baseType = baseType;
        final Class<?> rawClass = baseType.getRawClass();
        this._acceptString = rawClass.isAssignableFrom(String.class);
        this._acceptBoolean = (rawClass == Boolean.TYPE || rawClass.isAssignableFrom(Boolean.class));
        this._acceptInt = (rawClass == Integer.TYPE || rawClass.isAssignableFrom(Integer.class));
        this._acceptDouble = (rawClass == Double.TYPE || rawClass.isAssignableFrom(Double.class));
    }
    
    protected Object _deserializeIfNatural(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        switch (jsonParser.getCurrentToken()) {
            case VALUE_STRING: {
                if (this._acceptString) {
                    return jsonParser.getText();
                }
                break;
            }
            case VALUE_NUMBER_INT: {
                if (this._acceptInt) {
                    return jsonParser.getIntValue();
                }
                break;
            }
            case VALUE_NUMBER_FLOAT: {
                if (this._acceptDouble) {
                    return jsonParser.getDoubleValue();
                }
                break;
            }
            case VALUE_TRUE: {
                if (this._acceptBoolean) {
                    return Boolean.TRUE;
                }
                break;
            }
            case VALUE_FALSE: {
                if (this._acceptBoolean) {
                    return Boolean.FALSE;
                }
                break;
            }
        }
        return null;
    }
    
    @Override
    public Object deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        throw deserializationContext.instantiationException(this._baseType.getRawClass(), "abstract types can only be instantiated with additional type information");
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        final Object deserializeIfNatural = this._deserializeIfNatural(jsonParser, deserializationContext);
        if (deserializeIfNatural != null) {
            return deserializeIfNatural;
        }
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }
}
