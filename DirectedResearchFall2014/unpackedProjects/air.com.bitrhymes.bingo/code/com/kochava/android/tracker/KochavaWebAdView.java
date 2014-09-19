package com.kochava.android.tracker;

import android.app.*;
import android.util.*;
import android.os.*;
import android.webkit.*;
import android.net.*;
import java.util.regex.*;
import android.widget.*;
import android.graphics.drawable.shapes.*;
import android.graphics.drawable.*;
import android.view.*;
import android.content.*;
import android.graphics.*;

public class KochavaWebAdView extends Activity
{
    Activity activity;
    boolean finishedLoad;
    ProgressDialog mDialog;
    boolean startLoad;
    
    public KochavaWebAdView() {
        super();
        this.startLoad = false;
        this.finishedLoad = false;
    }
    
    public void onBackPressed() {
        super.onBackPressed();
        this.mDialog.dismiss();
        if (Global.DEBUG) {
            Log.i("KochavaAds", "Back pressed.");
        }
        if (Feature.appContext.getResources().getIdentifier("kochava_slide_down", "anim", this.getPackageName()) != 0) {
            this.overridePendingTransition(Feature.appContext.getResources().getIdentifier("kochava_stay", "anim", this.getPackageName()), Feature.appContext.getResources().getIdentifier("kochava_slide_down", "anim", this.getPackageName()));
            return;
        }
        this.overridePendingTransition(0, 17432579);
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.activity = this;
        final String string = this.getIntent().getExtras().getString("URL");
        final WebView webView = new WebView((Context)this);
        webView.loadUrl(string);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setBuiltInZoomControls(true);
        webView.setPictureListener((WebView$PictureListener)new MyPictureListener((MyPictureListener)null));
        webView.setWebViewClient((WebViewClient)new WebViewClient() {
            public void onPageStarted(final WebView webView, final String str, final Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                if (Global.DEBUG) {
                    Log.i("KochavaAds", "onPageStart Url = " + str);
                }
            }
            
            public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
                if (Global.DEBUG) {
                    Log.i("KochavaAds", "shouldOverrideUrlLoading Url = " + s);
                }
                if (s.contains("market://")) {
                    String group = "";
                    final Matcher matcher = Pattern.compile("\\?p=(.*)").matcher(s);
                    if (matcher.find()) {
                        group = matcher.group(1);
                    }
                    if (Global.DEBUG) {
                        Log.i("KochavaAds", "LOADING: https://market.android.com/details?id=" + group);
                    }
                    final Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse("https://market.android.com/details?id=" + group));
                    KochavaWebAdView.this.activity.startActivity(intent);
                    KochavaWebAdView.this.activity.finish();
                    return true;
                }
                webView.loadUrl(s);
                return true;
            }
        });
        this.requestWindowFeature(1);
        final RelativeLayout relativeLayout = new RelativeLayout((Context)this);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-1, -1);
        relativeLayout.setPadding(10, 10, 10, 10);
        final Button button = new Button((Context)this);
        button.setText((CharSequence)"Close");
        button.setBackgroundColor(-16777216);
        button.setTextColor(-1);
        button.setPadding(7, 3, 7, 5);
        final ShapeDrawable shapeDrawable = new ShapeDrawable((Shape)new RoundRectShape(new float[] { 0.0f, 0.0f, 0.0f, 0.0f, 5.0f, 5.0f, 0.0f, 0.0f }, (RectF)null, (float[])null));
        shapeDrawable.setPadding(7, 3, 7, 5);
        final StateListDrawable backgroundDrawable = new StateListDrawable();
        backgroundDrawable.addState(new int[0], (Drawable)shapeDrawable);
        button.setBackgroundDrawable((Drawable)backgroundDrawable);
        button.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                KochavaWebAdView.this.onBackPressed();
            }
        });
        if (webView.getParent() != null) {
            ((ViewGroup)webView.getParent()).removeView((View)webView);
        }
        relativeLayout.addView((View)webView);
        relativeLayout.addView((View)button);
        this.setContentView((View)relativeLayout, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        (this.mDialog = new ProgressDialog((Context)this)).setCancelable(true);
        this.mDialog.setCanceledOnTouchOutside(false);
        this.mDialog.setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
            public void onCancel(final DialogInterface dialogInterface) {
                if (Global.DEBUG) {
                    Log.i("KochavaAds", "Back pressed during loading dialog.");
                }
                KochavaWebAdView.this.activity.onBackPressed();
            }
        });
        this.mDialog.setMessage((CharSequence)"Loading...");
        this.mDialog.show();
    }
    
    private class MyPictureListener implements WebView$PictureListener
    {
        public void onNewPicture(final WebView webView, final Picture picture) {
            if (KochavaWebAdView.this.mDialog.isShowing()) {
                KochavaWebAdView.this.mDialog.dismiss();
            }
        }
    }
}
