package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.io.*;

public abstract class PropertyNamingStrategy
{
    public static final PropertyNamingStrategy CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES;
    
    static {
        CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES = new LowerCaseWithUnderscoresStrategy();
    }
    
    public String nameForConstructorParameter(final MapperConfig<?> mapperConfig, final AnnotatedParameter annotatedParameter, final String s) {
        return s;
    }
    
    public String nameForField(final MapperConfig<?> mapperConfig, final AnnotatedField annotatedField, final String s) {
        return s;
    }
    
    public String nameForGetterMethod(final MapperConfig<?> mapperConfig, final AnnotatedMethod annotatedMethod, final String s) {
        return s;
    }
    
    public String nameForSetterMethod(final MapperConfig<?> mapperConfig, final AnnotatedMethod annotatedMethod, final String s) {
        return s;
    }
    
    public static class LowerCaseWithUnderscoresStrategy extends PropertyNamingStrategyBase
    {
        @Override
        public String translate(final String s) {
            if (s == null) {
                return s;
            }
            final int length = s.length();
            final StringBuilder sb = new StringBuilder(length * 2);
            int n = 0;
            int n2 = 0;
            for (int i = 0; i < length; ++i) {
                char c = s.charAt(i);
                if (i > 0 || c != '_') {
                    if (Character.isUpperCase(c)) {
                        if (n2 == 0 && n > 0 && sb.charAt(n - 1) != '_') {
                            sb.append('_');
                            ++n;
                        }
                        c = Character.toLowerCase(c);
                        n2 = 1;
                    }
                    else {
                        n2 = 0;
                    }
                    sb.append(c);
                    ++n;
                }
            }
            if (n > 0) {
                return sb.toString();
            }
            return s;
        }
    }
    
    public abstract static class PropertyNamingStrategyBase extends PropertyNamingStrategy
    {
        @Override
        public String nameForConstructorParameter(final MapperConfig<?> mapperConfig, final AnnotatedParameter annotatedParameter, final String s) {
            return this.translate(s);
        }
        
        @Override
        public String nameForField(final MapperConfig<?> mapperConfig, final AnnotatedField annotatedField, final String s) {
            return this.translate(s);
        }
        
        @Override
        public String nameForGetterMethod(final MapperConfig<?> mapperConfig, final AnnotatedMethod annotatedMethod, final String s) {
            return this.translate(s);
        }
        
        @Override
        public String nameForSetterMethod(final MapperConfig<?> mapperConfig, final AnnotatedMethod annotatedMethod, final String s) {
            return this.translate(s);
        }
        
        public abstract String translate(final String p0);
    }
}
