package com.fusepowered.m2.m2l;

import android.content.*;
import com.fusepowered.m2.m2l.util.*;
import android.view.*;
import android.util.*;

public class BaseHtmlWebView extends BaseWebView implements UserClickListener
{
    private boolean mClicked;
    private final ViewGestureDetector mViewGestureDetector;
    
    public BaseHtmlWebView(final Context context, final AdConfiguration adConfiguration) {
        super(context);
        this.disableScrollingAndZoom();
        this.getSettings().setJavaScriptEnabled(true);
        (this.mViewGestureDetector = new ViewGestureDetector(context, (View)this, adConfiguration)).setUserClickListener((ViewGestureDetector.UserClickListener)this);
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) {
            this.enablePlugins(true);
        }
        this.setBackgroundColor(0);
    }
    
    private void disableScrollingAndZoom() {
        this.setHorizontalScrollBarEnabled(false);
        this.setHorizontalScrollbarOverlay(false);
        this.setVerticalScrollBarEnabled(false);
        this.setVerticalScrollbarOverlay(false);
        this.getSettings().setSupportZoom(false);
    }
    
    public void init(final boolean b) {
        this.initializeOnTouchListener(b);
    }
    
    void initializeOnTouchListener(final boolean b) {
        this.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                BaseHtmlWebView.this.mViewGestureDetector.sendTouchEvent(motionEvent);
                return motionEvent.getAction() == 2 && !b;
            }
        });
    }
    
    void loadHtmlResponse(final String s) {
        this.loadDataWithBaseURL("http://ads.mopub.com/", s, "text/html", "utf-8", (String)null);
    }
    
    public void loadUrl(final String str) {
        if (str != null) {
            Log.d("MoPub", "Loading url: " + str);
            if (str.startsWith("javascript:")) {
                super.loadUrl(str);
            }
        }
    }
    
    @Override
    public void onResetUserClick() {
        this.mClicked = false;
    }
    
    @Override
    public void onUserClick() {
        this.mClicked = true;
    }
    
    @Override
    public boolean wasClicked() {
        return this.mClicked;
    }
}
