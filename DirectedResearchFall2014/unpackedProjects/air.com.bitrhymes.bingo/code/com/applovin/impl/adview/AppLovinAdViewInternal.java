package com.applovin.impl.adview;

import com.applovin.adview.*;
import android.content.*;
import android.util.*;
import android.app.*;
import com.applovin.sdk.*;

public class AppLovinAdViewInternal extends AppLovinAdView
{
    public AppLovinAdViewInternal(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public AppLovinAdViewInternal(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public AppLovinAdViewInternal(final AppLovinAdSize appLovinAdSize, final Activity activity) {
        super(appLovinAdSize, activity);
    }
    
    public AppLovinAdViewInternal(final AppLovinSdk appLovinSdk, final AppLovinAdSize appLovinAdSize, final Activity activity) {
        super(appLovinSdk, appLovinAdSize, activity);
    }
    
    public AdViewControllerJsInterface getAdViewControllerJsInterface() {
        return ((AdViewControllerImpl)this.controller).a();
    }
}
