package com.google.ads;

import com.google.ads.internal.*;
import java.util.*;
import android.webkit.*;
import com.google.ads.util.*;

public class y implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        b.c("Received log message: <\"string\": \"" + hashMap.get("string") + "\", \"afmaNotifyDt\": \"" + hashMap.get("afma_notify_dt") + "\">");
    }
}
