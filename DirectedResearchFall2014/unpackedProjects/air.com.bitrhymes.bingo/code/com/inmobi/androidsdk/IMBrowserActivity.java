package com.inmobi.androidsdk;

import android.app.*;
import android.webkit.*;
import android.graphics.*;
import com.inmobi.androidsdk.ai.container.*;
import android.widget.*;
import android.content.res.*;
import android.os.*;
import android.view.*;
import android.util.*;
import com.inmobi.commons.internal.*;
import android.content.*;
import android.annotation.*;

public class IMBrowserActivity extends Activity
{
    public static final String EXTRA_BROWSER_ACTIVITY_TYPE = "extra_browser_type";
    public static final int EXTRA_BROWSER_STATUS_BAR = 101;
    public static final String EXTRA_URL = "extra_url";
    private static IMWebView.IMWebViewListener b;
    private static Message c;
    private IMWebView a;
    private RelativeLayout d;
    private float e;
    private Boolean f;
    private IMCustomView g;
    private WebViewClient h;
    
    public IMBrowserActivity() {
        super();
        this.h = new WebViewClient() {
            public void onPageFinished(final WebView webView, final String s) {
                super.onPageFinished(webView, s);
                if (IMBrowserActivity.this.g != null) {
                    if (webView.canGoForward()) {
                        IMBrowserActivity.this.g.setSwitchInt(IMCustomView.SwitchIconType.FORWARD_ACTIVE);
                        IMBrowserActivity.this.g.invalidate();
                    }
                    else {
                        IMBrowserActivity.this.g.setSwitchInt(IMCustomView.SwitchIconType.FORWARD_INACTIVE);
                        IMBrowserActivity.this.g.invalidate();
                    }
                }
                CookieSyncManager.getInstance().sync();
            }
            
            public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
                super.onPageStarted(webView, s, bitmap);
                if (IMBrowserActivity.this.g != null) {
                    IMBrowserActivity.this.g.setSwitchInt(IMCustomView.SwitchIconType.FORWARD_INACTIVE);
                    IMBrowserActivity.this.g.invalidate();
                }
            }
        };
    }
    
    private void a(final ViewGroup viewGroup) {
        final LinearLayout linearLayout = new LinearLayout((Context)this);
        linearLayout.setOrientation(0);
        linearLayout.setId(100);
        linearLayout.setWeightSum(100.0f);
        linearLayout.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                return true;
            }
        });
        linearLayout.setBackgroundResource(17301658);
        linearLayout.setBackgroundColor(-7829368);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), (int)(44.0f * this.e));
        relativeLayout$LayoutParams.addRule(12);
        viewGroup.addView((View)linearLayout, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        final LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent());
        linearLayout$LayoutParams.weight = 25.0f;
        final IMCustomView imCustomView = new IMCustomView((Context)this, this.e, IMCustomView.SwitchIconType.CLOSE_ICON);
        linearLayout.addView((View)imCustomView, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        imCustomView.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    IMBrowserActivity.this.finish();
                    return true;
                }
                if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                    return true;
                }
                return true;
            }
        });
        final IMCustomView imCustomView2 = new IMCustomView((Context)this, this.e, IMCustomView.SwitchIconType.REFRESH);
        linearLayout.addView((View)imCustomView2, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        imCustomView2.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    IMBrowserActivity.this.a.doHidePlayers();
                    IMBrowserActivity.this.a.reload();
                    return true;
                }
                if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                    return true;
                }
                return true;
            }
        });
        final IMCustomView imCustomView3 = new IMCustomView((Context)this, this.e, IMCustomView.SwitchIconType.BACK);
        linearLayout.addView((View)imCustomView3, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        imCustomView3.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    if (IMBrowserActivity.this.a.canGoBack()) {
                        IMBrowserActivity.this.a.goBack();
                    }
                    else {
                        IMBrowserActivity.this.finish();
                    }
                    return true;
                }
                if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                    return true;
                }
                return true;
            }
        });
        linearLayout.addView((View)(this.g = new IMCustomView((Context)this, this.e, IMCustomView.SwitchIconType.FORWARD_INACTIVE)), (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        this.g.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    if (IMBrowserActivity.this.a.canGoForward()) {
                        IMBrowserActivity.this.a.goForward();
                    }
                    return true;
                }
                if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                    return true;
                }
                return true;
            }
        });
    }
    
    public static void requestOnAdDismiss(final Message c) {
        IMBrowserActivity.c = c;
    }
    
    public static void setWebViewListener(final IMWebView.IMWebViewListener b) {
        IMBrowserActivity.b = b;
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        if (this.a != null) {
            this.a.onOrientationEventChange();
        }
        super.onConfigurationChanged(configuration);
    }
    
    @SuppressLint({ "SetJavaScriptEnabled" })
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        if (Build$VERSION.SDK_INT < 9 || Build$VERSION.SDK_INT >= 11) {
            this.getWindow().setFlags(1024, 1024);
        }
        ((WindowManager)this.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.e = this.getResources().getDisplayMetrics().density;
        final Intent intent = this.getIntent();
        final String stringExtra = intent.getStringExtra("extra_url");
        this.f = intent.getBooleanExtra("FIRST_INSTANCE", false);
        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMBrowserActivity-> onCreate");
        if (stringExtra != null) {
            this.d = new RelativeLayout((Context)this);
            this.a = new IMWebView((Context)this, IMBrowserActivity.b, true, true);
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent());
            relativeLayout$LayoutParams.addRule(10);
            relativeLayout$LayoutParams.addRule(2, 100);
            this.d.setBackgroundColor(-1);
            this.d.addView((View)this.a, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
            this.a((ViewGroup)this.d);
            this.a.getSettings().setJavaScriptEnabled(true);
            this.a.setExternalWebViewClient(this.h);
            this.a.getSettings().setLoadWithOverviewMode(true);
            this.a.getSettings().setUseWideViewPort(true);
            this.a.loadUrl(stringExtra);
            CookieSyncManager.createInstance((Context)this);
            CookieSyncManager.getInstance().startSync();
            this.setContentView((View)this.d);
        }
    }
    
    protected void onDestroy() {
        super.onDestroy();
        try {
            if (this.a != null) {
                this.a.releaseAllPlayers();
            }
            if (IMBrowserActivity.c != null && this.f) {
                IMBrowserActivity.c.sendToTarget();
            }
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in onDestroy ", ex);
        }
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
