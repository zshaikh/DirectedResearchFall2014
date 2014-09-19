package com.flurry.android;

import android.os.*;
import android.content.*;
import android.view.*;
import java.util.*;

final class bw extends AsyncTask<Void, Void, List<AdUnit>>
{
    private String H;
    private Context J;
    private ViewGroup ao;
    private FlurryAdSize eb;
    private boolean ec;
    private boolean ed;
    private /* synthetic */ FlurryAds ee;
    
    public bw(final FlurryAds ee, final Context j, final String h, final FlurryAdSize eb) {
        this.ee = ee;
        super();
        this.J = j;
        this.H = h;
        this.eb = eb;
    }
    
    public bw(final FlurryAds flurryAds, final Context context, final String s, final FlurryAdSize flurryAdSize, final ViewGroup ao, final boolean ed, final boolean ec) {
        this(flurryAds, context, s, flurryAdSize);
        this.ao = ao;
        this.ec = ec;
        this.ed = ed;
    }
    
    private List<AdUnit> aj() {
        try {
            final List<AdUnit> a = this.ee.a(this.J, this.H, this.ao, false, this.eb);
            this.ee.cJ.b(a);
            return a;
        }
        catch (Throwable t) {
            t.printStackTrace();
            return Collections.emptyList();
        }
    }
}
