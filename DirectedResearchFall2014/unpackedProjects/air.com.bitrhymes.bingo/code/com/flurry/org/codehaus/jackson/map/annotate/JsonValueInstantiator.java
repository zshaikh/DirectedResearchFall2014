package com.flurry.org.codehaus.jackson.map.annotate;

import com.flurry.org.codehaus.jackson.annotate.*;
import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.deser.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface JsonValueInstantiator {
    Class<? extends ValueInstantiator> value();
}
