package com.flurry.android;

import android.content.*;
import android.os.*;
import android.app.*;
import android.view.*;
import android.util.*;
import com.jumptap.adtag.utils.*;
import com.jumptap.adtag.*;

class e extends AdNetworkView
{
    private static final String d;
    private final String g;
    
    static {
        d = e.class.getSimpleName();
    }
    
    e(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative adCreative, final Bundle bundle) {
        super(context, flurryAds, cz, adCreative);
        this.g = bundle.getString("com.flurry.jumptap.PUBLISHER_ID");
        this.setFocusable(true);
    }
    
    @Override
    public void initLayout(final Context context) {
        final JtAdWidgetSettings widgetSettings = JtAdWidgetSettingsFactory.createWidgetSettings();
        widgetSettings.setPublisherId(this.g);
        widgetSettings.setRefreshPeriod(0);
        widgetSettings.setShouldSendLocation(false);
        this.setGravity(17);
        while (true) {
            try {
                final JtAdView jtAdView = new JtAdView((Context)context, widgetSettings);
                jtAdView.setAdViewListener((JtAdViewListener)new aa(this));
                this.addView((View)jtAdView);
            }
            catch (JtException ex) {
                Log.d(e.d, "Jumptap JtException when creating ad object.");
                final JtAdView jtAdView = null;
                continue;
            }
            break;
        }
    }
}
