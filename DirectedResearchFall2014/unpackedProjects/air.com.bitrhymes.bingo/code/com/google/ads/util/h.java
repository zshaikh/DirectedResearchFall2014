package com.google.ads.util;

import android.annotation.*;
import android.webkit.*;
import com.google.ads.*;

@TargetApi(17)
public final class h
{
    public static void a(final WebSettings webSettings, final n n) {
        g.a(webSettings, n);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
    }
}
