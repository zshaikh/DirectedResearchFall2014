package com.flurry.org.codehaus.jackson.map.util;

import java.lang.annotation.*;

public interface Annotations
{
     <A extends Annotation> A get(Class<A> p0);
    
    int size();
}
