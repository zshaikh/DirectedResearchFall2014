package com.flurry.org.codehaus.jackson.io;

public final class NumberInput
{
    static final long L_BILLION = 1000000000L;
    static final String MAX_LONG_STR;
    static final String MIN_LONG_STR_NO_SIGN;
    public static final String NASTY_SMALL_DOUBLE = "2.2250738585072012e-308";
    
    static {
        MIN_LONG_STR_NO_SIGN = String.valueOf(Long.MIN_VALUE).substring(1);
        MAX_LONG_STR = String.valueOf(Long.MAX_VALUE);
    }
    
    public static final boolean inLongRange(final String s, final boolean b) {
        String s2;
        if (b) {
            s2 = NumberInput.MIN_LONG_STR_NO_SIGN;
        }
        else {
            s2 = NumberInput.MAX_LONG_STR;
        }
        final int length = s2.length();
        final int length2 = s.length();
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (int i = 0; i < length; ++i) {
            final char c = (char)(s.charAt(i) - s2.charAt(i));
            if (c != '\0') {
                return c < '\0';
            }
        }
        return true;
    }
    
    public static final boolean inLongRange(final char[] array, final int n, final int n2, final boolean b) {
        String s;
        if (b) {
            s = NumberInput.MIN_LONG_STR_NO_SIGN;
        }
        else {
            s = NumberInput.MAX_LONG_STR;
        }
        final int length = s.length();
        if (n2 < length) {
            return true;
        }
        if (n2 > length) {
            return false;
        }
        for (int i = 0; i < length; ++i) {
            final char c = (char)(array[n + i] - s.charAt(i));
            if (c != '\0') {
                return c < '\0';
            }
        }
        return true;
    }
    
    public static double parseAsDouble(final String s, final double n) {
        if (s == null) {
            return n;
        }
        final String trim = s.trim();
        if (trim.length() == 0) {
            return n;
        }
        try {
            return parseDouble(trim);
        }
        catch (NumberFormatException ex) {
            return n;
        }
    }
    
    public static int parseAsInt(final String s, final int n) {
        if (s == null) {
            return n;
        }
        String s2 = s.trim();
        int n2 = s2.length();
        if (n2 == 0) {
            return n;
        }
        int index = 0;
    Block_9_Outer:
        while (true) {
            Label_0092: {
                if (n2 < 0) {
                    final char char1 = s2.charAt(0);
                    if (char1 != '+') {
                        break Label_0092;
                    }
                    s2 = s2.substring(1);
                    n2 = s2.length();
                }
                if (index < n2) {
                    final char char2 = s2.charAt(index);
                    if (char2 <= '9') {
                        if (char2 >= '0') {
                            break Label_0092;
                        }
                    }
                }
                else {
                    try {
                        return Integer.parseInt(s2);
                    }
                    catch (NumberFormatException ex) {
                        return n;
                    }
                }
                try {
                    return (int)parseDouble(s2);
                    while (true) {
                        index = 0 + 1;
                        continue Block_9_Outer;
                        index = 0;
                        continue;
                    }
                }
                // iftrue(Label_0054:, char1 != '-')
                catch (NumberFormatException ex2) {
                    return n;
                }
            }
            ++index;
            continue;
        }
    }
    
    public static long parseAsLong(final String s, final long n) {
        if (s == null) {
            return n;
        }
        String s2 = s.trim();
        int n2 = s2.length();
        if (n2 == 0) {
            return n;
        }
        int index = 0;
    Block_9_Outer:
        while (true) {
            Label_0097: {
                if (n2 < 0) {
                    final char char1 = s2.charAt(0);
                    if (char1 != '+') {
                        break Label_0097;
                    }
                    s2 = s2.substring(1);
                    n2 = s2.length();
                }
                if (index < n2) {
                    final char char2 = s2.charAt(index);
                    if (char2 <= '9') {
                        if (char2 >= '0') {
                            break Label_0097;
                        }
                    }
                }
                else {
                    try {
                        return Long.parseLong(s2);
                    }
                    catch (NumberFormatException ex) {
                        return n;
                    }
                }
                try {
                    return (long)parseDouble(s2);
                    while (true) {
                        index = 0 + 1;
                        continue Block_9_Outer;
                        index = 0;
                        continue;
                    }
                }
                // iftrue(Label_0058:, char1 != '-')
                catch (NumberFormatException ex2) {
                    return n;
                }
            }
            ++index;
            continue;
        }
    }
    
    public static final double parseDouble(final String s) throws NumberFormatException {
        if ("2.2250738585072012e-308".equals(s)) {
            return Double.MIN_NORMAL;
        }
        return Double.parseDouble(s);
    }
    
    public static final int parseInt(final String s) {
        char c = s.charAt(0);
        final int length = s.length();
        boolean b;
        if (c == '-') {
            b = true;
        }
        else {
            b = false;
        }
        int i;
        if (b) {
            if (length == 1 || length > 10) {
                return Integer.parseInt(s);
            }
            i = 1 + 1;
            c = s.charAt(1);
        }
        else {
            if (length > 9) {
                return Integer.parseInt(s);
            }
            i = 1;
        }
        if (c > '9' || c < '0') {
            return Integer.parseInt(s);
        }
        int n = c - '0';
        if (i < length) {
            final int index = i + 1;
            final char char1 = s.charAt(i);
            if (char1 > '9' || char1 < '0') {
                return Integer.parseInt(s);
            }
            n = n * 10 + (char1 - '0');
            if (index < length) {
                i = index + 1;
                final char char2 = s.charAt(index);
                if (char2 > '9' || char2 < '0') {
                    return Integer.parseInt(s);
                }
                n = n * 10 + (char2 - '0');
                if (i < length) {
                    do {
                        final int index2 = i;
                        i = index2 + 1;
                        final char char3 = s.charAt(index2);
                        if (char3 > '9' || char3 < '0') {
                            return Integer.parseInt(s);
                        }
                        n = n * 10 + (char3 - '0');
                    } while (i < length);
                }
            }
        }
        if (b) {
            return -n;
        }
        return n;
    }
    
    public static final int parseInt(final char[] array, final int n, final int n2) {
        int n3 = array[n] - '0';
        final int n4 = n2 + n;
        final int n5 = n + 1;
        if (n5 < n4) {
            n3 = n3 * 10 + (array[n5] - '0');
            final int n6 = n5 + 1;
            if (n6 < n4) {
                n3 = n3 * 10 + (array[n6] - '0');
                final int n7 = n6 + 1;
                if (n7 < n4) {
                    n3 = n3 * 10 + (array[n7] - '0');
                    final int n8 = n7 + 1;
                    if (n8 < n4) {
                        n3 = n3 * 10 + (array[n8] - '0');
                        final int n9 = n8 + 1;
                        if (n9 < n4) {
                            n3 = n3 * 10 + (array[n9] - '0');
                            final int n10 = n9 + 1;
                            if (n10 < n4) {
                                n3 = n3 * 10 + (array[n10] - '0');
                                final int n11 = n10 + 1;
                                if (n11 < n4) {
                                    n3 = n3 * 10 + (array[n11] - '0');
                                    final int n12 = n11 + 1;
                                    if (n12 < n4) {
                                        n3 = n3 * 10 + (array[n12] - '0');
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return n3;
    }
    
    public static final long parseLong(final String s) {
        if (s.length() <= 9) {
            return parseInt(s);
        }
        return Long.parseLong(s);
    }
    
    public static final long parseLong(final char[] array, final int n, final int n2) {
        final int n3 = n2 - 9;
        return 1000000000L * parseInt(array, n, n3) + parseInt(array, n + n3, 9);
    }
}
