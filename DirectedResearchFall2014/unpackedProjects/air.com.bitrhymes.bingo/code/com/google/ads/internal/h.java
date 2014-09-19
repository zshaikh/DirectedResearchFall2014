package com.google.ads.internal;

import com.google.ads.*;
import android.content.*;

public class h
{
    public static final h a;
    private AdSize b;
    private boolean c;
    private final boolean d;
    
    static {
        a = new h(null, true);
    }
    
    private h(final AdSize b, final boolean d) {
        super();
        this.b = b;
        this.d = d;
    }
    
    public static h a(final AdSize adSize) {
        return a(adSize, null);
    }
    
    public static h a(final AdSize adSize, final Context context) {
        return new h(AdSize.createAdSize(adSize, context), false);
    }
    
    public void a(final boolean c) {
        this.c = c;
    }
    
    public boolean a() {
        return this.d;
    }
    
    public void b(final AdSize b) {
        if (!this.d) {
            this.b = b;
        }
    }
    
    public boolean b() {
        return this.c;
    }
    
    public AdSize c() {
        return this.b;
    }
}
