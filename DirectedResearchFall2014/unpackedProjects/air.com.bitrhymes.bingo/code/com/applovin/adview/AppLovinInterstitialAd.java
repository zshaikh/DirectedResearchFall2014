package com.applovin.adview;

import android.view.*;
import android.content.*;
import android.app.*;
import com.applovin.sdk.*;
import com.applovin.impl.adview.*;
import android.util.*;

public class AppLovinInterstitialAd extends View
{
    private AppLovinInterstitialAdDialog a;
    
    public AppLovinInterstitialAd(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AppLovinInterstitialAd(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.a = null;
        if (context instanceof Activity) {
            final AppLovinSdk instance = AppLovinSdk.getInstance(context);
            if (instance != null && !instance.hasCriticalErrors()) {
                this.a = new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(instance, (Activity)context);
            }
        }
        else {
            Log.e("AppLovinSdk", "Unable to create AppLovin interstitial dialog. The view was not created from an activity.");
        }
        this.setVisibility(8);
    }
    
    public static AppLovinInterstitialAdDialog create(final AppLovinSdk appLovinSdk, final Activity activity) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        return new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(appLovinSdk, activity);
    }
    
    public static void show(final Activity activity) {
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        final AppLovinSdk instance = AppLovinSdk.getInstance((Context)activity);
        if (instance != null && !instance.hasCriticalErrors()) {
            show(instance, activity);
        }
    }
    
    public static void show(final AppLovinSdk appLovinSdk, final Activity activity) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        activity.runOnUiThread((Runnable)new d(appLovinSdk, activity));
    }
    
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.a != null) {
            this.a.show();
        }
    }
}
