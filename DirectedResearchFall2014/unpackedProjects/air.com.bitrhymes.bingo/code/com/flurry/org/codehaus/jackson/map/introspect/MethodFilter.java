package com.flurry.org.codehaus.jackson.map.introspect;

import java.lang.reflect.*;

public interface MethodFilter
{
    boolean includeMethod(Method p0);
}
