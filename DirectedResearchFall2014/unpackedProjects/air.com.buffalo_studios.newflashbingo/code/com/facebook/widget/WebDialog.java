package com.facebook.widget;

import android.app.*;
import com.facebook.internal.*;
import com.facebook.android.*;
import com.facebook.*;
import android.webkit.*;
import android.widget.*;
import android.view.*;
import android.annotation.*;
import android.content.*;
import android.os.*;
import android.util.*;

public class WebDialog extends Dialog
{
    private static final int BACKGROUND_GRAY = -872415232;
    static final String CANCEL_URI = "fbconnect://cancel";
    public static final int DEFAULT_THEME = 16973840;
    static final boolean DISABLE_SSL_CHECK_FOR_TESTING = false;
    private static final String DISPLAY_TOUCH = "touch";
    private static final String LOG_TAG = "FacebookSDK.WebDialog";
    private static final int MAX_PADDING_SCREEN_HEIGHT = 1280;
    private static final int MAX_PADDING_SCREEN_WIDTH = 800;
    private static final double MIN_SCALE_FACTOR = 0.5;
    private static final int NO_PADDING_SCREEN_HEIGHT = 800;
    private static final int NO_PADDING_SCREEN_WIDTH = 480;
    static final String REDIRECT_URI = "fbconnect://success";
    private static final String USER_AGENT = "user_agent";
    private FrameLayout contentFrameLayout;
    private ImageView crossImageView;
    private boolean isDetached;
    private boolean listenerCalled;
    private WebDialog$OnCompleteListener onCompleteListener;
    private ProgressDialog spinner;
    private String url;
    private WebView webView;
    
    public WebDialog(final Context context, final String s) {
        this(context, s, 16973840);
    }
    
    public WebDialog(final Context context, final String url, final int n) {
        super(context, n);
        this.listenerCalled = false;
        this.isDetached = false;
        this.url = url;
    }
    
    public WebDialog(final Context context, final String str, final Bundle bundle, final int n, final WebDialog$OnCompleteListener onCompleteListener) {
        super(context, n);
        this.listenerCalled = false;
        this.isDetached = false;
        Bundle bundle2;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        else {
            bundle2 = bundle;
        }
        bundle2.putString("redirect_uri", "fbconnect://success");
        bundle2.putString("display", "touch");
        bundle2.putString("type", "user_agent");
        this.url = Utility.buildUri(ServerProtocol.getDialogAuthority(), "dialog/" + str, bundle2).toString();
        this.onCompleteListener = onCompleteListener;
    }
    
