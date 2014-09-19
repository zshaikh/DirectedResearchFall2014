package com.milkmangames.extensions.android.iab;

import android.app.*;
import android.util.*;
import android.content.*;
import java.util.*;
import c.m.x.a.iab.*;

public final class i extends x implements y
{
    public static String a;
    public static String b;
    public static String c;
    public static String d;
    public static String e;
    public static String f;
    public static String g;
    public static String h;
    public static int i;
    public static String j;
    d k;
    Map l;
    
    static {
        com.milkmangames.extensions.android.iab.i.a = "BILLING_CONNECTION_FAILED";
        com.milkmangames.extensions.android.iab.i.b = "BILLING_CONNECTION_READY";
        com.milkmangames.extensions.android.iab.i.c = "LOAD_INVENTORY_FAILED";
        com.milkmangames.extensions.android.iab.i.d = "INVENTORY_LOADED";
        com.milkmangames.extensions.android.iab.i.e = "PURCHASE_SUCCEEDED";
        com.milkmangames.extensions.android.iab.i.f = "PURCHASE_FAILED";
        com.milkmangames.extensions.android.iab.i.g = "CONSUME_SUCCEEDED";
        com.milkmangames.extensions.android.iab.i.h = "CONSUME_FAILED";
        com.milkmangames.extensions.android.iab.i.i = 120021;
        com.milkmangames.extensions.android.iab.i.j = "[MmgBilling2]";
    }
    
    public i(final Activity activity, final z z) {
        super(activity, z);
        z.a(this);
        this.l = new HashMap();
    }
    
    @Override
    public final void a(final int n, final int n2, final Intent intent) {
        this.k.a(n, n2, intent);
    }
    
    public final void a(final String s) {
        (this.k = new d(this.m.getApplicationContext(), s)).a(new j(this));
    }
    
    public final void a(final String str, final int n) {
        if (this.l.containsKey(str)) {
            this.k.a(this.l.get(str), new m(this, n, str));
            return;
        }
        this.a(com.milkmangames.extensions.android.iab.i.h, "The item '" + str + "' was not previously loaded.", 4040);
    }
    
    final void a(final String s, final p p2) {
        this.a(s, p2.b(), p2.a());
    }
    
    public final void a(final String s, final String s2, final String s3, final int n) {
        final l l = new l(this, n);
        try {
            this.k.a(this.m, s, s2, com.milkmangames.extensions.android.iab.i.i, l, s3);
        }
        catch (IllegalStateException ex2) {
            this.a(com.milkmangames.extensions.android.iab.i.f, "A purchase is already in progress", 9454);
        }
        catch (Exception ex) {
            this.a(com.milkmangames.extensions.android.iab.i.f, "Unable to connect:" + ex.getMessage(), 500);
        }
    }
    
    public final void a(final boolean b, final List list, final int n) {
        final com.milkmangames.extensions.android.iab.k k = new com.milkmangames.extensions.android.iab.k(this, n);
        Log.d(com.milkmangames.extensions.android.iab.i.j, "Query inventory internal on '" + list.size() + "' items, extra:" + b);
        this.k.a(b, list, k);
    }
    
    public final boolean a() {
        return this.k.b();
    }
    
    public final void b() {
        this.k.a(com.milkmangames.extensions.android.iab.i.j);
    }
    
    public final void c() {
        if (this.k != null) {
            this.k.a();
        }
    }
}
