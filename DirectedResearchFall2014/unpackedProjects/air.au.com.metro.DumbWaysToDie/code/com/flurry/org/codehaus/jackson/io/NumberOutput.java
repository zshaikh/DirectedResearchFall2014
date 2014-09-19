package com.flurry.org.codehaus.jackson.io;

public final class NumberOutput
{
    private static int BILLION;
    static final char[] FULL_TRIPLETS;
    static final byte[] FULL_TRIPLETS_B;
    static final char[] LEADING_TRIPLETS;
    private static long MAX_INT_AS_LONG;
    private static int MILLION;
    private static long MIN_INT_AS_LONG;
    private static final char NULL_CHAR;
    static final String SMALLEST_LONG;
    private static long TEN_BILLION_L;
    private static long THOUSAND_L;
    static final String[] sSmallIntStrs;
    static final String[] sSmallIntStrs2;
    
    static {
        NumberOutput.MILLION = 1000000;
        NumberOutput.BILLION = 1000000000;
        NumberOutput.TEN_BILLION_L = 10000000000L;
        NumberOutput.THOUSAND_L = 1000L;
        NumberOutput.MIN_INT_AS_LONG = -2147483648L;
        NumberOutput.MAX_INT_AS_LONG = 2147483647L;
        SMALLEST_LONG = String.valueOf(Long.MIN_VALUE);
        LEADING_TRIPLETS = new char[4000];
        FULL_TRIPLETS = new char[4000];
        int i = 0;
        int n = 0;
        while (i < 10) {
            final char c = (char)(i + 48);
            char c2;
            if (i == 0) {
                c2 = '\0';
            }
            else {
                c2 = c;
            }
            int j = 0;
            int n2 = n;
            while (j < 10) {
                final char c3 = (char)(j + 48);
                char c4;
                if (i == 0 && j == 0) {
                    c4 = '\0';
                }
                else {
                    c4 = c3;
                }
                int n3 = n2;
                for (int k = 0; k < 10; ++k) {
                    final char c5 = (char)(k + 48);
                    NumberOutput.LEADING_TRIPLETS[n3] = c2;
                    NumberOutput.LEADING_TRIPLETS[n3 + 1] = c4;
                    NumberOutput.LEADING_TRIPLETS[n3 + 2] = c5;
                    NumberOutput.FULL_TRIPLETS[n3] = c;
                    NumberOutput.FULL_TRIPLETS[n3 + 1] = c3;
                    NumberOutput.FULL_TRIPLETS[n3 + 2] = c5;
                    n3 += 4;
                }
                ++j;
                n2 = n3;
            }
            ++i;
            n = n2;
        }
        FULL_TRIPLETS_B = new byte[4000];
        for (int l = 0; l < 4000; ++l) {
            NumberOutput.FULL_TRIPLETS_B[l] = (byte)NumberOutput.FULL_TRIPLETS[l];
        }
        sSmallIntStrs = new String[] { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" };
        sSmallIntStrs2 = new String[] { "-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10" };
    }
    
    private static int calcLongStrLength(final long n) {
        int n2 = 10;
        for (long ten_BILLION_L = NumberOutput.TEN_BILLION_L; n >= ten_BILLION_L && n2 != 19; ++n2, ten_BILLION_L = (ten_BILLION_L << 3) + (ten_BILLION_L << 1)) {}
        return n2;
    }
    
    private static int outputFullTriplet(final int n, final byte[] array, final int n2) {
        final int n3 = n << 2;
        final int n4 = n2 + 1;
        final byte[] full_TRIPLETS_B = NumberOutput.FULL_TRIPLETS_B;
        final int n5 = n3 + 1;
        array[n2] = full_TRIPLETS_B[n3];
        final int n6 = n4 + 1;
        final byte[] full_TRIPLETS_B2 = NumberOutput.FULL_TRIPLETS_B;
        final int n7 = n5 + 1;
        array[n4] = full_TRIPLETS_B2[n5];
        final int n8 = n6 + 1;
        array[n6] = NumberOutput.FULL_TRIPLETS_B[n7];
        return n8;
    }
    
    private static int outputFullTriplet(final int n, final char[] array, final int n2) {
        final int n3 = n << 2;
        final int n4 = n2 + 1;
        final char[] full_TRIPLETS = NumberOutput.FULL_TRIPLETS;
        final int n5 = n3 + 1;
        array[n2] = full_TRIPLETS[n3];
        final int n6 = n4 + 1;
        final char[] full_TRIPLETS2 = NumberOutput.FULL_TRIPLETS;
        final int n7 = n5 + 1;
        array[n4] = full_TRIPLETS2[n5];
        final int n8 = n6 + 1;
        array[n6] = NumberOutput.FULL_TRIPLETS[n7];
        return n8;
    }
    
    public static int outputInt(int n, final byte[] array, int n2) {
        if (n < 0) {
            if (n == Integer.MIN_VALUE) {
                return outputLong(n, array, n2);
            }
            final int n3 = n2 + 1;
            array[n2] = 45;
            n = -n;
            n2 = n3;
        }
        if (n < NumberOutput.MILLION) {
            int n5;
            if (n < 1000) {
                if (n < 10) {
                    final int n4 = n2 + 1;
                    array[n2] = (byte)(n + 48);
                    n5 = n4;
                }
                else {
                    n5 = outputLeadingTriplet(n, array, n2);
                }
            }
            else {
                final int n6 = n / 1000;
                n5 = outputFullTriplet(n - n6 * 1000, array, outputLeadingTriplet(n6, array, n2));
            }
            return n5;
        }
        boolean b;
        if (n >= NumberOutput.BILLION) {
            b = true;
        }
        else {
            b = false;
        }
        if (b) {
            n -= NumberOutput.BILLION;
            if (n >= NumberOutput.BILLION) {
                n -= NumberOutput.BILLION;
                final int n7 = n2 + 1;
                array[n2] = 50;
                n2 = n7;
            }
            else {
                final int n8 = n2 + 1;
                array[n2] = 49;
                n2 = n8;
            }
        }
        final int n9 = n / 1000;
        final int n10 = n - n9 * 1000;
        final int n11 = n9 / 1000;
        final int n12 = n9 - n11 * 1000;
        int n13;
        if (b) {
            n13 = outputFullTriplet(n11, array, n2);
        }
        else {
            n13 = outputLeadingTriplet(n11, array, n2);
        }
        return outputFullTriplet(n10, array, outputFullTriplet(n12, array, n13));
    }
    
    public static int outputInt(int n, final char[] array, int n2) {
        if (n < 0) {
            if (n == Integer.MIN_VALUE) {
                return outputLong(n, array, n2);
            }
            final int n3 = n2 + 1;
            array[n2] = '-';
            n = -n;
            n2 = n3;
        }
        if (n < NumberOutput.MILLION) {
            int n5;
            if (n < 1000) {
                if (n < 10) {
                    final int n4 = n2 + 1;
                    array[n2] = (char)(n + 48);
                    n5 = n4;
                }
                else {
                    n5 = outputLeadingTriplet(n, array, n2);
                }
            }
            else {
                final int n6 = n / 1000;
                n5 = outputFullTriplet(n - n6 * 1000, array, outputLeadingTriplet(n6, array, n2));
            }
            return n5;
        }
        boolean b;
        if (n >= NumberOutput.BILLION) {
            b = true;
        }
        else {
            b = false;
        }
        if (b) {
            n -= NumberOutput.BILLION;
            if (n >= NumberOutput.BILLION) {
                n -= NumberOutput.BILLION;
                final int n7 = n2 + 1;
                array[n2] = '2';
                n2 = n7;
            }
            else {
                final int n8 = n2 + 1;
                array[n2] = '1';
                n2 = n8;
            }
        }
        final int n9 = n / 1000;
        final int n10 = n - n9 * 1000;
        final int n11 = n9 / 1000;
        final int n12 = n9 - n11 * 1000;
        int n13;
        if (b) {
            n13 = outputFullTriplet(n11, array, n2);
        }
        else {
            n13 = outputLeadingTriplet(n11, array, n2);
        }
        return outputFullTriplet(n10, array, outputFullTriplet(n12, array, n13));
    }
    
    private static int outputLeadingTriplet(final int n, final byte[] array, int n2) {
        final int n3 = n << 2;
        final char[] leading_TRIPLETS = NumberOutput.LEADING_TRIPLETS;
        final int n4 = n3 + 1;
        final char c = leading_TRIPLETS[n3];
        if (c != '\0') {
            final int n5 = n2 + 1;
            array[n2] = (byte)c;
            n2 = n5;
        }
        final char[] leading_TRIPLETS2 = NumberOutput.LEADING_TRIPLETS;
        final int n6 = n4 + 1;
        final char c2 = leading_TRIPLETS2[n4];
        if (c2 != '\0') {
            final int n7 = n2 + 1;
            array[n2] = (byte)c2;
            n2 = n7;
        }
        final int n8 = n2 + 1;
        array[n2] = (byte)NumberOutput.LEADING_TRIPLETS[n6];
        return n8;
    }
    
    private static int outputLeadingTriplet(final int n, final char[] array, int n2) {
        final int n3 = n << 2;
        final char[] leading_TRIPLETS = NumberOutput.LEADING_TRIPLETS;
        final int n4 = n3 + 1;
        final char c = leading_TRIPLETS[n3];
        if (c != '\0') {
            final int n5 = n2 + 1;
            array[n2] = c;
            n2 = n5;
        }
        final char[] leading_TRIPLETS2 = NumberOutput.LEADING_TRIPLETS;
        final int n6 = n4 + 1;
        final char c2 = leading_TRIPLETS2[n4];
        if (c2 != '\0') {
            final int n7 = n2 + 1;
            array[n2] = c2;
            n2 = n7;
        }
        final int n8 = n2 + 1;
        array[n2] = NumberOutput.LEADING_TRIPLETS[n6];
        return n8;
    }
    
    public static int outputLong(long n, final byte[] array, int n2) {
        if (n < 0L) {
            if (n > NumberOutput.MIN_INT_AS_LONG) {
                return outputInt((int)n, array, n2);
            }
            if (n == Long.MIN_VALUE) {
                final int length = NumberOutput.SMALLEST_LONG.length();
                int i = 0;
                int n3 = n2;
                while (i < length) {
                    final int n4 = n3 + 1;
                    array[n3] = (byte)NumberOutput.SMALLEST_LONG.charAt(i);
                    ++i;
                    n3 = n4;
                }
                return n3;
            }
            final int n5 = n2 + 1;
            array[n2] = 45;
            n = -n;
            n2 = n5;
        }
        else if (n <= NumberOutput.MAX_INT_AS_LONG) {
            return outputInt((int)n, array, n2);
        }
        final int n6 = n2;
        int n8;
        final int n7 = n8 = n2 + calcLongStrLength(n);
        while (n > NumberOutput.MAX_INT_AS_LONG) {
            n8 -= 3;
            final long n9 = n / NumberOutput.THOUSAND_L;
            outputFullTriplet((int)(n - n9 * NumberOutput.THOUSAND_L), array, n8);
            n = n9;
        }
        int j;
        int n10;
        for (j = (int)n; j >= 1000; j = n10) {
            n8 -= 3;
            n10 = j / 1000;
            outputFullTriplet(j - n10 * 1000, array, n8);
        }
        outputLeadingTriplet(j, array, n6);
        return n7;
    }
    
    public static int outputLong(long n, final char[] dst, int dstBegin) {
        if (n < 0L) {
            if (n > NumberOutput.MIN_INT_AS_LONG) {
                return outputInt((int)n, dst, dstBegin);
            }
            if (n == Long.MIN_VALUE) {
                final int length = NumberOutput.SMALLEST_LONG.length();
                NumberOutput.SMALLEST_LONG.getChars(0, length, dst, dstBegin);
                return dstBegin + length;
            }
            final int n2 = dstBegin + 1;
            dst[dstBegin] = '-';
            n = -n;
            dstBegin = n2;
        }
        else if (n <= NumberOutput.MAX_INT_AS_LONG) {
            return outputInt((int)n, dst, dstBegin);
        }
        final int n3 = dstBegin;
        int n5;
        final int n4 = n5 = dstBegin + calcLongStrLength(n);
        while (n > NumberOutput.MAX_INT_AS_LONG) {
            n5 -= 3;
            final long n6 = n / NumberOutput.THOUSAND_L;
            outputFullTriplet((int)(n - n6 * NumberOutput.THOUSAND_L), dst, n5);
            n = n6;
        }
        int i;
        int n7;
        for (i = (int)n; i >= 1000; i = n7) {
            n5 -= 3;
            n7 = i / 1000;
            outputFullTriplet(i - n7 * 1000, dst, n5);
        }
        outputLeadingTriplet(i, dst, n3);
        return n4;
    }
    
    public static String toString(final double d) {
        return Double.toString(d);
    }
    
    public static String toString(final int i) {
        if (i < NumberOutput.sSmallIntStrs.length) {
            if (i >= 0) {
                return NumberOutput.sSmallIntStrs[i];
            }
            final int n = -i - 1;
            if (n < NumberOutput.sSmallIntStrs2.length) {
                return NumberOutput.sSmallIntStrs2[n];
            }
        }
        return Integer.toString(i);
    }
    
    public static String toString(final long i) {
        if (i <= 2147483647L && i >= -2147483648L) {
            return toString((int)i);
        }
        return Long.toString(i);
    }
}
