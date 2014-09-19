package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import java.util.*;

@Deprecated
public class MapDeserializer extends com.flurry.org.codehaus.jackson.map.deser.std.MapDeserializer
{
    protected MapDeserializer(final MapDeserializer mapDeserializer) {
        super(mapDeserializer);
    }
    
    public MapDeserializer(final JavaType javaType, final ValueInstantiator valueInstantiator, final KeyDeserializer keyDeserializer, final JsonDeserializer<Object> jsonDeserializer, final TypeDeserializer typeDeserializer) {
        super(javaType, valueInstantiator, keyDeserializer, jsonDeserializer, typeDeserializer);
    }
    
    public MapDeserializer(final JavaType javaType, final Constructor<Map<Object, Object>> constructor, final KeyDeserializer keyDeserializer, final JsonDeserializer<Object> jsonDeserializer, final TypeDeserializer typeDeserializer) {
        super(javaType, constructor, keyDeserializer, jsonDeserializer, typeDeserializer);
    }
}
