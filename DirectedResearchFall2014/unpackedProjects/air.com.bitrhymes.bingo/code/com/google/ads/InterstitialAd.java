package com.google.ads;

import com.google.ads.internal.*;
import android.app.*;
import android.view.*;

public class InterstitialAd implements Ad
{
    private d a;
    
    public InterstitialAd(final Activity activity, final String s) {
        this(activity, s, false);
    }
    
    public InterstitialAd(final Activity activity, final String s, final boolean b) {
        super();
        this.a = new d(this, activity, null, s, null, b);
    }
    
    @Override
    public boolean isReady() {
        return this.a.s();
    }
    
    @Override
    public void loadAd(final AdRequest adRequest) {
        this.a.a(adRequest);
    }
    
    @Override
    public void setAdListener(final AdListener adListener) {
        this.a.i().o.a(adListener);
    }
    
    protected void setAppEventListener(final AppEventListener appEventListener) {
        this.a.i().p.a(appEventListener);
    }
    
    public void show() {
        this.a.B();
    }
    
    @Override
    public void stopLoading() {
        this.a.C();
    }
}
