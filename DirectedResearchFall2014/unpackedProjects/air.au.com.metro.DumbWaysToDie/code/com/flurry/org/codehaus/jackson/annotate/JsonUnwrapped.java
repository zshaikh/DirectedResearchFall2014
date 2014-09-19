package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER })
public @interface JsonUnwrapped {
    boolean enabled() default true;
}
