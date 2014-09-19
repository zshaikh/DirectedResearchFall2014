package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface JsonIgnoreType {
    boolean value() default true;
}
