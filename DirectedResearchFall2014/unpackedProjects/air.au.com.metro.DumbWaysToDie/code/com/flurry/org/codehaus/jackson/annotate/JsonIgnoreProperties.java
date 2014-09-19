package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface JsonIgnoreProperties {
    boolean ignoreUnknown() default false;
    
    String[] value() default {};
}
