package com.flurry.org.codehaus.jackson.map.deser.std;

import java.util.concurrent.atomic.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class AtomicReferenceDeserializer extends StdScalarDeserializer<AtomicReference<?>> implements ResolvableDeserializer
{
    protected final BeanProperty _property;
    protected final JavaType _referencedType;
    protected JsonDeserializer<?> _valueDeserializer;
    
    public AtomicReferenceDeserializer(final JavaType referencedType, final BeanProperty property) {
        super(AtomicReference.class);
        this._referencedType = referencedType;
        this._property = property;
    }
    
    @Override
    public AtomicReference<?> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        return new AtomicReference<Object>(this._valueDeserializer.deserialize(jsonParser, deserializationContext));
    }
    
    @Override
    public void resolve(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider) throws JsonMappingException {
        this._valueDeserializer = deserializerProvider.findValueDeserializer(deserializationConfig, this._referencedType, this._property);
    }
}
