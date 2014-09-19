package com.fusepowered.util;

import java.util.*;

public class StringUtil
{
    public static final String commaSeparatedArray(final ArrayList<String> list) {
        String s = "";
        int n = 0;
        for (final String str : list) {
            final int n2 = n + 1;
            if (n != 0) {
                s += ",";
            }
            s += str;
            n = n2;
        }
        return s;
    }
    
    public static boolean isEmpty(final String s) {
        if (s != null && !s.trim().equals("")) {
            final int length = s.length();
            final boolean b = false;
            if (length != 0) {
                return b;
            }
        }
        return true;
    }
}
