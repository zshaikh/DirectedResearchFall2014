package com.flurry.android;

import android.widget.*;
import android.content.*;
import java.util.*;

abstract class p extends RelativeLayout
{
    private Context J;
    FlurryAds K;
    cz L;
    AdUnit M;
    int N;
    
    p(final Context j, final FlurryAds k, final cz l) {
        super(j);
        this.J = j;
        this.K = k;
        this.L = l;
    }
    
    final void a(final String str, final Map<String, String> map) {
        new StringBuilder().append("AppSpotBannerView.onEvent ").append(str).toString();
        this.K.a(this.L, str, true, map);
        if (this.M != null) {
            this.K.onEvent(new cw(str, map, this.J, this.M, this.L, this.N), this.K, 0);
        }
    }
    
    public abstract void initLayout(final Context p0);
    
    boolean shouldRotate() {
        return !this.M.getAdFrames().get(this.N).getAdSpaceLayout().getFormat().toString().equals("takeover");
    }
    
    public void stop() {
    }
}
