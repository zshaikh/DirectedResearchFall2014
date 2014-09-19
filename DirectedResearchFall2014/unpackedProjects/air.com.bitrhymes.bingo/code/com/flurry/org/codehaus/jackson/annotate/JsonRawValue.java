package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.METHOD, ElementType.FIELD })
public @interface JsonRawValue {
    boolean value() default true;
}
