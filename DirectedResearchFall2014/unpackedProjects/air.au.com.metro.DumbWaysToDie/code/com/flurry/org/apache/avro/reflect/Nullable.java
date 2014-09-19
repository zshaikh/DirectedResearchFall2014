package com.flurry.org.apache.avro.reflect;

import java.lang.annotation.*;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.PARAMETER, ElementType.METHOD, ElementType.FIELD })
public @interface Nullable {
}
