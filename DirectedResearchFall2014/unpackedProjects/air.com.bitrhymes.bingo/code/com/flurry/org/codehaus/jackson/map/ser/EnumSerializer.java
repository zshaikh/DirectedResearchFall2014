package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.util.*;

@JacksonStdImpl
@Deprecated
public class EnumSerializer extends com.flurry.org.codehaus.jackson.map.ser.std.EnumSerializer
{
    public EnumSerializer(final EnumValues enumValues) {
        super(enumValues);
    }
}
