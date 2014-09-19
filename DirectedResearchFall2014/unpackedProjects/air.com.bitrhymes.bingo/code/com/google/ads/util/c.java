package com.google.ads.util;

public class c
{
    static {
        a = !c.class.desiredAssertionStatus();
    }
    
    public static byte[] a(final String s) {
        return a(s.getBytes(), 0);
    }
    
    public static byte[] a(final byte[] array, final int n) {
        return a(array, 0, array.length, n);
    }
    
    public static byte[] a(final byte[] array, final int n, final int n2, final int n3) {
        final b b = new b(n3, new byte[n2 * 3 / 4]);
        if (!b.a(array, n, n2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (b.b == b.a.length) {
            return b.a;
        }
        final byte[] array2 = new byte[b.b];
        System.arraycopy(b.a, 0, array2, 0, b.b);
        return array2;
    }
    
    public abstract static class a
    {
        public byte[] a;
        public int b;
    }
    
    public static class b extends a
    {
        private static final int[] c;
        private static final int[] d;
        private int e;
        private int f;
        private final int[] g;
        
        static {
            c = new int[] { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
            d = new int[] { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
        }
        
        public b(final int n, final byte[] a) {
            super();
            this.a = a;
            int[] g;
            if ((n & 0x8) == 0x0) {
                g = b.c;
            }
            else {
                g = b.d;
            }
            this.g = g;
            this.e = 0;
            this.f = 0;
        }
        
        public boolean a(final byte[] array, final int n, final int n2, final boolean b) {
            if (this.e == 6) {
                return false;
            }
            final int n3 = n2 + n;
            final int e = this.e;
            int f = this.f;
            final byte[] a = this.a;
            final int[] g = this.g;
            int i = n;
            int n4 = 0;
            int n5 = e;
            while (true) {
                while (i < n3) {
                    if (n5 == 0) {
                        while (i + 4 <= n3) {
                            f = (g[0xFF & array[i]] << 18 | g[0xFF & array[i + 1]] << 12 | g[0xFF & array[i + 2]] << 6 | g[0xFF & array[i + 3]]);
                            if (f < 0) {
                                break;
                            }
                            a[n4 + 2] = (byte)f;
                            a[n4 + 1] = (byte)(f >> 8);
                            a[n4] = (byte)(f >> 16);
                            n4 += 3;
                            i += 4;
                        }
                        if (i >= n3) {
                            int n6 = n4;
                            final int f2 = f;
                            if (!b) {
                                this.e = n5;
                                this.f = f2;
                                this.b = n6;
                                return true;
                            }
                            switch (n5) {
                                case 1: {
                                    this.e = 6;
                                    return false;
                                }
                                case 2: {
                                    final int n7 = n6 + 1;
                                    a[n6] = (byte)(f2 >> 4);
                                    n6 = n7;
                                    break;
                                }
                                case 3: {
                                    final int n8 = n6 + 1;
                                    a[n6] = (byte)(f2 >> 10);
                                    n6 = n8 + 1;
                                    a[n8] = (byte)(f2 >> 2);
                                    break;
                                }
                                case 4: {
                                    this.e = 6;
                                    return false;
                                }
                            }
                            this.e = n5;
                            this.b = n6;
                            return true;
                        }
                    }
                    final int n9 = i + 1;
                    final int n10 = g[0xFF & array[i]];
                    switch (n5) {
                        case 0: {
                            if (n10 >= 0) {
                                ++n5;
                                f = n10;
                                break;
                            }
                            if (n10 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        }
                        case 1: {
                            if (n10 >= 0) {
                                f = (n10 | f << 6);
                                ++n5;
                                break;
                            }
                            if (n10 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        }
                        case 2: {
                            if (n10 >= 0) {
                                f = (n10 | f << 6);
                                ++n5;
                                break;
                            }
                            if (n10 == -2) {
                                final int n11 = n4 + 1;
                                a[n4] = (byte)(f >> 4);
                                n5 = 4;
                                n4 = n11;
                                break;
                            }
                            if (n10 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        }
                        case 3: {
                            if (n10 >= 0) {
                                f = (n10 | f << 6);
                                a[n4 + 2] = (byte)f;
                                a[n4 + 1] = (byte)(f >> 8);
                                a[n4] = (byte)(f >> 16);
                                n4 += 3;
                                n5 = 0;
                                break;
                            }
                            if (n10 == -2) {
                                a[n4 + 1] = (byte)(f >> 2);
                                a[n4] = (byte)(f >> 10);
                                n4 += 2;
                                n5 = 5;
                                break;
                            }
                            if (n10 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        }
                        case 4: {
                            if (n10 == -2) {
                                ++n5;
                                break;
                            }
                            if (n10 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        }
                        case 5: {
                            if (n10 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        }
                    }
                    i = n9;
                }
                int n6 = n4;
                final int f2 = f;
                continue;
            }
        }
    }
}
