package com.flurry.android;

import android.content.*;
import java.util.*;

public abstract class AdNetworkView extends p
{
    private final AdCreative er;
    
    public AdNetworkView(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative er) {
        super(context, flurryAds, cz);
        this.er = er;
    }
    
    public AdCreative getAdCreative() {
        return this.er;
    }
    
    public void onAdClicked(final Map<String, String> map) {
        super.a("clicked", map);
    }
    
    public void onAdClosed(final Map<String, String> map) {
        super.a("adClosed", map);
    }
    
    public void onAdFilled(final Map<String, String> map) {
        super.a("filled", map);
    }
    
    public void onAdShown(final Map<String, String> map) {
        super.a("rendered", map);
    }
    
    public void onAdUnFilled(final Map<String, String> map) {
        super.a("unfilled", map);
    }
    
    public void onRenderFailed(final Map<String, String> map) {
        super.a("renderFailed", map);
    }
}
