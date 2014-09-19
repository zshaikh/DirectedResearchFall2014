package com.google.ads.internal;

import com.google.ads.util.*;
import android.webkit.*;
import android.os.*;
import com.google.ads.*;
import android.view.*;

public class ActivationOverlay extends AdWebView
{
    private volatile boolean b;
    private boolean c;
    private int d;
    private int e;
    private final i f;
    
    public ActivationOverlay(final n n) {
        super(n, null);
        this.b = true;
        this.c = true;
        this.d = 0;
        this.e = 0;
        if (AdUtil.a < ((m.a)n.d.a().b.a()).c.a()) {
            com.google.ads.util.b.a("Disabling hardware acceleration for an activation overlay.");
            this.g();
        }
        this.setWebViewClient((WebViewClient)(this.f = i.a(n.b.a(), com.google.ads.internal.a.c, true, true)));
    }
    
    public boolean a() {
        return this.b;
    }
    
    public boolean b() {
        return this.c;
    }
    
    public int c() {
        return this.e;
    }
    
    public boolean canScrollHorizontally(final int n) {
        return false;
    }
    
    public boolean canScrollVertically(final int n) {
        return false;
    }
    
    public int d() {
        return this.d;
    }
    
    public i e() {
        return this.f;
    }
    
    public void setOverlayActivated(final boolean c) {
        this.c = c;
    }
    
    public void setOverlayEnabled(final boolean b) {
        if (!b) {
            m.a().c.a().post((Runnable)new Runnable() {
                @Override
                public void run() {
                    ActivationOverlay.this.a.j.a().removeView((View)ActivationOverlay.this);
                }
            });
        }
        this.b = b;
    }
    
    public void setXPosition(final int d) {
        this.d = d;
    }
    
    public void setYPosition(final int e) {
        this.e = e;
    }
}
