package com.google.ads;

import com.google.ads.internal.*;
import java.util.*;
import android.webkit.*;
import android.text.*;
import com.google.ads.util.*;
import android.content.*;

public class u implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        final String s = hashMap.get("u");
        if (TextUtils.isEmpty((CharSequence)s)) {
            b.e("Could not get URL from track gmsg.");
            return;
        }
        new Thread(new ae(s, d.i().f.a())).start();
    }
}
