package com.flurry.org.codehaus.jackson.map.annotate;

import com.flurry.org.codehaus.jackson.annotate.*;
import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface JsonTypeResolver {
    Class<? extends TypeResolverBuilder<?>> value();
}
