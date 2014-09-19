package com.fusepowered.fuseactivities;

import com.fusepowered.activities.*;
import android.util.*;
import com.fusepowered.fuseapi.*;
import android.content.res.*;
import java.util.*;
import android.webkit.*;
import android.os.*;
import android.graphics.*;
import android.annotation.*;
import android.app.*;
import android.view.*;
import android.content.*;
import com.fusepowered.util.*;
import android.net.*;
import android.widget.*;
import android.view.animation.*;

public class FuseApiAdBrowser extends FuseApiBrowser
{
    private static final String TAG = "FuseApiAdBrowser ";
    private static boolean closing;
    final int ICE_CREAM_SANDWICH;
    final int ICE_CREAM_SANDWICH_MR1;
    String action;
    int adId;
    boolean callbackActivated;
    RelativeLayout layout;
    FrameLayout$LayoutParams layoutParams;
    int lheight;
    int lwidth;
    private Callback myClient;
    int orientation;
    double overallscale;
    RelativeLayout$LayoutParams params;
    int pheight;
    int pwidth;
    WebView webView;
    
    static {
        FuseApiAdBrowser.closing = false;
    }
    
    public FuseApiAdBrowser() {
        super();
        this.callbackActivated = false;
        this.ICE_CREAM_SANDWICH = 14;
        this.ICE_CREAM_SANDWICH_MR1 = 15;
    }
    
    @Override
    public void handleOnExit() {
        FuseApiAdBrowser.closing = true;
        final Animation slideOutAnimation = FuseAnimationController.getSlideOutAnimation(500);
        slideOutAnimation.setAnimationListener((Animation$AnimationListener)new Animation$AnimationListener() {
            public void onAnimationEnd(final Animation animation) {
                FuseApiAdBrowser.this.layout.setVisibility(8);
                Log.d("AdBrowser", "Got an exit event for an ad");
                FuseApiAdBrowser.this.finish();
            }
            
            public void onAnimationRepeat(final Animation animation) {
            }
            
            public void onAnimationStart(final Animation animation) {
            }
        });
        this.layout.startAnimation(slideOutAnimation);
    }
    
    public void onBackPressed() {
        if (!this.callbackActivated) {
            FuseAPI.adDismiss();
            FuseAPI.setFuseChildActivityOnDisplay(false);
            this.callbackActivated = true;
            FuseAPI.fuseAdCallback.adWillClose();
        }
        this.finish();
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.layoutParams.gravity = 17;
        if (this.orientation != 0) {
            return;
        }
        if (this.getResources().getDisplayMetrics().widthPixels > this.getResources().getDisplayMetrics().heightPixels) {
            this.layoutParams.width = this.lwidth;
            this.layoutParams.height = this.lheight;
            return;
        }
        this.layoutParams.width = this.pwidth;
        this.layoutParams.height = this.pheight;
    }
    
