package com.google.ads;

import java.util.*;
import android.webkit.*;
import com.google.ads.util.*;
import com.google.ads.internal.*;

public class v implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        b.e("Invalid " + hashMap.get("type") + " request error: " + hashMap.get("errors"));
        final c k = d.k();
        if (k != null) {
            k.a(AdRequest.ErrorCode.INVALID_REQUEST);
        }
    }
}
