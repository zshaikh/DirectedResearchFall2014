package com.flurry.org.codehaus.jackson.schema;

import com.flurry.org.codehaus.jackson.annotate.*;
import java.lang.annotation.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface JsonSerializableSchema {
    String schemaItemDefinition() default "##irrelevant";
    
    String schemaObjectPropertiesDefinition() default "##irrelevant";
    
    String schemaType() default "any";
}
