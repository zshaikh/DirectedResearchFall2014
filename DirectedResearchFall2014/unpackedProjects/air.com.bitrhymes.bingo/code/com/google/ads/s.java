package com.google.ads;

import java.util.*;
import android.webkit.*;
import com.google.ads.internal.*;
import com.google.ads.util.*;

public class s implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        if (webView instanceof AdWebView) {
            ((AdWebView)webView).f();
            return;
        }
        b.b("Trying to close WebView that isn't an AdWebView");
    }
}
