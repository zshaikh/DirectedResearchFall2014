package com.google.ads;

import java.util.*;
import android.util.*;
import android.webkit.*;
import com.google.ads.util.*;
import android.app.*;
import android.os.*;
import android.view.*;
import com.google.ads.internal.*;

public class ac implements o
{
    private static final a a;
    
    static {
        a = com.google.ads.internal.a.a.b();
    }
    
    protected int a(final HashMap<String, String> hashMap, final String s, final int n, final DisplayMetrics displayMetrics) {
        final String s2 = hashMap.get(s);
        if (s2 != null) {
            try {
                return (int)TypedValue.applyDimension(1, (float)Integer.parseInt(s2), displayMetrics);
            }
            catch (NumberFormatException ex) {
                b.a("Could not parse \"" + s + "\" in a video gmsg: " + s2);
            }
        }
        return n;
    }
    
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        final String str = hashMap.get("action");
        if (str == null) {
            b.a("No \"action\" parameter in a video gmsg.");
            return;
        }
        if (!(webView instanceof AdWebView)) {
            b.a("Could not get adWebView for a video gmsg.");
            return;
        }
        final AdWebView adWebView = (AdWebView)webView;
        final AdActivity i = adWebView.i();
        if (i == null) {
            b.a("Could not get adActivity for a video gmsg.");
            return;
        }
        final boolean equals = str.equals("new");
        final boolean equals2 = str.equals("position");
        if (equals || equals2) {
            final DisplayMetrics a = AdUtil.a(i);
            final int a2 = this.a(hashMap, "x", 0, a);
            final int a3 = this.a(hashMap, "y", 0, a);
            final int a4 = this.a(hashMap, "w", -1, a);
            final int a5 = this.a(hashMap, "h", -1, a);
            if (equals && i.getAdVideoView() == null) {
                i.newAdVideoView(a2, a3, a4, a5);
                return;
            }
            i.moveAdVideoView(a2, a3, a4, a5);
        }
        else {
            final AdVideoView adVideoView = i.getAdVideoView();
            if (adVideoView == null) {
                ac.a.a(adWebView, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
                return;
            }
            if (str.equals("click")) {
                final DisplayMetrics a6 = AdUtil.a(i);
                final int a7 = this.a(hashMap, "x", 0, a6);
                final int a8 = this.a(hashMap, "y", 0, a6);
                final long uptimeMillis = SystemClock.uptimeMillis();
                adVideoView.a(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float)a7, (float)a8, 0));
                return;
            }
            if (str.equals("controls")) {
                final String s = hashMap.get("enabled");
                if (s == null) {
                    b.a("No \"enabled\" parameter in a controls video gmsg.");
                    return;
                }
                if (s.equals("true")) {
                    adVideoView.setMediaControllerEnabled(true);
                    return;
                }
                adVideoView.setMediaControllerEnabled(false);
            }
            else {
                if (str.equals("currentTime")) {
                    final String s2 = hashMap.get("time");
                    if (s2 == null) {
                        b.a("No \"time\" parameter in a currentTime video gmsg.");
                        return;
                    }
                    try {
                        adVideoView.a((int)(1000.0f * Float.parseFloat(s2)));
                        return;
                    }
                    catch (NumberFormatException ex) {
                        b.a("Could not parse \"time\" parameter: " + s2);
                        return;
                    }
                }
                if (str.equals("hide")) {
                    adVideoView.setVisibility(4);
                    return;
                }
                if (str.equals("load")) {
                    adVideoView.b();
                    return;
                }
                if (str.equals("pause")) {
                    adVideoView.c();
                    return;
                }
                if (str.equals("play")) {
                    adVideoView.d();
                    return;
                }
                if (str.equals("show")) {
                    adVideoView.setVisibility(0);
                    return;
                }
                if (str.equals("src")) {
                    adVideoView.setSrc(hashMap.get("src"));
                    return;
                }
                b.a("Unknown video action: " + str);
            }
        }
    }
}
