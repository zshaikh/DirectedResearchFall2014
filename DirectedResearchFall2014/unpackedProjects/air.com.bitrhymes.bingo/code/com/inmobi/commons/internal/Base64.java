package com.inmobi.commons.internal;

import java.io.*;

public class Base64
{
    public static final int CRLF = 4;
    public static final int DEFAULT = 0;
    public static final int NO_CLOSE = 16;
    public static final int NO_PADDING = 1;
    public static final int NO_WRAP = 2;
    public static final int URL_SAFE = 8;
    static final /* synthetic */ boolean a;
    
    static {
        a = !Base64.class.desiredAssertionStatus();
    }
    
    public static byte[] decode(final String s, final int n) {
        return decode(s.getBytes(), n);
    }
    
    public static byte[] decode(final byte[] array, final int n) {
        return decode(array, 0, array.length, n);
    }
    
    public static byte[] decode(final byte[] array, final int n, final int n2, final int n3) {
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
    
    public static byte[] encode(final byte[] array, final int n) {
        return encode(array, 0, array.length, n);
    }
    
    public static byte[] encode(final byte[] array, final int n, final int n2, final int n3) {
        final c c = new c(n3, null);
        int n4 = 4 * (n2 / 3);
        if (c.e) {
            if (n2 % 3 > 0) {
                n4 += 4;
            }
        }
        else {
            switch (n2 % 3) {
                case 2: {
                    n4 += 3;
                    break;
                }
                case 1: {
                    n4 += 2;
                }
            }
        }
        if (c.f && n2 > 0) {
            final int n5 = 1 + (n2 - 1) / 57;
            int n6;
            if (c.g) {
                n6 = 2;
            }
            else {
                n6 = 1;
            }
            n4 += n5 * n6;
        }
        c.a = new byte[n4];
        c.a(array, n, n2, true);
        if (!Base64.a && c.b != n4) {
            throw new AssertionError();
        }
        return c.a;
    }
    
    public static String encodeToString(final byte[] array, final int n) {
        try {
            return new String(encode(array, n), "US-ASCII");
        }
        catch (UnsupportedEncodingException detailMessage) {
            throw new AssertionError((Object)detailMessage);
        }
    }
    
    public static String encodeToString(final byte[] array, final int n, final int n2, final int n3) {
        try {
            return new String(encode(array, n, n2, n3), "US-ASCII");
        }
        catch (UnsupportedEncodingException detailMessage) {
            throw new AssertionError((Object)detailMessage);
        }
    }
    
    abstract static class a
    {
        public byte[] a;
        public int b;
        
        public abstract int a(final int p0);
        
        public abstract boolean a(final byte[] p0, final int p1, final int p2, final boolean p3);
    }
    
    static class b extends a
    {
        private static final int[] c;
        private static final int[] d;
        private static final int e = -1;
        private static final int f = -2;
        private int g;
        private int h;
        private final int[] i;
        
        static {
            c = new int[] { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
            d = new int[] { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
        }
        
        public b(final int n, final byte[] a) {
            super();
            this.a = a;
            int[] i;
            if ((n & 0x8) == 0x0) {
                i = b.c;
            }
            else {
                i = b.d;
            }
            this.i = i;
            this.g = 0;
            this.h = 0;
        }
        
        @Override
        public int a(final int n) {
            return 10 + n * 3 / 4;
        }
        
        @Override
        public boolean a(final byte[] array, final int n, final int n2, final boolean b) {
            if (this.g == 6) {
                return false;
            }
            final int n3 = n2 + n;
            final int g = this.g;
            int h = this.h;
            final byte[] a = this.a;
            final int[] i = this.i;
            int j = n;
            int n4 = 0;
            int n5 = g;
            while (true) {
                while (j < n3) {
                    if (n5 == 0) {
                        while (j + 4 <= n3) {
                            h = (i[0xFF & array[j]] << 18 | i[0xFF & array[j + 1]] << 12 | i[0xFF & array[j + 2]] << 6 | i[0xFF & array[j + 3]]);
                            if (h < 0) {
                                break;
                            }
                            a[n4 + 2] = (byte)h;
                            a[n4 + 1] = (byte)(h >> 8);
                            a[n4] = (byte)(h >> 16);
                            n4 += 3;
                            j += 4;
                        }
                        if (j >= n3) {
                            int n6 = n4;
                            final int h2 = h;
                            if (!b) {
                                this.g = n5;
                                this.h = h2;
                                this.b = n6;
                                return true;
                            }
                            switch (n5) {
                                case 1: {
                                    this.g = 6;
                                    return false;
                                }
                                case 2: {
                                    final int n7 = n6 + 1;
                                    a[n6] = (byte)(h2 >> 4);
                                    n6 = n7;
                                    break;
                                }
                                case 3: {
                                    final int n8 = n6 + 1;
                                    a[n6] = (byte)(h2 >> 10);
                                    n6 = n8 + 1;
                                    a[n8] = (byte)(h2 >> 2);
                                    break;
                                }
                                case 4: {
                                    this.g = 6;
                                    return false;
                                }
                            }
                            this.g = n5;
                            this.b = n6;
                            return true;
                        }
                    }
                    final int n9 = j + 1;
                    final int n10 = i[0xFF & array[j]];
                    switch (n5) {
                        case 0: {
                            if (n10 >= 0) {
                                ++n5;
                                h = n10;
                                j = n9;
                                continue;
                            }
                            if (n10 != -1) {
                                this.g = 6;
                                return false;
                            }
                            break;
                        }
                        case 1: {
                            if (n10 >= 0) {
                                h = (n10 | h << 6);
                                ++n5;
                                j = n9;
                                continue;
                            }
                            if (n10 != -1) {
                                this.g = 6;
                                return false;
                            }
                            break;
                        }
                        case 2: {
                            if (n10 >= 0) {
                                h = (n10 | h << 6);
                                ++n5;
                                j = n9;
                                continue;
                            }
                            if (n10 == -2) {
                                final int n11 = n4 + 1;
                                a[n4] = (byte)(h >> 4);
                                j = n9;
                                n4 = n11;
                                n5 = 4;
                                continue;
                            }
                            if (n10 != -1) {
                                this.g = 6;
                                return false;
                            }
                            break;
                        }
                        case 3: {
                            if (n10 >= 0) {
                                h = (n10 | h << 6);
                                a[n4 + 2] = (byte)h;
                                a[n4 + 1] = (byte)(h >> 8);
                                a[n4] = (byte)(h >> 16);
                                n4 += 3;
                                j = n9;
                                n5 = 0;
                                continue;
                            }
                            if (n10 == -2) {
                                a[n4 + 1] = (byte)(h >> 2);
                                a[n4] = (byte)(h >> 10);
                                n4 += 2;
                                n5 = 5;
                                j = n9;
                                continue;
                            }
                            if (n10 != -1) {
                                this.g = 6;
                                return false;
                            }
                            break;
                        }
                        case 4: {
                            if (n10 == -2) {
                                ++n5;
                                j = n9;
                                continue;
                            }
                            if (n10 != -1) {
                                this.g = 6;
                                return false;
                            }
                            break;
                        }
                        case 5: {
                            if (n10 != -1) {
                                this.g = 6;
                                return false;
                            }
                            break;
                        }
                    }
                    j = n9;
                }
                int n6 = n4;
                final int h2 = h;
                continue;
            }
        }
    }
    
    static class c extends a
    {
        public static final int c = 19;
        static final /* synthetic */ boolean h;
        private static final byte[] i;
        private static final byte[] j;
        int d;
        public final boolean e;
        public final boolean f;
        public final boolean g;
        private final byte[] k;
        private int l;
        private final byte[] m;
        
        static {
            h = !Base64.class.desiredAssertionStatus();
            i = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
            j = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        }
        
        public c(final int n, final byte[] a) {
            super();
            this.a = a;
            this.e = ((n & 0x1) == 0x0);
            this.f = ((n & 0x2) == 0x0);
            this.g = ((n & 0x4) != 0x0);
            byte[] m;
            if ((n & 0x8) == 0x0) {
                m = Base64.c.i;
            }
            else {
                m = Base64.c.j;
            }
            this.m = m;
            this.k = new byte[2];
            this.d = 0;
            int l;
            if (this.f) {
                l = 19;
            }
            else {
                l = -1;
            }
            this.l = l;
        }
        
        @Override
        public int a(final int n) {
            return 10 + n * 8 / 5;
        }
        
        @Override
        public boolean a(final byte[] array, final int n, final int n2, final boolean b) {
            final byte[] m = this.m;
            final byte[] a = this.a;
            int l = this.l;
            final int n3 = n2 + n;
            int n4 = -1;
            int n5 = 0;
            Label_0059: {
                switch (this.d) {
                    case 0: {
                        n5 = n;
                        break Label_0059;
                    }
                    case 1: {
                        if (n + 2 <= n3) {
                            final int n6 = (0xFF & this.k[0]) << 16;
                            final int n7 = n + 1;
                            final int n8 = n6 | (0xFF & array[n]) << 8;
                            final int n9 = n7 + 1;
                            n4 = (n8 | (0xFF & array[n7]));
                            this.d = 0;
                            n5 = n9;
                            break Label_0059;
                        }
                        break;
                    }
                    case 2: {
                        if (n + 1 <= n3) {
                            final int n10 = (0xFF & this.k[0]) << 16 | (0xFF & this.k[1]) << 8;
                            n5 = n + 1;
                            n4 = (n10 | (0xFF & array[n]));
                            this.d = 0;
                            break Label_0059;
                        }
                        break;
                    }
                }
                n5 = n;
            }
            int n11 = 0;
            while (true) {
                Label_1335: {
                    if (n4 == -1) {
                        break Label_1335;
                    }
                    final int n12 = 0 + 1;
                    a[0] = m[0x3F & n4 >> 18];
                    final int n13 = n12 + 1;
                    a[n12] = m[0x3F & n4 >> 12];
                    final int n14 = n13 + 1;
                    a[n13] = m[0x3F & n4 >> 6];
                    n11 = n14 + 1;
                    a[n14] = m[n4 & 0x3F];
                    if (--l != 0) {
                        break Label_1335;
                    }
                    if (this.g) {
                        final int n15 = n11 + 1;
                        a[n11] = 13;
                        n11 = n15;
                    }
                    final int n16 = n11 + 1;
                    a[n11] = 10;
                    int n17 = n16;
                    l = 19;
                    int n18 = n5;
                    while (n18 + 3 <= n3) {
                        final int n19 = (0xFF & array[n18]) << 16 | (0xFF & array[n18 + 1]) << 8 | (0xFF & array[n18 + 2]);
                        a[n17] = m[0x3F & n19 >> 18];
                        a[n17 + 1] = m[0x3F & n19 >> 12];
                        a[n17 + 2] = m[0x3F & n19 >> 6];
                        a[n17 + 3] = m[n19 & 0x3F];
                        n18 += 3;
                        n17 += 4;
                        if (--l == 0) {
                            int n20;
                            if (this.g) {
                                n20 = n17 + 1;
                                a[n17] = 13;
                            }
                            else {
                                n20 = n17;
                            }
                            n17 = n20 + 1;
                            a[n20] = 10;
                            l = 19;
                        }
                    }
                    int b7;
                    if (b) {
                        int n32;
                        int n33;
                        if (n18 - this.d == n3 - 1) {
                            int n22;
                            byte b3;
                            int n23;
                            if (this.d > 0) {
                                final byte[] k = this.k;
                                final int n21 = 0 + 1;
                                final byte b2 = k[0];
                                n22 = n18;
                                b3 = b2;
                                n23 = n21;
                            }
                            else {
                                n22 = n18 + 1;
                                b3 = array[n18];
                                n23 = 0;
                            }
                            final int n24 = (b3 & 0xFF) << 4;
                            this.d -= n23;
                            final int n25 = n17 + 1;
                            a[n17] = m[0x3F & n24 >> 6];
                            final int n26 = n25 + 1;
                            a[n25] = m[n24 & 0x3F];
                            int n29;
                            if (this.e) {
                                final int n27 = n26 + 1;
                                a[n26] = 61;
                                final int n28 = n27 + 1;
                                a[n27] = 61;
                                n29 = n28;
                            }
                            else {
                                n29 = n26;
                            }
                            if (this.f) {
                                if (this.g) {
                                    final int n30 = n29 + 1;
                                    a[n29] = 13;
                                    n29 = n30;
                                }
                                final int n31 = n29 + 1;
                                a[n29] = 10;
                                n32 = n22;
                                n33 = n31;
                            }
                            else {
                                n33 = n29;
                                n32 = n22;
                            }
                        }
                        else if (n18 - this.d == n3 - 2) {
                            int n35;
                            byte b5;
                            int n36;
                            if (this.d > 1) {
                                final byte[] i = this.k;
                                final int n34 = 0 + 1;
                                final byte b4 = i[0];
                                n35 = n18;
                                b5 = b4;
                                n36 = n34;
                            }
                            else {
                                n35 = n18 + 1;
                                b5 = array[n18];
                                n36 = 0;
                            }
                            final int n37 = (b5 & 0xFF) << 10;
                            int n39;
                            int n40;
                            int n41;
                            if (this.d > 0) {
                                final byte[] j = this.k;
                                final int n38 = n36 + 1;
                                n39 = j[n36];
                                n40 = n35;
                                n41 = n38;
                            }
                            else {
                                n40 = n35 + 1;
                                final byte b6 = array[n35];
                                n41 = n36;
                                n39 = b6;
                            }
                            final int n42 = n37 | (n39 & 0xFF) << 2;
                            this.d -= n41;
                            final int n43 = n17 + 1;
                            a[n17] = m[0x3F & n42 >> 12];
                            final int n44 = n43 + 1;
                            a[n43] = m[0x3F & n42 >> 6];
                            final int n45 = n44 + 1;
                            a[n44] = m[n42 & 0x3F];
                            int n46;
                            if (this.e) {
                                n46 = n45 + 1;
                                a[n45] = 61;
                            }
                            else {
                                n46 = n45;
                            }
                            if (this.f) {
                                if (this.g) {
                                    final int n47 = n46 + 1;
                                    a[n46] = 13;
                                    n46 = n47;
                                }
                                final int n48 = n46 + 1;
                                a[n46] = 10;
                                n32 = n40;
                                n33 = n48;
                            }
                            else {
                                n33 = n46;
                                n32 = n40;
                            }
                        }
                        else {
                            if (this.f && n17 > 0 && l != 19) {
                                int n49;
                                if (this.g) {
                                    n49 = n17 + 1;
                                    a[n17] = 13;
                                }
                                else {
                                    n49 = n17;
                                }
                                n17 = n49 + 1;
                                a[n49] = 10;
                            }
                            n32 = n18;
                            n33 = n17;
                        }
                        if (!Base64.c.h && this.d != 0) {
                            throw new AssertionError();
                        }
                        if (!Base64.c.h && n32 != n3) {
                            throw new AssertionError();
                        }
                        b7 = n33;
                    }
                    else if (n18 == n3 - 1) {
                        this.k[this.d++] = array[n18];
                        b7 = n17;
                    }
                    else {
                        if (n18 == n3 - 2) {
                            this.k[this.d++] = array[n18];
                            this.k[this.d++] = array[n18 + 1];
                        }
                        b7 = n17;
                    }
                    this.b = b7;
                    this.l = l;
                    return true;
                }
                int n17 = n11;
                int n18 = n5;
                continue;
            }
        }
    }
}
