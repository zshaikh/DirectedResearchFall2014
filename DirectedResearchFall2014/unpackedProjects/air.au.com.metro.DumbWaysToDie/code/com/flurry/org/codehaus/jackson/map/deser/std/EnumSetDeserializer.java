package com.flurry.org.codehaus.jackson.map.deser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class EnumSetDeserializer extends StdDeserializer<EnumSet<?>>
{
    protected final Class<Enum> _enumClass;
    protected final JsonDeserializer<Enum<?>> _enumDeserializer;
    
    public EnumSetDeserializer(final EnumResolver enumResolver) {
        this(enumResolver.getEnumClass(), new EnumDeserializer(enumResolver));
    }
    
    public EnumSetDeserializer(final Class<?> enumClass, final JsonDeserializer<?> enumDeserializer) {
        super(EnumSet.class);
        this._enumClass = (Class<Enum>)enumClass;
        this._enumDeserializer = (JsonDeserializer<Enum<?>>)enumDeserializer;
    }
    
    private EnumSet constructSet() {
        return EnumSet.noneOf(this._enumClass);
    }
    
    @Override
    public EnumSet<?> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            throw deserializationContext.mappingException(EnumSet.class);
        }
        final EnumSet constructSet = this.constructSet();
        while (true) {
            final JsonToken nextToken = jsonParser.nextToken();
            if (nextToken == JsonToken.END_ARRAY) {
                return (EnumSet<?>)constructSet;
            }
            if (nextToken == JsonToken.VALUE_NULL) {
                throw deserializationContext.mappingException(this._enumClass);
            }
            constructSet.add(this._enumDeserializer.deserialize(jsonParser, deserializationContext));
        }
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }
}
