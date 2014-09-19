package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER })
public @interface JsonSubTypes {
    Type[] value();
    
    public @interface Type {
        String name() default "";
        
        Class<?> value();
    }
}
