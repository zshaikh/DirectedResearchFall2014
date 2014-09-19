package com.milkmangames.extensions.android.iab;

import com.adobe.fre.*;
import android.util.*;
import c.m.x.a.iab.*;
import java.util.*;

public final class a extends FREContext
{
    private i a;
    
    public static void a() {
        Log.d("[IABExtension]", "IAB.init");
    }
    
    public final void a(final String s) {
        if (this.a != null) {
            Log.d("[IABExtension]", "Billing already initalized.");
            return;
        }
        Log.d("[IABExtension]", "Start Service Connection..");
        (this.a = new i(this.getActivity(), new u(this))).a(s);
        this.a.b();
    }
    
    public final void a(final String s, final int n) {
        if (this.a == null) {
            return;
        }
        this.a.a(s, n);
    }
    
    public final void a(final String s, final String s2, final String s3, final int n) {
        if (this.a == null) {
            return;
        }
        this.a.a(s, s2, s3, n);
    }
    
    public final void a(final boolean b, final String str, final int n) {
        if (this.a == null) {
            return;
        }
        Log.d("[IABExtension]", "Inventory Sku request '" + str + "'");
        this.a.a(b, Arrays.asList(str.split(",")), n);
    }
    
    public final void b() {
        if (this.a != null) {
            this.a.c();
            this.a = null;
        }
    }
    
    public final boolean c() {
        return this.a != null && this.a.a();
    }
    
    @Override
    public final void dispose() {
        Log.d("[IABExtension]", "context disposal");
        this.b();
    }
    
    @Override
    public final Map getFunctions() {
        final HashMap<String, f> hashMap = new HashMap<String, f>();
        hashMap.put("ffiInitIAB", new d(this, (byte)0));
        hashMap.put("ffiPurchaseItem", (d)new f(this, (byte)0));
        hashMap.put("ffiLoadInventory", (d)new e(this, (byte)0));
        hashMap.put("ffiShutdown", (d)new g(this, (byte)0));
        hashMap.put("ffiStartBillingService", (d)new h(this, (byte)0));
        hashMap.put("ffiAreSubscriptionsSupported", (d)new b(this, (byte)0));
        hashMap.put("ffiConsumeItem", (d)new c(this, (byte)0));
        return hashMap;
    }
}
