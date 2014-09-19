package com.facebook.internal;

import java.util.*;

public final class Validate
{
    public static void containsNoNulls(final Collection collection, final String str) {
        notNull(collection, str);
        final Iterator<Object> iterator = collection.iterator();
        while (iterator.hasNext()) {
            if (iterator.next() == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }
    
    public static void notEmpty(final Collection collection, final String str) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Container '" + str + "' cannot be empty");
        }
    }
    
    public static void notEmptyAndContainsNoNulls(final Collection collection, final String s) {
        containsNoNulls(collection, s);
        notEmpty(collection, s);
    }
    
    public static void notNull(final Object o, final String str) {
        if (o == null) {
            throw new NullPointerException("Argument '" + str + "' cannot be null");
        }
    }
    
    public static void notNullOrEmpty(final String s, final String str) {
        if (Utility.isNullOrEmpty(s)) {
            throw new IllegalArgumentException("Argument '" + str + "' cannot be null or empty");
        }
    }
    
    public static void oneOf(final Object obj, final String str, final Object... array) {
        for (final Object o : array) {
            if (o != null) {
                if (o.equals(obj)) {
                    return;
                }
            }
            else if (obj == null) {
                return;
            }
        }
        throw new IllegalArgumentException("Argument '" + str + "' was not one of the allowed values");
    }
}
