package com.flurry.android;

import android.content.*;
import android.os.*;
import android.app.*;
import android.util.*;
import com.jumptap.adtag.utils.*;
import com.jumptap.adtag.*;

final class bo extends m
{
    private static final String d;
    private final String g;
    
    static {
        d = bo.class.getSimpleName();
    }
    
    public bo(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit, final Bundle bundle) {
        super(context, flurryAds, cz, adUnit);
        this.g = bundle.getString("com.flurry.jumptap.PUBLISHER_ID");
    }
    
    @Override
    public final void f() {
        final JtAdWidgetSettings widgetSettings = JtAdWidgetSettingsFactory.createWidgetSettings();
        widgetSettings.setPublisherId(this.g);
        widgetSettings.setRefreshPeriod(0);
        widgetSettings.setShouldSendLocation(false);
        while (true) {
            try {
                final JtAdInterstitial jtAdInterstitial = new JtAdInterstitial((Context)this.getContext(), widgetSettings);
                jtAdInterstitial.setAdViewListener((JtAdViewListener)new ah(this));
                jtAdInterstitial.showAsPopup();
            }
            catch (JtException ex) {
                Log.d(bo.d, "Jumptap JtException when creating ad object.");
                final JtAdInterstitial jtAdInterstitial = null;
                continue;
            }
            break;
        }
    }
}
