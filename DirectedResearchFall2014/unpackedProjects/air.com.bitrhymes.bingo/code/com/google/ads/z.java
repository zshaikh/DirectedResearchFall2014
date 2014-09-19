package com.google.ads;

import java.util.*;
import android.webkit.*;
import com.google.ads.util.*;
import com.google.ads.internal.*;

public class z implements o
{
    private AdActivity.StaticMethodWrapper a;
    
    public z() {
        this(new AdActivity.StaticMethodWrapper());
    }
    
    public z(final AdActivity.StaticMethodWrapper a) {
        super();
        this.a = a;
    }
    
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        final String s = hashMap.get("a");
        if (s == null) {
            b.a("Could not get the action parameter for open GMSG.");
            return;
        }
        if (s.equals("webapp")) {
            this.a.launchAdActivity(d, new e("webapp", hashMap));
            return;
        }
        if (s.equals("expand")) {
            this.a.launchAdActivity(d, new e("expand", hashMap));
            return;
        }
        this.a.launchAdActivity(d, new e("intent", hashMap));
    }
}
