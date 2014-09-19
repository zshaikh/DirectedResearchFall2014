package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.FIELD, ElementType.METHOD })
public @interface JsonBackReference {
    String value() default "defaultReference";
}
