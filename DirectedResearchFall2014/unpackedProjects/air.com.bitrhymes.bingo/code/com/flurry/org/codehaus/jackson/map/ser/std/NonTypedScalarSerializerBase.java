package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class NonTypedScalarSerializerBase<T> extends ScalarSerializerBase<T>
{
    protected NonTypedScalarSerializerBase(final Class<T> clazz) {
        super(clazz);
    }
    
    @Override
    public final void serializeWithType(final T t, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        this.serialize(t, jsonGenerator, serializerProvider);
    }
}
