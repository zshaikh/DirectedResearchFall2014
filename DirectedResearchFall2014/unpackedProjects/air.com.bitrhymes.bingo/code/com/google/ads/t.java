package com.google.ads;

import java.util.*;
import android.webkit.*;
import com.google.ads.internal.*;
import com.google.ads.util.*;

public class t implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        if (webView instanceof AdWebView) {
            ((AdWebView)webView).setCustomClose("1".equals(hashMap.get("custom_close")));
            return;
        }
        b.b("Trying to set a custom close icon on a WebView that isn't an AdWebView");
    }
}
