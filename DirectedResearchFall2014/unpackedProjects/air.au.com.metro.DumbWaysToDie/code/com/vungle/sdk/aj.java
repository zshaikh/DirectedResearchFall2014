package com.vungle.sdk;

import android.util.*;
import android.text.*;

public final class aj
{
    private static final SparseArray<aj> a;
    private final int b;
    private final String c;
    
    static {
        a = new SparseArray();
    }
    
    private aj(final int n) {
        this(n, null);
    }
    
    private aj(final int b, final String c) {
        super();
        this.b = b;
        this.c = c;
    }
    
    static aj a(final int n) {
        return a(n, null);
    }
    
    static aj a(final int n, final String s) {
        int n2;
        if (TextUtils.isEmpty((CharSequence)s) && (n == 200 || n / 100 == 6)) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        if (n2 == 0) {
            return new aj(n, s);
        }
        final aj aj = (aj)com.vungle.sdk.aj.a.get(n);
        if (aj == null) {
            final aj aj2 = new aj(n);
            final String a = IVungleConstants.a;
            new StringBuilder("Caching response (").append(n).append(")");
            com.vungle.sdk.aj.a.put(n, (Object)aj2);
            return aj2;
        }
        final String a2 = IVungleConstants.a;
        new StringBuilder("Returning cached response (").append(n).append(")");
        return aj;
    }
    
    public final int a() {
        return this.b;
    }
    
    public final String b() {
        return this.c;
    }
}
