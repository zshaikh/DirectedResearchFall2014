package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.*;

@Deprecated
public class ArrayDeserializer extends ObjectArrayDeserializer
{
    public ArrayDeserializer(final ArrayType arrayType, final JsonDeserializer<Object> jsonDeserializer) {
        this(arrayType, jsonDeserializer, null);
    }
    
    public ArrayDeserializer(final ArrayType arrayType, final JsonDeserializer<Object> jsonDeserializer, final TypeDeserializer typeDeserializer) {
        super(arrayType, jsonDeserializer, typeDeserializer);
    }
}
