package c.m.x.a.gv;

import java.util.*;

public class at<K, V>
{
    static Object[] b;
    static int c;
    static Object[] d;
    static int e;
    int[] f;
    Object[] g;
    int h;
    
    public at() {
        super();
        this.f = ak.a;
        this.g = ak.c;
        this.h = 0;
    }
    
    private static void a(final int[] array, final Object[] array2, final int n) {
        Label_0076: {
            if (array.length != 8) {
                break Label_0076;
            }
            synchronized (ai.class) {
                if (at.e < 10) {
                    array2[0] = at.d;
                    array2[1] = array;
                    for (int i = (n << 1) - 1; i >= 2; --i) {
                        array2[i] = null;
                    }
                    at.d = array2;
                    ++at.e;
                }
                return;
            }
        }
        if (array.length != 4) {
            return;
        }
        synchronized (ai.class) {
            if (at.c < 10) {
                array2[0] = at.b;
                array2[1] = array;
                for (int j = (n << 1) - 1; j >= 2; --j) {
                    array2[j] = null;
                }
                at.b = array2;
                ++at.c;
            }
        }
    }
    
    private void d(final int n) {
        while (true) {
            Label_0098: {
                if (n != 8) {
                    break Label_0098;
                }
                synchronized (ai.class) {
                    if (at.d != null) {
                        final Object[] d = at.d;
                        this.g = d;
                        at.d = (Object[])d[0];
                        this.f = (int[])d[1];
                        d[0] = (d[1] = null);
                        --at.e;
                        return;
                    }
                    // monitorexit(ai.class)
                    this.f = new int[n];
                    this.g = new Object[n << 1];
                    return;
                }
            }
            if (n == 4) {
                synchronized (ai.class) {
                    if (at.b != null) {
                        final Object[] b = at.b;
                        this.g = b;
                        at.b = (Object[])b[0];
                        this.f = (int[])b[1];
                        b[0] = (b[1] = null);
                        --at.c;
                        return;
                    }
                }
                // monitorexit(ai.class)
                continue;
            }
            continue;
        }
    }
    
    private K e(final int n) {
        return (K)this.g[n << 1];
    }
    
    final int a() {
        final int h = this.h;
        int n;
        if (h == 0) {
            n = -1;
        }
        else {
            final int a = ak.a(this.f, h, 0);
            if (a < 0) {
                return a;
            }
            if (this.g[a << 1] == null) {
                return a;
            }
            int n2;
            for (n2 = a + 1; n2 < h && this.f[n2] == 0; ++n2) {
                if (this.g[n2 << 1] == null) {
                    return n2;
                }
            }
            for (n = a - 1; n >= 0 && this.f[n] == 0; --n) {
                if (this.g[n << 1] == null) {
                    return n;
                }
            }
            return ~n2;
        }
        return n;
    }
    
