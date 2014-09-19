package com.flurry.android;

import android.content.*;

abstract class ao
{
    static final String d;
    private final Context J;
    private final FlurryAds K;
    private final cz L;
    private final AdUnit M;
    
    static {
        d = ao.class.getSimpleName();
    }
    
    public ao(final Context j, final FlurryAds k, final cz l, final AdUnit m) {
        super();
        this.J = j;
        this.K = k;
        this.L = l;
        this.M = m;
    }
    
    public final FlurryAds C() {
        return this.K;
    }
    
    public final cz D() {
        return this.L;
    }
    
    public final AdUnit E() {
        return this.M;
    }
    
    public abstract void f();
    
    public final Context getContext() {
        return this.J;
    }
}
