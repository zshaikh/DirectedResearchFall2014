package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.ser.std.*;

@Deprecated
public final class StdKeySerializer extends com.flurry.org.codehaus.jackson.map.ser.std.StdKeySerializer
{
    static final StdKeySerializer instace;
    
    static {
        instace = new StdKeySerializer();
    }
}
