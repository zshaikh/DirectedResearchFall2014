package com.applovin.impl.adview;

import android.app.*;
import java.util.*;
import com.applovin.adview.*;
import android.content.*;
import com.applovin.sdk.*;
import com.applovin.impl.sdk.*;

public class ah implements AppLovinInterstitialAdDialog
{
    private static final Map a;
    private final String b;
    private final AppLovinSdk c;
    private final Activity d;
    private volatile AppLovinAdLoadListener e;
    private volatile AppLovinAdDisplayListener f;
    private volatile AppLovinAdVideoPlaybackListener g;
    private volatile AppLovinAdClickListener h;
    private volatile AppLovinAd i;
    private volatile boolean j;
    private volatile AppLovinAdInternal$AdTarget k;
    
    static {
        a = Collections.synchronizedMap(new HashMap<Object, Object>());
    }
    
    ah(final AppLovinSdk c, final Activity d) {
        super();
        if (c == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (d == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.c = c;
        this.b = UUID.randomUUID().toString();
        this.d = d;
        ah.a.put(this.b, this);
    }
    
    public static ah a(final String s) {
        return ah.a.get(s);
    }
    
    private void a(final int n) {
        this.d.runOnUiThread((Runnable)new al(this, n));
    }
    
    private void a(final AppLovinAd appLovinAd) {
        this.d.runOnUiThread((Runnable)new ak(this, appLovinAd));
    }
    
    private void h() {
        final ab ab = new ab(this.c, this.d);
        ab.a(this);
        ab.a(this.i);
    }
    
    private void i() {
        final Intent intent = new Intent((Context)this.d, (Class)AppLovinInterstitialActivity.class);
        intent.putExtra("com.applovin.interstitial.wrapper_id", this.b);
        this.d.startActivity(intent);
        this.a(true);
    }
    
    public AppLovinAd a() {
        return this.i;
    }
    
    public void a(final boolean j) {
        this.j = j;
    }
    
    public AppLovinAdVideoPlaybackListener b() {
        return this.g;
    }
    
    public AppLovinAdDisplayListener c() {
        return this.f;
    }
    
    public AppLovinAdClickListener d() {
        return this.h;
    }
    
    @Override
    public void dismiss() {
    }
    
    public AppLovinAdInternal$AdTarget e() {
        return this.k;
    }
    
    public void f() {
        ah.a.remove(this.b);
    }
    
    public boolean g() {
        return new z(this.c).a();
    }
    
    @Override
    public boolean isShowing() {
        return this.j;
    }
    
    @Override
    public void setAdClickListener(final AppLovinAdClickListener h) {
        this.h = h;
    }
    
    @Override
    public void setAdDisplayListener(final AppLovinAdDisplayListener f) {
        this.f = f;
    }
    
    @Override
    public void setAdLoadListener(final AppLovinAdLoadListener e) {
        this.e = e;
    }
    
    @Override
    public void setAdVideoPlaybackListener(final AppLovinAdVideoPlaybackListener g) {
        this.g = g;
    }
    
    @Override
    public void show() {
        this.c.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, new ai(this));
    }
    
    @Override
    public void showAndRender(final AppLovinAd i) {
        this.i = i;
        AppLovinAdInternal$AdTarget k;
        if (i instanceof AppLovinAdInternal) {
            k = ((AppLovinAdInternal)i).getTarget();
        }
        else {
            k = AppLovinAdInternal$AdTarget.DEFAULT;
        }
        this.k = k;
        this.d.runOnUiThread((Runnable)new aj(this, com.applovin.impl.sdk.j.a(AppLovinInterstitialActivity.class, (Context)this.d), this.k == AppLovinAdInternal$AdTarget.ACTIVITY_LANDSCAPE || this.k == AppLovinAdInternal$AdTarget.ACTIVITY_PORTRAIT));
    }
}