    @SuppressLint({ "NewApi" })
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        this.getWindow().setFlags(1024, 1024);
        this.layout = new RelativeLayout((Context)this);
        this.params = new RelativeLayout$LayoutParams(-1, -1);
        this.layout.setGravity(17);
        this.layout.setLayoutParams((ViewGroup$LayoutParams)this.params);
        this.layout.setBackgroundColor(0);
        this.params.addRule(13);
        final Bundle extras = this.getIntent().getExtras();
        extras.setClassLoader(this.getClassLoader());
        this.action = extras.getString("AD_ACTION");
        this.adId = extras.getInt("AD_ID");
        final String string = extras.getString("AD_HTML");
        Log.d("FuseApiAdBrowser ", String.format("Displaying ad [%d]...", this.adId));
        Log.d("FuseApiAdBrowser ", String.format("Ad body: %s", string));
        if (string.length() < 1) {
            FuseAPI.sendFuseAdSkip(FuseAdSkip.FUSE_AD_SKIP_NO_HTML.getErrorCode());
        }
        else {
            this.webView = new WebView((Context)this);
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("Referer", "about:blank");
            this.webView.loadUrl("about:blank", (Map)hashMap);
            this.webView.setBackgroundColor(0);
            this.webView.setId(1);
            this.myClient = new Callback(this);
            this.webView.setWebViewClient((WebViewClient)this.myClient);
            this.webView.getSettings().setJavaScriptEnabled(true);
            this.webView.setWebChromeClient(new WebChromeClient());
            this.webView.setLayoutParams((ViewGroup$LayoutParams)this.params);
            this.webView.loadDataWithBaseURL("http://www.fuseboxx.com", string, "text/html", "UTF-8", (String)null);
            this.layout.addView((View)this.webView);
            this.webView.setHorizontalFadingEdgeEnabled(false);
            this.webView.setVerticalFadingEdgeEnabled(false);
            this.webView.setHorizontalScrollBarEnabled(false);
            this.webView.setVerticalScrollBarEnabled(false);
            if (Build$VERSION.SDK_INT == 14 || Build$VERSION.SDK_INT == 15) {
                this.webView.setLayerType(1, (Paint)null);
            }
            this.layoutParams = new FrameLayout$LayoutParams(-2, -2);
            this.orientation = extras.getInt("o");
            this.pwidth = extras.getInt("PW");
            this.pheight = extras.getInt("PH");
            this.lwidth = extras.getInt("LW");
            this.lheight = extras.getInt("LH");
            int width;
            int height;
            if (this.orientation == 0) {
                if (this.getResources().getDisplayMetrics().widthPixels > this.getResources().getDisplayMetrics().heightPixels) {
                    final int lwidth = this.lwidth;
                    final int lheight = this.lheight;
                    width = lwidth;
                    height = lheight;
                }
                else {
                    final int pwidth = this.pwidth;
                    final int pheight = this.pheight;
                    width = pwidth;
                    height = pheight;
                }
            }
            else if (this.orientation == 1) {
                final int pwidth2 = this.pwidth;
                final int pheight2 = this.pheight;
                width = pwidth2;
                height = pheight2;
            }
            else {
                final int lwidth2 = this.lwidth;
                final int lheight2 = this.lheight;
                width = lwidth2;
                height = lheight2;
            }
            final int n = (int)(width * this.getResources().getDisplayMetrics().density);
            final int n2 = (int)(height * this.getResources().getDisplayMetrics().density);
            this.layoutParams.height = height;
            this.layoutParams.width = width;
            this.layoutParams.gravity = 17;
            this.overallscale = 1.0;
            double overallscale;
            if (this.getResources().getDisplayMetrics().widthPixels < n) {
                overallscale = n / this.getResources().getDisplayMetrics().widthPixels;
            }
            else {
                overallscale = 1.0;
            }
            double overallscale2;
            if (this.getResources().getDisplayMetrics().heightPixels < n2) {
                overallscale2 = n2 / this.getResources().getDisplayMetrics().heightPixels;
            }
            else {
                overallscale2 = 1.0;
            }
            if (overallscale > overallscale2) {
                this.overallscale = overallscale;
            }
            else if (overallscale2 > overallscale) {
                this.overallscale = overallscale2;
            }
            this.overallscale = 100.0 * (1.0 / this.overallscale);
            this.webView.setInitialScale((int)this.overallscale);
            this.addContentView((View)this.layout, (ViewGroup$LayoutParams)this.layoutParams);
            this.layout.startAnimation(FuseAnimationController.getSlideInAnimation(500));
            Log.d("FUSEAD", "Recording a Fuse Ad being Displayed");
            FuseAPI.adDisplay(this.adId);
            if (FuseAPI.fuseAdCallback != null && FuseAPI.fuseAdCallback instanceof FuseAdCallback) {
                FuseAPI.fuseAdCallback.adDisplayed();
            }
        }
    }
    
    protected void onPause() {
        super.onPause();
        if (!FuseApiAdBrowser.closing) {
            FuseAPI.suspendSession();
        }
        FuseApiAdBrowser.closing = false;
    }
    
    protected void onResume() {
        super.onResume();
        FuseAPI.initializeFuseAPI(this, this.getApplicationContext());
        FuseAPI.resumeSession(null);
    }
    
    @Override
    protected void onStop() {
        super.onStop();
        if (FuseAPI.fuseAdCallback != null && FuseAPI.fuseAdCallback instanceof FuseAdCallback && !this.callbackActivated) {
            FuseAPI.adDismiss();
            this.callbackActivated = true;
            FuseAPI.fuseAdCallback.adWillClose();
        }
    }
    
    protected void showAdButtons(final int n) {
        switch (n) {
            default: {}
            case 0: {
                final Button button = new Button(this.getApplicationContext());
                button.setText((CharSequence)"Yes");
                button.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                    public void onClick(final View view) {
                        FuseAPI.adClick();
                        final Intent intent = new Intent();
                        intent.setData(Uri.parse(ActivityResults.AD_CLICKED.name()));
                        FuseApiAdBrowser.this.setResult(-1, intent);
                        if (FuseAPI.fuseAdCallback != null && FuseAPI.fuseAdCallback instanceof FuseAdCallback) {
                            FuseAPI.fuseAdCallback.adClicked();
                        }
                        FuseApiAdBrowser.this.finish();
                    }
                });
                final Button button2 = new Button(this.getApplicationContext());
                button2.setText((CharSequence)"No Thanks");
                button2.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                    public void onClick(final View view) {
                        final Intent intent = new Intent();
                        intent.setData(Uri.parse(ActivityResults.AD_DISPLAYED.name()));
                        FuseApiAdBrowser.this.setResult(-1, intent);
                        FuseApiAdBrowser.this.finish();
                    }
                });
                final RelativeLayout relativeLayout = new RelativeLayout(this.getBaseContext());
                final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
                layoutParams.addRule(12);
                layoutParams.addRule(14);
                relativeLayout.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                final LinearLayout linearLayout = new LinearLayout(this.getBaseContext());
                linearLayout.setLayoutParams((ViewGroup$LayoutParams)new LinearLayout$LayoutParams(-2, -2));
                linearLayout.addView((View)button2);
                linearLayout.addView((View)button);
                relativeLayout.addView((View)linearLayout);
                final AnimationSet set = new AnimationSet(true);
                set.addAnimation(FuseAnimationController.getTranslateAnimation(500));
                relativeLayout.setLayoutAnimation(FuseAnimationController.getAdLayoutAnimationController(set));
                this.layout.addView((View)relativeLayout);
                relativeLayout.startLayoutAnimation();
            }
        }
    }
}
