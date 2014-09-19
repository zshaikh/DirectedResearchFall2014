package com.google.ads;

import java.util.*;
import android.text.*;
import android.webkit.*;
import com.google.ads.util.*;
import com.google.ads.internal.*;

public class x implements o
{
    private void a(final HashMap<String, String> hashMap, final String s, final i.c<Integer> c) {
        try {
            final String s2 = hashMap.get(s);
            if (!TextUtils.isEmpty((CharSequence)s2)) {
                c.a(Integer.valueOf(s2));
            }
        }
        catch (NumberFormatException ex) {
            b.a("Could not parse \"" + s + "\" constant.");
        }
    }
    
    private void b(final HashMap<String, String> hashMap, final String s, final i.c<Long> c) {
        try {
            final String s2 = hashMap.get(s);
            if (!TextUtils.isEmpty((CharSequence)s2)) {
                c.a(Long.valueOf(s2));
            }
        }
        catch (NumberFormatException ex) {
            b.a("Could not parse \"" + s + "\" constant.");
        }
    }
    
    private void c(final HashMap<String, String> hashMap, final String key, final i.c<String> c) {
        final String s = hashMap.get(key);
        if (!TextUtils.isEmpty((CharSequence)s)) {
            c.a(s);
        }
    }
    
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        final n i = d.i();
        final m.a a = i.d.a().b.a();
        this.c(hashMap, "as_domains", a.a);
        this.c(hashMap, "bad_ad_report_path", a.h);
        this.a(hashMap, "min_hwa_banner", a.b);
        this.a(hashMap, "min_hwa_activation_overlay", a.c);
        this.a(hashMap, "min_hwa_overlay", a.d);
        this.c(hashMap, "mraid_banner_path", a.e);
        this.c(hashMap, "mraid_expanded_banner_path", a.f);
        this.c(hashMap, "mraid_interstitial_path", a.g);
        this.b(hashMap, "ac_max_size", a.i);
        this.b(hashMap, "ac_padding", a.j);
        this.b(hashMap, "ac_total_quota", a.k);
        this.b(hashMap, "db_total_quota", a.l);
        this.b(hashMap, "db_quota_per_origin", a.m);
        this.b(hashMap, "db_quota_step_size", a.n);
        final AdWebView l = d.l();
        if (AdUtil.a >= 11) {
            g.a(l.getSettings(), i);
            g.a(webView.getSettings(), i);
        }
        if (!i.g.a().a()) {
            final boolean k = l.k();
            boolean b;
            if (AdUtil.a < a.b.a()) {
                b = true;
            }
            else {
                b = false;
            }
            if (!b && k) {
                com.google.ads.util.b.a("Re-enabling hardware acceleration for a banner after reading constants.");
                l.h();
            }
            else if (b && !k) {
                com.google.ads.util.b.a("Disabling hardware acceleration for a banner after reading constants.");
                l.g();
            }
        }
        final ActivationOverlay activationOverlay = i.e.a();
        if (!i.g.a().b() && activationOverlay != null) {
            final boolean j = activationOverlay.k();
            boolean b2;
            if (AdUtil.a < a.c.a()) {
                b2 = true;
            }
            else {
                b2 = false;
            }
            if (!b2 && j) {
                b.a("Re-enabling hardware acceleration for an activation overlay after reading constants.");
                activationOverlay.h();
            }
            else if (b2 && !j) {
                b.a("Disabling hardware acceleration for an activation overlay after reading constants.");
                activationOverlay.g();
            }
        }
        final String s = a.a.a();
        final al al = i.s.a();
        if (al != null && !TextUtils.isEmpty((CharSequence)s)) {
            al.a(s);
        }
        a.o.a(true);
    }
}
