package com.flurry.org.codehaus.jackson.map.type;

import com.flurry.org.codehaus.jackson.type.*;
import java.lang.reflect.*;

public abstract class TypeModifier
{
    public abstract JavaType modifyType(final JavaType p0, final Type p1, final TypeBindings p2, final TypeFactory p3);
}