    final int a(final Object o) {
        int i = 1;
        final int n = 2 * this.h;
        final Object[] g = this.g;
        if (o == null) {
            while (i < n) {
                if (g[i] == null) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        else {
            while (i < n) {
                if (o.equals(g[i])) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        return -1;
    }
    
    final int a(final Object o, final int n) {
        final int h = this.h;
        int n2;
        if (h == 0) {
            n2 = -1;
        }
        else {
            final int a = ak.a(this.f, h, n);
            if (a < 0) {
                return a;
            }
            if (o.equals(this.g[a << 1])) {
                return a;
            }
            int n3;
            for (n3 = a + 1; n3 < h && this.f[n3] == n; ++n3) {
                if (o.equals(this.g[n3 << 1])) {
                    return n3;
                }
            }
            for (n2 = a - 1; n2 >= 0 && this.f[n2] == n; --n2) {
                if (o.equals(this.g[n2 << 1])) {
                    return n2;
                }
            }
            return ~n3;
        }
        return n2;
    }
    
    public final void a(final int n) {
        if (this.f.length < n) {
            final int[] f = this.f;
            final Object[] g = this.g;
            this.d(n);
            if (this.h > 0) {
                System.arraycopy(f, 0, this.f, 0, this.h);
                System.arraycopy(g, 0, this.g, 0, this.h << 1);
            }
            a(f, g, this.h);
        }
    }
    
    public final V b(final int n) {
        return (V)this.g[1 + (n << 1)];
    }
    
    public final V c(final int n) {
        final Object o = this.g[1 + (n << 1)];
        if (this.h <= 1) {
            a(this.f, this.g, this.h);
            this.f = ak.a;
            this.g = ak.c;
            this.h = 0;
        }
        else {
            if (this.f.length <= 8 || this.h >= this.f.length / 3) {
                --this.h;
                if (n < this.h) {
                    System.arraycopy(this.f, n + 1, this.f, n, this.h - n);
                    System.arraycopy(this.g, n + 1 << 1, this.g, n << 1, this.h - n << 1);
                }
                this.g[this.h << 1] = null;
                this.g[1 + (this.h << 1)] = null;
                return (V)o;
            }
            int n2;
            if (this.h > 8) {
                n2 = this.h + (this.h >> 1);
            }
            else {
                n2 = 8;
            }
            final int[] f = this.f;
            final Object[] g = this.g;
            this.d(n2);
            --this.h;
            if (n > 0) {
                System.arraycopy(f, 0, this.f, 0, n);
                System.arraycopy(g, 0, this.g, 0, n << 1);
            }
            if (n < this.h) {
                System.arraycopy(f, n + 1, this.f, n, this.h - n);
                System.arraycopy(g, n + 1 << 1, this.g, n << 1, this.h - n << 1);
                return (V)o;
            }
        }
        return (V)o;
    }
    
    public void clear() {
        if (this.h != 0) {
            a(this.f, this.g, this.h);
            this.f = ak.a;
            this.g = ak.c;
            this.h = 0;
        }
    }
    
    public boolean containsKey(final Object o) {
        if (o == null) {
            return this.a() >= 0;
        }
        return this.a(o, o.hashCode()) >= 0;
    }
    
    public boolean containsValue(final Object o) {
        return this.a(o) >= 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Map)) {
            return false;
        }
        final Map map = (Map)o;
        if (this.size() != map.size()) {
            return false;
        }
        int i = 0;
        try {
            while (i < this.h) {
                final K e = this.e(i);
                final V b = this.b(i);
                final Object value = map.get(e);
                if (b == null) {
                    if (value != null || !map.containsKey(e)) {
                        return false;
                    }
                }
                else if (!b.equals(value)) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        catch (NullPointerException ex) {
            return false;
        }
        catch (ClassCastException ex2) {
            return false;
        }
        return true;
    }
    
    public V get(final Object o) {
        int n;
        if (o == null) {
            n = this.a();
        }
        else {
            n = this.a(o, o.hashCode());
        }
        if (n >= 0) {
            return (V)this.g[1 + (n << 1)];
        }
        return null;
    }
    
    @Override
    public final int hashCode() {
        final int[] f = this.f;
        final Object[] g = this.g;
        int n = 1;
        final int h = this.h;
        int i = 0;
        int n2 = 0;
        while (i < h) {
            final Object o = g[n];
            final int n3 = f[i];
            int hashCode;
            if (o == null) {
                hashCode = 0;
            }
            else {
                hashCode = o.hashCode();
            }
            n2 += (hashCode ^ n3);
            ++i;
            n += 2;
        }
        return n2;
    }
    
    public boolean isEmpty() {
        return this.h <= 0;
    }
    
    public V put(final K k, final V v) {
        int a;
        int n;
        if (k == null) {
            a = this.a();
            n = 0;
        }
        else {
            final int hashCode = k.hashCode();
            final int a2 = this.a(k, hashCode);
            n = hashCode;
            a = a2;
        }
        if (a >= 0) {
            final int n2 = 1 + (a << 1);
            final Object o = this.g[n2];
            this.g[n2] = v;
            return (V)o;
        }
        final int n3 = ~a;
        if (this.h >= this.f.length) {
            int n4;
            if (this.h >= 8) {
                n4 = this.h + (this.h >> 1);
            }
            else if (this.h >= 4) {
                n4 = 8;
            }
            else {
                n4 = 4;
            }
            final int[] f = this.f;
            final Object[] g = this.g;
            this.d(n4);
            if (this.f.length > 0) {
                System.arraycopy(f, 0, this.f, 0, f.length);
                System.arraycopy(g, 0, this.g, 0, g.length);
            }
            a(f, g, this.h);
        }
        if (n3 < this.h) {
            System.arraycopy(this.f, n3, this.f, n3 + 1, this.h - n3);
            System.arraycopy(this.g, n3 << 1, this.g, n3 + 1 << 1, this.h - n3 << 1);
        }
        this.f[n3] = n;
        this.g[n3 << 1] = k;
        this.g[1 + (n3 << 1)] = v;
        ++this.h;
        return null;
    }
    
    public V remove(final Object o) {
        int n;
        if (o == null) {
            n = this.a();
        }
        else {
            n = this.a(o, o.hashCode());
        }
        if (n >= 0) {
            return this.c(n);
        }
        return null;
    }
    
    public int size() {
        return this.h;
    }
    
    @Override
    public final String toString() {
        if (this.isEmpty()) {
            return "{}";
        }
        final StringBuilder sb = new StringBuilder(28 * this.h);
        sb.append('{');
        for (int i = 0; i < this.h; ++i) {
            if (i > 0) {
                sb.append(", ");
            }
            final K e = this.e(i);
            if (e != this) {
                sb.append(e);
            }
            else {
                sb.append("(this Map)");
            }
            sb.append('=');
            final V b = this.b(i);
            if (b != this) {
                sb.append(b);
            }
            else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
