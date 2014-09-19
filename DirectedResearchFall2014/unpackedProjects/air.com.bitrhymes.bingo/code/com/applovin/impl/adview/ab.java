package com.applovin.impl.adview;

import android.app.*;
import com.applovin.adview.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import com.applovin.sdk.*;
import android.os.*;

class ab extends Dialog
{
    private final Activity a;
    private final AppLovinLogger b;
    private AppLovinAdView c;
    private Runnable d;
    private ah e;
    
    ab(final AppLovinSdk appLovinSdk, final Activity a) {
        super((Context)a, 16973840);
        this.e = null;
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (a == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.b = appLovinSdk.getLogger();
        this.a = a;
        this.d = new ag(this);
        (this.c = new AppLovinAdViewInternal(appLovinSdk, AppLovinAdSize.INTERSTITIAL, a)).setAutoDestroy(false);
        this.requestWindowFeature(1);
        try {
            this.getWindow().setFlags(a.getWindow().getAttributes().flags, a.getWindow().getAttributes().flags);
        }
        catch (Exception ex) {
            this.b.e("InterstitialAdDialog", "Set window flags failed.", ex);
        }
    }
    
    private void a() {
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.c.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        final RelativeLayout contentView = new RelativeLayout((Context)this.a);
        contentView.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        contentView.setBackgroundColor(-1157627904);
        contentView.addView((View)this.c);
        this.setContentView((View)contentView);
    }
    
    public void a(final ah e) {
        this.c.setAdDisplayListener(new ac(this, e));
        this.c.setAdClickListener(new ad(this, e));
        this.c.setAdVideoPlaybackListener(new ae(this, e));
        (this.e = e).a(true);
    }
    
    public void a(final AppLovinAd appLovinAd) {
        this.a.runOnUiThread((Runnable)new af(this, appLovinAd));
    }
    
    public void dismiss() {
        if (this.e != null) {
            this.e.f();
        }
        if (this.c != null) {
            this.c.destroy();
        }
        this.e = null;
        this.c = null;
        super.dismiss();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.a();
    }
}
