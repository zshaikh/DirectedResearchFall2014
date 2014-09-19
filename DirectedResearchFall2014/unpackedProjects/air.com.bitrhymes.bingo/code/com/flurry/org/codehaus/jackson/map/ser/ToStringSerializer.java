package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;

@JacksonStdImpl
@Deprecated
public final class ToStringSerializer extends com.flurry.org.codehaus.jackson.map.ser.std.ToStringSerializer
{
    public static final ToStringSerializer instance;
    
    static {
        instance = new ToStringSerializer();
    }
}
