package com.flurry.org.codehaus.jackson.map.ser;

import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;

public class AnyGetterWriter
{
    protected final Method _anyGetter;
    protected final MapSerializer _serializer;
    
    public AnyGetterWriter(final AnnotatedMethod annotatedMethod, final MapSerializer serializer) {
        super();
        this._anyGetter = annotatedMethod.getAnnotated();
        this._serializer = serializer;
    }
    
    public void getAndSerialize(final Object obj, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws Exception {
        final Object invoke = this._anyGetter.invoke(obj, new Object[0]);
        if (invoke == null) {
            return;
        }
        if (!(invoke instanceof Map)) {
            throw new JsonMappingException("Value returned by 'any-getter' (" + this._anyGetter.getName() + "()) not java.util.Map but " + ((Map<?, ?>)invoke).getClass().getName());
        }
        this._serializer.serializeFields((Map<?, ?>)invoke, jsonGenerator, serializerProvider);
    }
    
    public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
        this._serializer.resolve(serializerProvider);
    }
}
