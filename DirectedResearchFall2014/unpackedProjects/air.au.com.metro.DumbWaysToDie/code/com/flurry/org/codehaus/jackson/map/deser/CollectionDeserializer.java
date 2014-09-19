package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import java.util.*;

@Deprecated
public class CollectionDeserializer extends com.flurry.org.codehaus.jackson.map.deser.std.CollectionDeserializer
{
    protected CollectionDeserializer(final CollectionDeserializer collectionDeserializer) {
        super(collectionDeserializer);
    }
    
    public CollectionDeserializer(final JavaType javaType, final JsonDeserializer<Object> jsonDeserializer, final TypeDeserializer typeDeserializer, final ValueInstantiator valueInstantiator) {
        super(javaType, jsonDeserializer, typeDeserializer, valueInstantiator);
    }
    
    public CollectionDeserializer(final JavaType javaType, final JsonDeserializer<Object> jsonDeserializer, final TypeDeserializer typeDeserializer, final Constructor<Collection<Object>> constructor) {
        super(javaType, jsonDeserializer, typeDeserializer, constructor);
    }
}
