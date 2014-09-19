package c.m.x.a.iab;

public class a
{
    private static final byte[] b;
    private static final byte[] c;
    private static final byte[] d;
    private static final byte[] e;
    
    static {
        a = !a.class.desiredAssertionStatus();
        b = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        c = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        d = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
        e = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
    }
    
    private static int a(final byte[] array, final byte[] array2, final int n, final byte[] array3) {
        if (array[2] == 61) {
            array2[n] = (byte)((array3[array[0]] << 24 >>> 6 | array3[array[1]] << 24 >>> 12) >>> 16);
            return 1;
        }
        if (array[3] == 61) {
            final int n2 = array3[array[0]] << 24 >>> 6 | array3[array[1]] << 24 >>> 12 | array3[array[2]] << 24 >>> 18;
            array2[n] = (byte)(n2 >>> 16);
            array2[n + 1] = (byte)(n2 >>> 8);
            return 2;
        }
        final int n3 = array3[array[0]] << 24 >>> 6 | array3[array[1]] << 24 >>> 12 | array3[array[2]] << 24 >>> 18 | array3[array[3]] << 24 >>> 24;
        array2[n] = (byte)(n3 >> 16);
        array2[n + 1] = (byte)(n3 >> 8);
        array2[n + 2] = (byte)n3;
        return 3;
    }
    
    public static byte[] a(final String s) {
        final byte[] bytes = s.getBytes();
        final int length = bytes.length;
        final byte[] d = c.m.x.a.iab.a.d;
        final byte[] array = new byte[2 + length * 3 / 4];
        final byte[] array2 = new byte[4];
        int i = 0;
        int n = 0;
        int n2 = 0;
        while (i < length) {
            final byte b = (byte)(0x7F & bytes[i + 0]);
            final byte b2 = d[b];
            if (b2 < -5) {
                throw new b("Bad Base64 input character at " + i + ": " + bytes[i + 0] + "(decimal)");
            }
            if (b2 >= -1) {
                if (b == 61) {
                    final int n3 = length - i;
                    final byte b3 = (byte)(0x7F & bytes[0 + (length - 1)]);
                    if (n == 0 || n == 1) {
                        throw new b("invalid padding byte '=' at byte offset " + i);
                    }
                    if ((n == 3 && n3 > 2) || (n == 4 && n3 > 1)) {
                        throw new b("padding byte '=' falsely signals end of encoded value at offset " + i);
                    }
                    if (b3 != 61 && b3 != 10) {
                        throw new b("encoded value has invalid trailing byte");
                    }
                    break;
                }
                else {
                    final int n4 = n + 1;
                    array2[n] = b;
                    if (n4 == 4) {
                        n2 += a(array2, array, n2, d);
                        n = 0;
                    }
                    else {
                        n = n4;
                    }
                }
            }
            ++i;
        }
        int n5;
        if (n != 0) {
            if (n == 1) {
                throw new b("single trailing character at offset " + (length - 1));
            }
            array2[n] = 61;
            n5 = n2 + a(array2, array, n2, d);
        }
        else {
            n5 = n2;
        }
        final byte[] array3 = new byte[n5];
        System.arraycopy(array, 0, array3, 0, n5);
        return array3;
    }
}
