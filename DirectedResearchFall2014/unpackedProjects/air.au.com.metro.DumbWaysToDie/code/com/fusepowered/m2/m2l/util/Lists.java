package com.fusepowered.m2.m2l.util;

import java.util.*;

public class Lists
{
    public static ArrayList<String> asStringArrayList(final List<String> dest) {
        final ArrayList<String> src = new ArrayList<String>();
        if (dest == null) {
            return src;
        }
        if (dest instanceof ArrayList) {
            return (ArrayList<String>)dest;
        }
        Collections.copy((List<? super Object>)dest, (List<?>)src);
        return src;
    }
}
