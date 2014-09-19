package com.fusepowered.m2.m2l;

import android.app.*;
import android.graphics.drawable.*;
import android.widget.*;
import com.fusepowered.m2.m2l.resource.*;
import android.view.*;
import android.content.*;
import android.webkit.*;
import android.os.*;

public class M2RBrowser extends Activity
{
    public static final int INNER_LAYOUT_ID = 1;
    public static final String URL_EXTRA = "extra_url";
    private ImageButton mBackButton;
    private ImageButton mCloseButton;
    private ImageButton mForwardButton;
    private ImageButton mRefreshButton;
    private WebView mWebView;
    
    private void enableCookies() {
        CookieSyncManager.createInstance((Context)this);
        CookieSyncManager.getInstance().startSync();
    }
    
    private ImageButton getButton(final Drawable imageDrawable) {
        final ImageButton imageButton = new ImageButton((Context)this);
        final LinearLayout$LayoutParams layoutParams = new LinearLayout$LayoutParams(-2, -2, 1.0f);
        layoutParams.gravity = 16;
        imageButton.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        imageButton.setImageDrawable(imageDrawable);
        return imageButton;
    }
    
    private View getMraidBrowserView() {
        final LinearLayout linearLayout = new LinearLayout((Context)this);
        linearLayout.setLayoutParams((ViewGroup$LayoutParams)new LinearLayout$LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        final RelativeLayout relativeLayout = new RelativeLayout((Context)this);
        relativeLayout.setLayoutParams((ViewGroup$LayoutParams)new LinearLayout$LayoutParams(-1, -2));
        linearLayout.addView((View)relativeLayout);
        final LinearLayout linearLayout2 = new LinearLayout((Context)this);
        linearLayout2.setId(1);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -2);
        layoutParams.addRule(12);
        linearLayout2.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        linearLayout2.setBackgroundDrawable((Drawable)Drawables.BACKGROUND.decodeImage((Context)this));
        relativeLayout.addView((View)linearLayout2);
        this.mBackButton = this.getButton((Drawable)Drawables.LEFT_ARROW.decodeImage((Context)this));
        this.mForwardButton = this.getButton((Drawable)Drawables.RIGHT_ARROW.decodeImage((Context)this));
        this.mRefreshButton = this.getButton((Drawable)Drawables.REFRESH.decodeImage((Context)this));
        this.mCloseButton = this.getButton((Drawable)Drawables.CLOSE.decodeImage((Context)this));
        linearLayout2.addView((View)this.mBackButton);
        linearLayout2.addView((View)this.mForwardButton);
        linearLayout2.addView((View)this.mRefreshButton);
        linearLayout2.addView((View)this.mCloseButton);
        this.mWebView = new WebView((Context)this);
        final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.mWebView.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
        relativeLayout.addView((View)this.mWebView);
        return (View)linearLayout;
    }
    
    private void initializeButtons() {
        this.mBackButton.setBackgroundColor(0);
        this.mBackButton.setOnClickListener((View$OnClickListener)new MraidBrowser.MraidBrowser$3(this));
        this.mForwardButton.setBackgroundColor(0);
        this.mForwardButton.setOnClickListener((View$OnClickListener)new MraidBrowser.MraidBrowser$4(this));
        this.mRefreshButton.setBackgroundColor(0);
        this.mRefreshButton.setOnClickListener((View$OnClickListener)new MraidBrowser.MraidBrowser$5(this));
        this.mCloseButton.setBackgroundColor(0);
        this.mCloseButton.setOnClickListener((View$OnClickListener)new MraidBrowser.MraidBrowser$6(this));
    }
    
    private void initializeWebView(final Intent intent) {
        final WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.mWebView.loadUrl(intent.getStringExtra("extra_url"));
        this.mWebView.setWebViewClient((WebViewClient)new MraidBrowser.MraidBrowser$1(this));
        this.mWebView.setWebChromeClient((WebChromeClient)new MraidBrowser.MraidBrowser$2(this));
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.getWindow().requestFeature(2);
        this.getWindow().setFeatureInt(2, -1);
        this.setContentView(this.getMraidBrowserView());
        this.initializeWebView(this.getIntent());
        this.initializeButtons();
        this.enableCookies();
    }
    
    protected void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
    }
    
    protected void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
    }
}
