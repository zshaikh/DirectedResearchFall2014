package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;

@JacksonStdImpl
@Deprecated
public class MapSerializer extends com.flurry.org.codehaus.jackson.map.ser.std.MapSerializer
{
    protected MapSerializer() {
        this(null, null, null, false, null, null, null, null);
    }
    
    protected MapSerializer(final HashSet<String> set, final JavaType javaType, final JavaType javaType2, final boolean b, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer, final BeanProperty beanProperty) {
        super(set, javaType, javaType2, b, typeSerializer, jsonSerializer, null, beanProperty);
    }
    
    protected MapSerializer(final HashSet<String> set, final JavaType javaType, final JavaType javaType2, final boolean b, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer, final JsonSerializer<Object> jsonSerializer2, final BeanProperty beanProperty) {
        super(set, javaType, javaType2, b, typeSerializer, jsonSerializer, jsonSerializer2, beanProperty);
    }
    
    protected MapSerializer(final HashSet<String> set, final JavaType javaType, final boolean b, final TypeSerializer typeSerializer) {
        super(set, MapSerializer.UNSPECIFIED_TYPE, javaType, b, typeSerializer, null, null, null);
    }
}
