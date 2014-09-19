package com.flurry.org.codehaus.jackson.map.util;

import java.lang.reflect.*;

public class Comparators
{
    public static Object getArrayComparator(final Object o) {
        return new Object() {
            final /* synthetic */ int val$length = Array.getLength(o);
            
            @Override
            public boolean equals(final Object o) {
                if (o == this) {
                    return true;
                }
                if (o == null || o.getClass() != o.getClass()) {
                    return false;
                }
                if (Array.getLength(o) != this.val$length) {
                    return false;
                }
                for (int i = 0; i < this.val$length; ++i) {
                    final Object value = Array.get(o, i);
                    final Object value2 = Array.get(o, i);
                    if (value != value2 && value != null && !value.equals(value2)) {
                        return false;
                    }
                }
                return true;
            }
        };
    }
}
