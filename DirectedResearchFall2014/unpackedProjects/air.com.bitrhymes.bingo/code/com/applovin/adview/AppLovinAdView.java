package com.applovin.adview;

import android.content.*;
import android.app.*;
import android.widget.*;
import android.graphics.*;
import android.util.*;
import com.applovin.impl.adview.*;
import android.view.*;
import com.applovin.sdk.*;

public class AppLovinAdView extends RelativeLayout
{
    public static final String NAMESPACE = "http://schemas.applovin.com/android/1.0";
    protected AdViewController controller;
    
    public AppLovinAdView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AppLovinAdView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.a(null, null, context, set);
    }
    
    public AppLovinAdView(final AppLovinAdSize appLovinAdSize, final Activity activity) {
        super((Context)activity);
        Log.d("AppLovinSdk", "Created new AdView");
        this.a(appLovinAdSize, null, (Context)activity, null);
    }
    
    public AppLovinAdView(final AppLovinSdk appLovinSdk, final AppLovinAdSize appLovinAdSize, final Activity activity) {
        super((Context)activity);
        this.a(appLovinAdSize, appLovinSdk, (Context)activity, null);
    }
    
    private void a(final AttributeSet set, final Context context) {
        final DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        final int widthPixels = displayMetrics.widthPixels;
        final int n = (int)TypedValue.applyDimension(1, 50.0f, displayMetrics);
        final TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(-16777216);
        textView.setText((CharSequence)"AppLovin Ad");
        textView.setGravity(17);
        this.addView((View)textView, widthPixels, n);
    }
    
    private void a(final AppLovinAdSize appLovinAdSize, final AppLovinSdk appLovinSdk, final Context context, final AttributeSet set) {
        if (!this.isInEditMode()) {
            final AdViewControllerImpl controller = new AdViewControllerImpl();
            controller.initializeAdView((ViewGroup)this, context, appLovinAdSize, appLovinSdk, set);
            this.controller = controller;
            return;
        }
        this.a(set, context);
    }
    
    public void destroy() {
        if (this.controller != null) {
            this.controller.destroy();
        }
    }
    
    public AppLovinAdSize getSize() {
        if (this.controller != null) {
            return this.controller.getSize();
        }
        return null;
    }
    
    public void loadNextAd() {
        if (this.controller != null) {
            this.controller.loadNextAd();
            return;
        }
        Log.i("AppLovinSdk", "Unable to load next ad: AppLovinAdView is not initialized.");
    }
    
    protected void onDetachedFromWindow() {
        if (this.controller != null) {
            this.controller.onDetachedFromWindow();
        }
        super.onDetachedFromWindow();
    }
    
    protected void onVisibilityChanged(final View view, final int n) {
        super.onVisibilityChanged(view, n);
        if (this.controller != null) {
            this.controller.onVisibilityChanged(n);
        }
    }
    
    public void pause() {
        if (this.controller != null) {
            this.controller.pause();
        }
    }
    
    public void renderAd(final AppLovinAd appLovinAd) {
        if (this.controller != null) {
            this.controller.renderAd(appLovinAd);
        }
    }
    
    public void resume() {
        if (this.controller != null) {
            this.controller.resume();
        }
    }
    
    public void setAdClickListener(final AppLovinAdClickListener adClickListener) {
        if (this.controller != null) {
            this.controller.setAdClickListener(adClickListener);
        }
    }
    
    public void setAdDisplayListener(final AppLovinAdDisplayListener adDisplayListener) {
        if (this.controller != null) {
            this.controller.setAdDisplayListener(adDisplayListener);
        }
    }
    
    public void setAdLoadListener(final AppLovinAdLoadListener adLoadListener) {
        if (this.controller != null) {
            this.controller.setAdLoadListener(adLoadListener);
        }
    }
    
    public void setAdVideoPlaybackListener(final AppLovinAdVideoPlaybackListener adVideoPlaybackListener) {
        if (this.controller != null) {
            this.controller.setAdVideoPlaybackListener(adVideoPlaybackListener);
        }
    }
    
    public void setAutoDestroy(final boolean autoDestroy) {
        if (this.controller != null) {
            this.controller.setAutoDestroy(autoDestroy);
        }
    }
}
