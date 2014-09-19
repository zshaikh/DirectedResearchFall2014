package com.flurry.org.codehaus.jackson.map.deser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class EnumMapDeserializer extends StdDeserializer<EnumMap<?, ?>>
{
    protected final Class<?> _enumClass;
    protected final JsonDeserializer<Enum<?>> _keyDeserializer;
    protected final JsonDeserializer<Object> _valueDeserializer;
    
    public EnumMapDeserializer(final EnumResolver<?> enumResolver, final JsonDeserializer<Object> jsonDeserializer) {
        this(enumResolver.getEnumClass(), new EnumDeserializer(enumResolver), jsonDeserializer);
    }
    
    public EnumMapDeserializer(final Class<?> enumClass, final JsonDeserializer<?> keyDeserializer, final JsonDeserializer<Object> valueDeserializer) {
        super(EnumMap.class);
        this._enumClass = enumClass;
        this._keyDeserializer = (JsonDeserializer<Enum<?>>)keyDeserializer;
        this._valueDeserializer = valueDeserializer;
    }
    
    private EnumMap<?, ?> constructMap() {
        return new EnumMap<Object, Object>(this._enumClass);
    }
    
    @Override
    public EnumMap<?, ?> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            throw deserializationContext.mappingException(EnumMap.class);
        }
        final EnumMap<?, ?> constructMap = this.constructMap();
        while (jsonParser.nextToken() != JsonToken.END_OBJECT) {
            final Enum<?> key = this._keyDeserializer.deserialize(jsonParser, deserializationContext);
            if (key == null) {
                throw deserializationContext.weirdStringException(this._enumClass, "value not one of declared Enum instance names");
            }
            Object deserialize;
            if (jsonParser.nextToken() == JsonToken.VALUE_NULL) {
                deserialize = null;
            }
            else {
                deserialize = this._valueDeserializer.deserialize(jsonParser, deserializationContext);
            }
            constructMap.put(key, deserialize);
        }
        return constructMap;
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }
}
