package com.flurry.org.apache.avro.specific;

import java.lang.annotation.*;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface FixedSize {
    int value();
}
