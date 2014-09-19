package com.google.ads;

import java.util.*;
import android.webkit.*;
import com.google.ads.internal.*;
import com.google.ads.util.*;
import android.text.*;

public class aa implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        if (!(webView instanceof ActivationOverlay)) {
            b.b("Trying to activate an overlay when this is not an overlay.");
            return;
        }
        int int1;
        int int2;
        int int3;
        int int4;
        while (true) {
            while (true) {
                Label_0256: {
                    while (true) {
                        Label_0250: {
                            while (true) {
                                Label_0244: {
                                    while (true) {
                                        Label_0238: {
                                            try {
                                                if (TextUtils.isEmpty((CharSequence)hashMap.get("w"))) {
                                                    break Label_0256;
                                                }
                                                int1 = Integer.parseInt(hashMap.get("w"));
                                                if (TextUtils.isEmpty((CharSequence)hashMap.get("h"))) {
                                                    break Label_0250;
                                                }
                                                int2 = Integer.parseInt(hashMap.get("h"));
                                                if (TextUtils.isEmpty((CharSequence)hashMap.get("x"))) {
                                                    break Label_0244;
                                                }
                                                int3 = Integer.parseInt(hashMap.get("x"));
                                                if (TextUtils.isEmpty((CharSequence)hashMap.get("y"))) {
                                                    break Label_0238;
                                                }
                                                int4 = Integer.parseInt(hashMap.get("y"));
                                                if (hashMap.get("a") != null && hashMap.get("a").equals("1")) {
                                                    d.a(null, true, int3, int4, int1, int2);
                                                    return;
                                                }
                                            }
                                            catch (NumberFormatException ex) {
                                                b.d("Invalid number format in activation overlay response.", ex);
                                                return;
                                            }
                                            break;
                                        }
                                        int4 = -1;
                                        continue;
                                    }
                                }
                                int3 = -1;
                                continue;
                            }
                        }
                        int2 = -1;
                        continue;
                    }
                }
                int1 = -1;
                continue;
            }
        }
        if (hashMap.get("a") != null && hashMap.get("a").equals("0")) {
            d.a(null, false, int3, int4, int1, int2);
            return;
        }
        d.a(int3, int4, int1, int2);
    }
}
