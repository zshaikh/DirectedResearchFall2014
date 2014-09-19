package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.map.util.*;

@Deprecated
public class EnumDeserializer extends com.flurry.org.codehaus.jackson.map.deser.std.EnumDeserializer
{
    public EnumDeserializer(final EnumResolver<?> enumResolver) {
        super(enumResolver);
    }
}