    private void calculateSize() {
        final Display defaultDisplay = ((WindowManager)this.getContext().getSystemService("window")).getDefaultDisplay();
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int n;
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            n = displayMetrics.widthPixels;
        }
        else {
            n = displayMetrics.heightPixels;
        }
        int n2;
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            n2 = displayMetrics.heightPixels;
        }
        else {
            n2 = displayMetrics.widthPixels;
        }
        this.getWindow().setLayout(Math.min(this.getScaledSize(n, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(this.getScaledSize(n2, displayMetrics.density, 800, 1280), displayMetrics.heightPixels));
    }
    
    private void createCrossImage() {
        (this.crossImageView = new ImageView(this.getContext())).setOnClickListener((View$OnClickListener)new WebDialog$3(this));
        this.crossImageView.setImageDrawable(this.getContext().getResources().getDrawable(R.drawable.com_facebook_close));
        this.crossImageView.setVisibility(4);
    }
    
    private int getScaledSize(final int n, final float n2, final int n3, final int n4) {
        final int n5 = (int)(n / n2);
        double n6;
        if (n5 <= n3) {
            n6 = 1.0;
        }
        else if (n5 >= n4) {
            n6 = 0.5;
        }
        else {
            n6 = 0.5 + 0.5 * ((n4 - n5) / (n4 - n3));
        }
        return (int)(n6 * n);
    }
    
    private void sendCancelToListener() {
        this.sendErrorToListener(new FacebookOperationCanceledException());
    }
    
    private void sendErrorToListener(final Throwable t) {
        if (this.onCompleteListener != null && !this.listenerCalled) {
            this.listenerCalled = true;
            FacebookException ex;
            if (t instanceof FacebookException) {
                ex = (FacebookException)t;
            }
            else {
                ex = new FacebookException(t);
            }
            this.onCompleteListener.onComplete(null, ex);
        }
    }
    
    private void sendSuccessToListener(final Bundle bundle) {
        if (this.onCompleteListener != null && !this.listenerCalled) {
            this.listenerCalled = true;
            this.onCompleteListener.onComplete(bundle, null);
        }
    }
    
    @SuppressLint({ "SetJavaScriptEnabled" })
    private void setUpWebView(final int n) {
        final LinearLayout linearLayout = new LinearLayout(this.getContext());
        (this.webView = new WebView(this.getContext())).setVerticalScrollBarEnabled(false);
        this.webView.setHorizontalScrollBarEnabled(false);
        this.webView.setWebViewClient((WebViewClient)new WebDialog$DialogWebViewClient(this, null));
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.loadUrl(this.url);
        this.webView.setLayoutParams((ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
        this.webView.setVisibility(4);
        this.webView.getSettings().setSavePassword(false);
        linearLayout.setPadding(n, n, n, n);
        linearLayout.addView((View)this.webView);
        linearLayout.setBackgroundColor(-872415232);
        this.contentFrameLayout.addView((View)linearLayout);
    }
    
    public void dismiss() {
        if (this.webView != null) {
            this.webView.stopLoading();
        }
        if (!this.isDetached) {
            if (this.spinner.isShowing()) {
                this.spinner.dismiss();
            }
            super.dismiss();
        }
    }
    
    public WebDialog$OnCompleteListener getOnCompleteListener() {
        return this.onCompleteListener;
    }
    
    public void onAttachedToWindow() {
        this.isDetached = false;
        super.onAttachedToWindow();
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setOnCancelListener((DialogInterface$OnCancelListener)new WebDialog$1(this));
        (this.spinner = new ProgressDialog(this.getContext())).requestWindowFeature(1);
        this.spinner.setMessage((CharSequence)this.getContext().getString(R.string.com_facebook_loading));
        this.spinner.setOnCancelListener((DialogInterface$OnCancelListener)new WebDialog$2(this));
        this.requestWindowFeature(1);
        this.contentFrameLayout = new FrameLayout(this.getContext());
        this.calculateSize();
        this.getWindow().setGravity(17);
        this.getWindow().setSoftInputMode(16);
        this.createCrossImage();
        this.setUpWebView(1 + this.crossImageView.getDrawable().getIntrinsicWidth() / 2);
        this.contentFrameLayout.addView((View)this.crossImageView, new ViewGroup$LayoutParams(-2, -2));
        this.setContentView((View)this.contentFrameLayout);
        if (Build$VERSION.SDK_INT > 18) {
            Log.d("[GVExt.FBD]", "0fix kitkat window bug.");
            int systemUiVisibility = this.getWindow().getDecorView().getSystemUiVisibility();
            int n;
            if ((systemUiVisibility | 0x1000) == systemUiVisibility) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n != 0) {
                Log.d("[GVExt.FBD]", "disable immersive sticky");
            }
            else {
                Log.d("[GVExt.FBD]", "enable immersive sticky");
            }
            if (Build$VERSION.SDK_INT >= 16 && (systemUiVisibility & 0x4) <= 0) {
                systemUiVisibility ^= 0x4;
            }
            if (Build$VERSION.SDK_INT >= 18 && (systemUiVisibility & 0x1000) <= 0) {
                systemUiVisibility ^= 0x1000;
            }
            this.getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility);
            this.getWindow().setFlags(1024, 1024);
            return;
        }
        Log.d("[GVExt.FBD]", "not kitkat window bug.");
    }
    
    public void onDetachedFromWindow() {
        this.isDetached = true;
        super.onDetachedFromWindow();
    }
    
    public void setOnCompleteListener(final WebDialog$OnCompleteListener onCompleteListener) {
        this.onCompleteListener = onCompleteListener;
    }
}
