package com.flurry.org.codehaus.jackson.annotate;

import java.lang.annotation.*;
import java.lang.reflect.*;

@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface JsonAutoDetect {
    Visibility creatorVisibility() default Visibility.DEFAULT;
    
    Visibility fieldVisibility() default Visibility.DEFAULT;
    
    Visibility getterVisibility() default Visibility.DEFAULT;
    
    Visibility isGetterVisibility() default Visibility.DEFAULT;
    
    Visibility setterVisibility() default Visibility.DEFAULT;
    
    JsonMethod[] value() default { JsonMethod.ALL };
    
    public enum Visibility
    {
        ANY, 
        DEFAULT, 
        NONE, 
        NON_PRIVATE, 
        PROTECTED_AND_PUBLIC, 
        PUBLIC_ONLY;
        
        public boolean isVisible(Member member) {
            switch (this) {
                default: {
                    return false;
                }
                case ANY: {
                    return true;
                }
                case NONE: {
                    return false;
                }
                case NON_PRIVATE: {
                    return !Modifier.isPrivate(member.getModifiers());
                }
                case PROTECTED_AND_PUBLIC: {
                    if (Modifier.isProtected(member.getModifiers())) {
                        return true;
                    }
                    return Modifier.isPublic(member.getModifiers());
                }
                case PUBLIC_ONLY: {
                    return Modifier.isPublic(member.getModifiers());
                }
            }
        }
    }
}
