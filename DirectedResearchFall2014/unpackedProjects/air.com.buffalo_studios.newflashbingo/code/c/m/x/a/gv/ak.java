package c.m.x.a.gv;

final class ak
{
    static final int[] a;
    static final long[] b;
    static final Object[] c;
    
    static {
        a = new int[0];
        b = new long[0];
        c = new Object[0];
    }
    
    public static int a(final int n) {
        int n2 = n * 4;
        for (int i = 4; i < 32; ++i) {
            if (n2 <= (1 << i) - 12) {
                n2 = (1 << i) - 12;
                break;
            }
        }
        return n2 / 4;
    }
    
    static int a(final int[] array, final int n, final int n2) {
        int i = 0;
        int n3 = n - 1;
        while (i <= n3) {
            final int n4 = i + n3 >>> 1;
            final int n5 = array[n4];
            if (n5 < n2) {
                i = n4 + 1;
            }
            else {
                if (n5 <= n2) {
                    return n4;
                }
                n3 = n4 - 1;
            }
        }
        return ~i;
    }
    
    public static boolean a(final Object o, final Object obj) {
        return o == obj || (o != null && o.equals(obj));
    }
}
