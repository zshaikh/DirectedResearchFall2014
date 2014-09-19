package com.flurry.android;

import android.app.*;
import android.webkit.*;
import java.util.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.content.*;
import android.view.*;

final class cs extends WebChromeClient
{
    final /* synthetic */ bn dW;
    
    private cs(final bn dw, final byte b) {
        this.dW = dw;
        super();
    }
    
    public final void onHideCustomView() {
        if (this.dW.dK != null && this.dW.dh != null) {
            if (this.dW.dB != null) {
                this.dW.dB.show();
            }
            ((ViewGroup)this.dW.dK.getWindow().getDecorView()).removeView((View)this.dW.dk);
            this.dW.dk.removeView(this.dW.dh);
            if (this.dW.dz != null && this.dW.dz.isShowing()) {
                this.dW.dz.hide();
                this.dW.dz.setOnDismissListener((DialogInterface$OnDismissListener)null);
                this.dW.dz.dismiss();
            }
            this.dW.dz = null;
            ax.a(this.dW.dK, this.dW.di);
            this.dW.dy.onCustomViewHidden();
            this.dW.dy = null;
            this.dW.dk = null;
            this.dW.dh = null;
            this.dW.K.j(this.dW.M.getAdSpace().toString());
        }
    }
    
    public final void onShowCustomView(final View view, final int n, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
        if (this.dW.dK == null) {
            return;
        }
        if (this.dW.dh != null && this.dW.dx != null) {
            this.dW.dx.onHideCustomView();
            return;
        }
        this.dW.dh = view;
        this.dW.di = this.dW.dK.getRequestedOrientation();
        this.dW.dy = webChromeClient$CustomViewCallback;
        this.dW.dk = new FrameLayout(this.dW.J);
        this.dW.dk.setBackgroundColor(-16777216);
        this.dW.dk.addView(this.dW.dh, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1, 17));
        ((ViewGroup)this.dW.dK.getWindow().getDecorView()).addView((View)this.dW.dk, -1, -1);
        if (this.dW.dz == null) {
            this.dW.dz = new r(this, this.dW.J, 16973841);
            this.dW.dz.getWindow().setType(1000);
            this.dW.dz.setOnShowListener((DialogInterface$OnShowListener)new q(this));
            this.dW.dz.setOnDismissListener((DialogInterface$OnDismissListener)new o(this));
            this.dW.dz.setCancelable(true);
            this.dW.dz.show();
        }
        ax.a(this.dW.dK, n, true);
        this.dW.K.b(this.dW.M.getAdSpace().toString(), false);
    }
    
    public final void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
        if (this.dW.dK == null) {
            return;
        }
        this.onShowCustomView(view, this.dW.dK.getRequestedOrientation(), webChromeClient$CustomViewCallback);
    }
}
