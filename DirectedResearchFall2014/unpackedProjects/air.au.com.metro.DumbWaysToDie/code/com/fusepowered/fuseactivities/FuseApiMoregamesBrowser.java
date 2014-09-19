package com.fusepowered.fuseactivities;

import com.fusepowered.activities.*;
import android.annotation.*;
import android.os.*;
import android.view.animation.*;
import android.webkit.*;
import android.net.*;
import android.content.*;
import android.widget.*;
import com.fusepowered.util.*;
import android.view.*;
import android.util.*;
import com.fusepowered.fuseapi.*;
import android.app.*;

@SuppressLint({ "SetJavaScriptEnabled" })
public class FuseApiMoregamesBrowser extends FuseApiBrowser
{
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        final Uri data = this.getIntent().getData();
        final Bundle extras = this.getIntent().getExtras();
        extras.setClassLoader(this.getClassLoader());
        final FrameLayout$LayoutParams layoutParams = new FrameLayout$LayoutParams(-1, -1);
        final DisplayMetrics displayMetrics = this.getResources().getDisplayMetrics();
        final int n = (int)Math.floor(65.0f * displayMetrics.density);
        final int n2 = (int)Math.floor(45.0f * displayMetrics.density);
        Log.d("GAME CONFIGURATION", "This is the density " + displayMetrics.density);
        final FrameLayout$LayoutParams layoutParams2 = new FrameLayout$LayoutParams(n, n2);
        final AnimationSet set = new AnimationSet(true);
        final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        ((Animation)alphaAnimation).setDuration(100L);
        set.addAnimation((Animation)alphaAnimation);
        final TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
        ((Animation)translateAnimation).setDuration(500L);
        set.addAnimation((Animation)translateAnimation);
        final LayoutAnimationController layoutAnimation = new LayoutAnimationController((Animation)set, 0.25f);
        final FrameLayout frameLayout = new FrameLayout((Context)this);
        final WebView webView = new WebView((Context)this);
        webView.setWebViewClient((WebViewClient)new Callback(this));
        webView.setHorizontalFadingEdgeEnabled(false);
        webView.setVerticalFadingEdgeEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.loadUrl(data.toString());
        webView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient((WebViewClient)new WebViewClient() {
            public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
                if (s.startsWith("market://")) {
                    FuseApiMoregamesBrowser.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
                }
                else {
                    webView.loadUrl(s);
                }
                return true;
            }
        });
        webView.getSettings().setJavaScriptEnabled(true);
        final NetworkService networkService = new NetworkService();
        final ImageButton imageButton = new ImageButton((Context)this);
        imageButton.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
        imageButton.bringToFront();
        networkService.createImageButton(extras.getString("RETURN"), imageButton);
        imageButton.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                final Intent intent = new Intent();
                intent.setData(Uri.parse(ActivityResults.MORE_GAMES_DISPLAYED.name()));
                FuseApiMoregamesBrowser.this.setResult(-1, intent);
                FuseApiMoregamesBrowser.this.finish();
            }
        });
        frameLayout.addView((View)webView);
        frameLayout.addView((View)imageButton);
        final FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams((ViewGroup$MarginLayoutParams)layoutParams);
        frameLayout.setLayoutAnimation(layoutAnimation);
        this.addContentView((View)frameLayout, (ViewGroup$LayoutParams)frameLayout$LayoutParams);
        frameLayout.startAnimation((Animation)translateAnimation);
    }
    
    protected void onResume() {
        super.onResume();
        FuseAPI.initializeFuseAPI(this, this.getApplicationContext());
    }
}
