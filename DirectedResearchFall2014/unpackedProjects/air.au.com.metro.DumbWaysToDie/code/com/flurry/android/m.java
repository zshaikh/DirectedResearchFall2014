package com.flurry.android;

import android.content.*;
import java.util.*;

abstract class m extends ao
{
    private static final String d;
    
    static {
        d = m.class.getSimpleName();
    }
    
    public m(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        super(context, flurryAds, cz, adUnit);
    }
    
    private void a(final String str, final Map<String, String> map) {
        new StringBuilder().append("onEvent: ").append(str).toString();
        this.C().a(this.D(), str, true, map);
        if (this.E() != null) {
            this.C().onEvent(new cw(str, map, this.getContext(), this.E(), this.D(), 0), this.C(), 0);
        }
    }
    
    public final void onAdClicked(final Map<String, String> map) {
        this.a("clicked", map);
    }
    
    public final void onAdClosed(final Map<String, String> map) {
        this.a("adClosed", map);
    }
    
    public final void onAdFilled(final Map<String, String> map) {
        this.a("filled", map);
    }
    
    public final void onAdShown(final Map<String, String> map) {
        this.a("rendered", map);
    }
    
    public final void onRenderFailed(final Map<String, String> map) {
        this.a("renderFailed", map);
    }
}
