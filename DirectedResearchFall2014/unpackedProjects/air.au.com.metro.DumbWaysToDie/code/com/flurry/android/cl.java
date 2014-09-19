package com.flurry.android;

import android.webkit.*;
import android.content.*;
import android.view.*;
import android.widget.*;

final class cl extends RelativeLayout implements View$OnClickListener
{
    private final String TAG;
    private WebView du;
    private WebViewClient dw;
    private WebChromeClient dx;
    private boolean eG;
    private ImageView eH;
    private ImageView eI;
    private ImageView eJ;
    private f eK;
    private y eL;
    private bh eM;
    private boolean eN;
    
    public cl(final Context context, final String s) {
        super(context);
        this.TAG = this.getClass().getSimpleName();
        this.du = new WebView(context);
        this.dw = new c(this);
        this.dx = new am(this);
        this.du.getSettings().setJavaScriptEnabled(true);
        this.du.getSettings().setUseWideViewPort(true);
        if (l.SDK_INT >= 7) {
            this.du.getSettings().setLoadWithOverviewMode(true);
        }
        this.du.getSettings().setBuiltInZoomControls(true);
        if (l.SDK_INT >= 11) {
            this.du.getSettings().setDisplayZoomControls(false);
        }
        this.du.setWebViewClient(this.dw);
        this.du.setWebChromeClient(this.dx);
        this.du.loadUrl(s);
        (this.eH = new ImageView(context)).setId(0);
        this.eH.setImageDrawable(this.getResources().getDrawable(17301560));
        this.eH.setOnClickListener((View$OnClickListener)this);
        (this.eI = new ImageView(context)).setId(1);
        this.eI.setImageDrawable(this.getResources().getDrawable(17301580));
        this.eI.setOnClickListener((View$OnClickListener)this);
        (this.eJ = new ImageView(context)).setId(2);
        this.eJ.setImageDrawable(this.getResources().getDrawable(17301565));
        this.eJ.setOnClickListener((View$OnClickListener)this);
        this.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
        this.addView((View)this.du);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams.addRule(14);
        this.addView((View)this.eH, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams2.addRule(9);
        this.addView((View)this.eI, (ViewGroup$LayoutParams)relativeLayout$LayoutParams2);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams3 = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams3.addRule(11);
        this.addView((View)this.eJ, (ViewGroup$LayoutParams)relativeLayout$LayoutParams3);
    }
    
    public final void a(final bh em) {
        this.eM = em;
    }
    
    public final void a(final f ek) {
        this.eK = ek;
    }
    
    public final void a(final y el) {
        this.eL = el;
    }
    
    public final boolean canGoBack() {
        return this.eG || (this.du != null && this.du.canGoBack());
    }
    
    public final void destroy() {
        if (this.du != null) {
            this.removeView((View)this.du);
            this.du.stopLoading();
            if (l.SDK_INT >= 11) {
                this.du.onPause();
            }
            this.du.destroy();
            this.du = null;
        }
    }
    
    public final void goBack() {
        if (this.eG) {
            this.dx.onHideCustomView();
        }
        else if (this.du != null) {
            this.du.goBack();
        }
    }
    
    public final void onClick(final View view) {
        switch (view.getId()) {
            case 0: {
                if (this.eL != null) {
                    this.eL.h.finish();
                    return;
                }
                break;
            }
            case 2: {
                if (this.du != null && this.du.canGoForward()) {
                    this.du.goForward();
                    return;
                }
                break;
            }
            case 1: {
                if (this.du != null && this.du.canGoBack()) {
                    this.du.goBack();
                    return;
                }
                if (this.eL != null) {
                    this.eL.h.finish();
                    return;
                }
                break;
            }
        }
    }
}
