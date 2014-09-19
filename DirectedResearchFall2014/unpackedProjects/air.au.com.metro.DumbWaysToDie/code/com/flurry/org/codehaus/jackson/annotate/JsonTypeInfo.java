package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER })
public @interface JsonTypeInfo {
    Class<?> defaultImpl() default "Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$None;";
    
    As include() default As.PROPERTY;
    
    String property() default "";
    
    Id use();
    
    public enum As
    {
        EXTERNAL_PROPERTY, 
        PROPERTY, 
        WRAPPER_ARRAY, 
        WRAPPER_OBJECT;
    }
    
    public enum Id
    {
        CLASS("@class"), 
        CUSTOM((String)null), 
        MINIMAL_CLASS("@c"), 
        NAME("@type"), 
        NONE((String)null);
        
        private final String _defaultPropertyName;
        
        private Id(String defaultPropertyName) {
            this._defaultPropertyName = defaultPropertyName;
        }
        
        public String getDefaultPropertyName() {
            return this._defaultPropertyName;
        }
    }
    
    public abstract static class None
    {
    }
}
