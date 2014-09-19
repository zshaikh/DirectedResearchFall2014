package com.google.ads;

import com.google.ads.internal.*;
import java.util.*;
import android.webkit.*;
import com.google.ads.util.*;

public class p implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        final String s = hashMap.get("name");
        if (s == null) {
            b.b("Error: App event with no name parameter.");
            return;
        }
        d.a(s, hashMap.get("info"));
    }
}
