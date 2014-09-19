package com.google.ads.doubleclick;

import android.app.*;
import android.content.*;
import android.util.*;
import com.google.ads.internal.*;
import com.google.ads.*;

public class DfpAdView extends AdView
{
    public DfpAdView(final Activity activity, final AdSize adSize, final String s) {
        super(activity, adSize, s);
    }
    
    public DfpAdView(final Activity activity, final AdSize[] array, final String s) {
        super(activity, array, s);
    }
    
    public DfpAdView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public DfpAdView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public void enableManualImpressions(final boolean b) {
        this.a.i().t.a(b);
    }
    
    public void recordImpression() {
        this.a.z();
    }
    
    public void resize(final AdSize adSize) {
        this.a.l().setAdSize(adSize);
        this.a.i().g.a().b(adSize);
    }
    
    public void setAppEventListener(final AppEventListener appEventListener) {
        super.setAppEventListener(appEventListener);
    }
    
    public void setSupportedAdSizes(final AdSize... supportedAdSizes) {
        super.setSupportedAdSizes(supportedAdSizes);
    }
}
