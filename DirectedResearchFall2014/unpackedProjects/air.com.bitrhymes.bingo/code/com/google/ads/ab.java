package com.google.ads;

import com.google.ads.internal.*;
import java.util.*;
import android.webkit.*;
import android.app.*;
import com.google.ads.util.*;

public class ab implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        if (d.i().c.a() == null) {
            b.e("Activity was null while responding to touch gmsg.");
        }
        else {
            final String s = hashMap.get("tx");
            final String s2 = hashMap.get("ty");
            final String s3 = hashMap.get("td");
            try {
                final int int1 = Integer.parseInt(s);
                final int int2 = Integer.parseInt(s2);
                final int int3 = Integer.parseInt(s3);
                final ak ak = d.i().r.a();
                if (ak != null) {
                    ak.a(int1, int2, int3);
                }
            }
            catch (NumberFormatException ex) {
                b.e("Could not parse touch parameters from gmsg.");
            }
        }
    }
}
