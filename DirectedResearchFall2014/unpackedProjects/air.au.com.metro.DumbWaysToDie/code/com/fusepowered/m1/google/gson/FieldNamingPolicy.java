package com.fusepowered.m1.google.gson;

import java.lang.reflect.*;
import java.io.*;

public enum FieldNamingPolicy implements FieldNamingStrategy
{
    IDENTITY {
        @Override
        public String translateName(final Field field) {
            return field.getName();
        }
    }, 
    LOWER_CASE_WITH_DASHES {
        @Override
        public String translateName(final Field field) {
            return separateCamelCase(field.getName(), "-").toLowerCase();
        }
    }, 
    LOWER_CASE_WITH_UNDERSCORES {
        @Override
        public String translateName(final Field field) {
            return separateCamelCase(field.getName(), "_").toLowerCase();
        }
    }, 
    UPPER_CAMEL_CASE {
        @Override
        public String translateName(final Field field) {
            return upperCaseFirstLetter(field.getName());
        }
    }, 
    UPPER_CAMEL_CASE_WITH_SPACES {
        @Override
        public String translateName(final Field field) {
            return upperCaseFirstLetter(separateCamelCase(field.getName(), " "));
        }
    };
    
    private static String modifyString(final char c, final String s, final int beginIndex) {
        if (beginIndex < s.length()) {
            return c + s.substring(beginIndex);
        }
        return String.valueOf(c);
    }
    
    private static String separateCamelCase(final String s, final String str) {
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); ++i) {
            final char char1 = s.charAt(i);
            if (Character.isUpperCase(char1) && sb.length() != 0) {
                sb.append(str);
            }
            sb.append(char1);
        }
        return sb.toString();
    }
    
    private static String upperCaseFirstLetter(final String s) {
        final StringBuilder sb = new StringBuilder();
        int index;
        char c;
        for (index = 0, c = s.charAt(0); index < s.length() - 1 && !Character.isLetter(c); ++index, c = s.charAt(index)) {
            sb.append(c);
        }
        if (index == s.length()) {
            return sb.toString();
        }
        if (!Character.isUpperCase(c)) {
            return sb.append(modifyString(Character.toUpperCase(c), s, index + 1)).toString();
        }
        return s;
    }
}
