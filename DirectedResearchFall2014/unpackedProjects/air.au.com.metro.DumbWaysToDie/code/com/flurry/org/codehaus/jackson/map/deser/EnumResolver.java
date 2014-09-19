package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;

@Deprecated
public final class EnumResolver<T extends Enum<T>> extends com.flurry.org.codehaus.jackson.map.util.EnumResolver<T>
{
    private EnumResolver(final Class<T> clazz, final T[] array, final HashMap<String, T> hashMap) {
        super(clazz, array, hashMap);
    }
}
