package com.facebook.model;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
public @interface CreateGraphObject {
    String value();
}
