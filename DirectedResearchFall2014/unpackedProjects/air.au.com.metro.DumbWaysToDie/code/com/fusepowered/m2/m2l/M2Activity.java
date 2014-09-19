package com.fusepowered.m2.m2l;

import java.io.*;
import com.fusepowered.m2.m2l.factories.*;
import android.webkit.*;
import android.util.*;
import android.content.*;
import android.view.*;
import android.os.*;

public class M2Activity extends BaseInterstitialActivity
{
    private HtmlInterstitialWebView mHtmlInterstitialWebView;
    
    static Intent createIntent(final Context context, final String s, final boolean b, final String s2, final String s3, final AdConfiguration adConfiguration) {
        final Intent intent = new Intent(context, (Class)M2Activity.class);
        intent.putExtra("Html-Response-Body", s);
        intent.putExtra("Scrollable", b);
        intent.putExtra("Clickthrough-Url", s3);
        intent.putExtra("Redirect-Url", s2);
        intent.putExtra("Ad-Configuration", (Serializable)adConfiguration);
        intent.addFlags(268435456);
        return intent;
    }
    
    static void preRenderHtml(final Context context, final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, final String s) {
        final HtmlInterstitialWebView create = HtmlInterstitialWebViewFactory.create(context, customEventInterstitialListener, false, null, null, null);
        create.enablePlugins(false);
        create.addMoPubUriJavascriptInterface((HtmlInterstitialWebView.MoPubUriJavascriptFireFinishLoadListener)new MoPubActivity.MoPubActivity$1(customEventInterstitialListener));
        create.setWebViewClient((WebViewClient)new MoPubActivity.MoPubActivity$2(customEventInterstitialListener));
        create.loadHtmlResponse(s);
    }
    
    public static void start(final Context context, final String s, final boolean b, final String s2, final String s3, final AdConfiguration adConfiguration) {
        final Intent intent = createIntent(context, s, b, s2, s3, adConfiguration);
        try {
            context.startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            Log.d("MoPubActivity", "MoPubActivity not found - did you declare it in AndroidManifest.xml?");
        }
    }
    
    @Override
    public View getAdView() {
        final Intent intent = this.getIntent();
        (this.mHtmlInterstitialWebView = HtmlInterstitialWebViewFactory.create(this.getApplicationContext(), new BroadcastingInterstitialListener(), intent.getBooleanExtra("Scrollable", false), intent.getStringExtra("Redirect-Url"), intent.getStringExtra("Clickthrough-Url"), this.getAdConfiguration())).loadHtmlResponse(intent.getStringExtra("Html-Response-Body"));
        return (View)this.mHtmlInterstitialWebView;
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.broadcastInterstitialAction("com.mopub.action.interstitial.show");
    }
    
    @Override
    protected void onDestroy() {
        this.mHtmlInterstitialWebView.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getUrl());
        this.mHtmlInterstitialWebView.destroy();
        this.broadcastInterstitialAction("com.mopub.action.interstitial.dismiss");
        super.onDestroy();
    }
    
    class BroadcastingInterstitialListener implements CustomEventInterstitialListener
    {
        @Override
        public void onInterstitialClicked() {
            M2Activity.this.broadcastInterstitialAction("com.mopub.action.interstitial.click");
        }
        
        @Override
        public void onInterstitialDismissed() {
        }
        
        @Override
        public void onInterstitialFailed(final MoPubErrorCode moPubErrorCode) {
            M2Activity.this.broadcastInterstitialAction("com.mopub.action.interstitial.fail");
            M2Activity.this.finish();
        }
        
        @Override
        public void onInterstitialLoaded() {
            M2Activity.this.mHtmlInterstitialWebView.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getUrl());
        }
        
        @Override
        public void onInterstitialShown() {
        }
        
        @Override
        public void onLeaveApplication() {
        }
    }
}
