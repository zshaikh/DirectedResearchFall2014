package com.flurry.org.codehaus.jackson.map.annotate;

import com.flurry.org.codehaus.jackson.annotate.*;
import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER })
public @interface JsonDeserialize {
    Class<?> as() default "Lcom/flurry/org/codehaus/jackson/map/annotate/NoClass;";
    
    Class<?> contentAs() default "Lcom/flurry/org/codehaus/jackson/map/annotate/NoClass;";
    
    Class<? extends JsonDeserializer<?>> contentUsing() default "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer$None;";
    
    Class<?> keyAs() default "Lcom/flurry/org/codehaus/jackson/map/annotate/NoClass;";
    
    Class<? extends KeyDeserializer> keyUsing() default "Lcom/flurry/org/codehaus/jackson/map/KeyDeserializer$None;";
    
    Class<? extends JsonDeserializer<?>> using() default "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer$None;";
}
