package com.fusepowered.m2.m2l;

import android.app.*;
import com.fusepowered.m2.m2l.resource.*;
import android.graphics.drawable.*;
import android.widget.*;
import android.view.*;
import android.support.v4.content.*;
import android.content.*;
import android.os.*;
import com.fusepowered.m2.m2l.util.*;

abstract class BaseInterstitialActivity extends Activity
{
    public static final String ACTION_INTERSTITIAL_CLICK = "com.mopub.action.interstitial.click";
    public static final String ACTION_INTERSTITIAL_DISMISS = "com.mopub.action.interstitial.dismiss";
    public static final String ACTION_INTERSTITIAL_FAIL = "com.mopub.action.interstitial.fail";
    public static final String ACTION_INTERSTITIAL_SHOW = "com.mopub.action.interstitial.show";
    private static final float CLOSE_BUTTON_PADDING = 8.0f;
    private static final float CLOSE_BUTTON_SIZE = 50.0f;
    public static final IntentFilter HTML_INTERSTITIAL_INTENT_FILTER;
    private int mButtonPadding;
    private int mButtonSize;
    private ImageView mCloseButton;
    private RelativeLayout mLayout;
    
    static {
        HTML_INTERSTITIAL_INTENT_FILTER = createHtmlInterstitialIntentFilter();
    }
    
    private static IntentFilter createHtmlInterstitialIntentFilter() {
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mopub.action.interstitial.fail");
        intentFilter.addAction("com.mopub.action.interstitial.show");
        intentFilter.addAction("com.mopub.action.interstitial.dismiss");
        intentFilter.addAction("com.mopub.action.interstitial.click");
        return intentFilter;
    }
    
    private void createInterstitialCloseButton() {
        this.mCloseButton = (ImageView)new ImageButton((Context)this);
        final StateListDrawable imageDrawable = new StateListDrawable();
        imageDrawable.addState(new int[] { -16842919 }, (Drawable)Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.decodeImage((Context)this));
        imageDrawable.addState(new int[] { 16842919 }, (Drawable)Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.decodeImage((Context)this));
        this.mCloseButton.setImageDrawable((Drawable)imageDrawable);
        this.mCloseButton.setBackgroundDrawable((Drawable)null);
        this.mCloseButton.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                BaseInterstitialActivity.this.finish();
            }
        });
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(this.mButtonSize, this.mButtonSize);
        relativeLayout$LayoutParams.addRule(11);
        relativeLayout$LayoutParams.setMargins(this.mButtonPadding, 0, this.mButtonPadding, 0);
        this.mLayout.addView((View)this.mCloseButton, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
    }
    
    protected void broadcastInterstitialAction(final String s) {
        LocalBroadcastManager.getInstance((Context)this).sendBroadcast(new Intent(s));
    }
    
    protected AdConfiguration getAdConfiguration() {
        try {
            return (AdConfiguration)this.getIntent().getSerializableExtra("Ad-Configuration");
        }
        catch (ClassCastException ex) {
            return null;
        }
    }
    
    public abstract View getAdView();
    
    protected void hideInterstitialCloseButton() {
        this.mCloseButton.setVisibility(4);
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        this.getWindow().addFlags(1024);
        this.mButtonSize = Dips.asIntPixels(50.0f, (Context)this);
        this.mButtonPadding = Dips.asIntPixels(8.0f, (Context)this);
        this.mLayout = new RelativeLayout((Context)this);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-1, -2);
        relativeLayout$LayoutParams.addRule(13);
        this.mLayout.addView(this.getAdView(), (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        this.setContentView((View)this.mLayout);
        this.createInterstitialCloseButton();
    }
    
    protected void onDestroy() {
        this.mLayout.removeAllViews();
        super.onDestroy();
    }
    
    protected void showInterstitialCloseButton() {
        this.mCloseButton.setVisibility(0);
    }
    
    enum JavaScriptWebViewCallbacks
    {
        WEB_VIEW_DID_APPEAR("WEB_VIEW_DID_APPEAR", 0, "javascript:webviewDidAppear();"), 
        WEB_VIEW_DID_CLOSE("WEB_VIEW_DID_CLOSE", 1, "javascript:webviewDidClose();");
        
        private String mUrl;
        
        private JavaScriptWebViewCallbacks(final String name, final int ordinal, final String mUrl) {
            this.mUrl = mUrl;
        }
        
        protected String getUrl() {
            return this.mUrl;
        }
    }
}
