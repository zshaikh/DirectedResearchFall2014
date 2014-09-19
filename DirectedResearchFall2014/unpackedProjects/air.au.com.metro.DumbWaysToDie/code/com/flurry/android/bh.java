package com.flurry.android;

import android.content.*;
import android.widget.*;
import android.view.*;

final class bh
{
    private View dh;
    private int di;
    private BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback dj;
    private FrameLayout dk;
    final /* synthetic */ FlurryFullscreenTakeoverActivity h;
    
    private bh(final FlurryFullscreenTakeoverActivity h, final byte b) {
        this.h = h;
        super();
    }
    
    public final void Z() {
        if (this.dh == null) {
            return;
        }
        ((ViewGroup)this.h.getWindow().getDecorView()).removeView((View)this.dk);
        this.dk.removeView(this.dh);
        if (this.dj != null) {
            this.dj.onBasicWebViewTransitionFromFullScreenFinished();
        }
        this.h.setRequestedOrientation(this.di);
        this.dj = null;
        this.dk = null;
        this.dh = null;
    }
    
    public final void a(final cl cl, final View dh, final int requestedOrientation, final BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback dj) {
        if (this.dh != null) {
            this.Z();
        }
        this.dh = dh;
        this.di = this.h.getRequestedOrientation();
        this.dj = dj;
        (this.dk = new FrameLayout((Context)this.h)).setBackgroundColor(-16777216);
        this.dk.addView(this.dh, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1, 17));
        ((ViewGroup)this.h.getWindow().getDecorView()).addView((View)this.dk, -1, -1);
        this.h.setRequestedOrientation(requestedOrientation);
    }
}
