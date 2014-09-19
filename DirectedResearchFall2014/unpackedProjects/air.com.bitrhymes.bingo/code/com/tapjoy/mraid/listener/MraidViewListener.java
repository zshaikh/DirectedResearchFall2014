package com.tapjoy.mraid.listener;

import android.webkit.*;
import android.graphics.*;

public interface MraidViewListener
{
    boolean onClose();
    
    boolean onConsoleMessage(ConsoleMessage p0);
    
    boolean onEventFired();
    
    boolean onExpand();
    
    boolean onExpandClose();
    
    void onPageFinished(WebView p0, String p1);
    
    void onPageStarted(WebView p0, String p1, Bitmap p2);
    
    boolean onReady();
    
    void onReceivedError(WebView p0, int p1, String p2, String p3);
    
    boolean onResize();
    
    boolean onResizeClose();
    
    boolean shouldOverrideUrlLoading(WebView p0, String p1);
}
