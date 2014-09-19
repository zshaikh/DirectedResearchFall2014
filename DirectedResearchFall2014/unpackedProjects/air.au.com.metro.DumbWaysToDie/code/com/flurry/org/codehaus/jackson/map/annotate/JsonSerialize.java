package com.flurry.org.codehaus.jackson.map.annotate;

import com.flurry.org.codehaus.jackson.annotate.*;
import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER })
public @interface JsonSerialize {
    Class<?> as() default "Lcom/flurry/org/codehaus/jackson/map/annotate/NoClass;";
    
    Class<?> contentAs() default "Lcom/flurry/org/codehaus/jackson/map/annotate/NoClass;";
    
    Class<? extends JsonSerializer<?>> contentUsing() default "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;";
    
    Inclusion include() default Inclusion.ALWAYS;
    
    Class<?> keyAs() default "Lcom/flurry/org/codehaus/jackson/map/annotate/NoClass;";
    
    Class<? extends JsonSerializer<?>> keyUsing() default "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;";
    
    Typing typing() default Typing.DYNAMIC;
    
    Class<? extends JsonSerializer<?>> using() default "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer$None;";
    
    public enum Inclusion
    {
        ALWAYS, 
        NON_DEFAULT, 
        NON_EMPTY, 
        NON_NULL;
    }
    
    public enum Typing
    {
        DYNAMIC, 
        STATIC;
    }
}
