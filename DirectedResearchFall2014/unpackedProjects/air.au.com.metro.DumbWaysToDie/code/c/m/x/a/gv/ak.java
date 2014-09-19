package c.m.x.a.gv;

public final class ak
{
    private static final Object a;
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;
    
    static {
        a = new Object();
    }
    
    public ak() {
        this((byte)0);
    }
    
    private ak(final byte b) {
        super();
        this.b = false;
        final int e = e(10);
        this.c = new int[e];
        this.d = new Object[e];
        this.e = 0;
    }
    
    private static int a(final int[] array, final int n, final int n2) {
        int n3 = n + 0;
        int n4 = -1;
        while (n3 - n4 > 1) {
            final int n5 = (n3 + n4) / 2;
            if (array[n5] < n2) {
                n4 = n5;
            }
            else {
                n3 = n5;
            }
        }
        if (n3 == n + 0) {
            return -1 ^ n + 0;
        }
        if (array[n3] == n2) {
            return n3;
        }
        return ~n3;
    }
    
    private void c() {
        final int e = this.e;
        final int[] c = this.c;
        final Object[] d = this.d;
        int i = 0;
        int e2 = 0;
        while (i < e) {
            final Object o = d[i];
            if (o != ak.a) {
                if (i != e2) {
                    c[e2] = c[i];
                    d[e2] = o;
                }
                ++e2;
            }
            ++i;
        }
        this.b = false;
        this.e = e2;
    }
    
    private static int e(final int n) {
        int n2 = n * 4;
        for (int i = 4; i < 32; ++i) {
            if (n2 <= (1 << i) - 12) {
                n2 = (1 << i) - 12;
                break;
            }
        }
        return n2 / 4;
    }
    
    public final int a() {
        if (this.b) {
            this.c();
        }
        return this.e;
    }
    
    public final Object a(final int n) {
        final int a = a(this.c, this.e, n);
        if (a < 0 || this.d[a] == ak.a) {
            return null;
        }
        return this.d[a];
    }
    
    public final void a(final int n, final Object o) {
        final int a = a(this.c, this.e, n);
        if (a >= 0) {
            this.d[a] = o;
            return;
        }
        int n2 = ~a;
        if (n2 < this.e && this.d[n2] == ak.a) {
            this.c[n2] = n;
            this.d[n2] = o;
            return;
        }
        if (this.b && this.e >= this.c.length) {
            this.c();
            n2 = (-1 ^ a(this.c, this.e, n));
        }
        if (this.e >= this.c.length) {
            final int e = e(1 + this.e);
            final int[] c = new int[e];
            final Object[] d = new Object[e];
            System.arraycopy(this.c, 0, c, 0, this.c.length);
            System.arraycopy(this.d, 0, d, 0, this.d.length);
            this.c = c;
            this.d = d;
        }
        if (this.e - n2 != 0) {
            System.arraycopy(this.c, n2, this.c, n2 + 1, this.e - n2);
            System.arraycopy(this.d, n2, this.d, n2 + 1, this.e - n2);
        }
        this.c[n2] = n;
        this.d[n2] = o;
        ++this.e;
    }
    
    public final void b() {
        final int e = this.e;
        final Object[] d = this.d;
        for (int i = 0; i < e; ++i) {
            d[i] = null;
        }
        this.e = 0;
        this.b = false;
    }
    
    public final void b(final int n) {
        final int a = a(this.c, this.e, n);
        if (a >= 0 && this.d[a] != ak.a) {
            this.d[a] = ak.a;
            this.b = true;
        }
    }
    
    public final int c(final int n) {
        if (this.b) {
            this.c();
        }
        return this.c[n];
    }
    
    public final Object d(final int n) {
        if (this.b) {
            this.c();
        }
        return this.d[n];
    }
}
