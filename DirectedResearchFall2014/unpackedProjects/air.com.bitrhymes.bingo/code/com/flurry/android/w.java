package com.flurry.android;

import java.util.*;

final class w
{
    private static String d;
    private FlurryAds Q;
    
    static {
        w.d = "FlurryAgent";
    }
    
    w(final FlurryAds q) {
        super();
        this.Q = q;
    }
    
    private static boolean a(final String str, final String s) {
        return s.equals("%{" + str + "}");
    }
    
    final String a(final cz cz, final AdUnit adUnit, final String s, final String target) {
        if (a("fids", target)) {
            final String string = 0 + ":" + this.Q.getPhoneId();
            db.c(w.d, "Replacing param fids with: " + string);
            return s.replace(target, bd.p(string));
        }
        if (a("sid", target)) {
            final String value = String.valueOf(this.Q.L());
            db.c(w.d, "Replacing param sid with: " + value);
            return s.replace(target, bd.p(value));
        }
        if (a("lid", target)) {
            final String value2 = String.valueOf(cz.getIndex());
            db.c(w.d, "Replacing param lid with: " + value2);
            return s.replace(target, bd.p(value2));
        }
        if (a("guid", target)) {
            final String at = cz.at();
            db.c(w.d, "Replacing param guid with: " + at);
            return s.replace(target, bd.p(at));
        }
        if (a("ats", target)) {
            final String value3 = String.valueOf(System.currentTimeMillis());
            db.c(w.d, "Replacing param ats with: " + value3);
            return s.replace(target, bd.p(value3));
        }
        if (a("apik", target)) {
            final String w = FlurryAds.w();
            db.c(com.flurry.android.w.d, "Replacing param apik with: " + w);
            return s.replace(target, bd.p(w));
        }
        if (a("hid", target)) {
            final String string2 = adUnit.getAdSpace().toString();
            db.c(w.d, "Replacing param hid with: " + string2);
            return s.replace(target, bd.p(string2));
        }
        if (a("eso", target)) {
            final String string3 = Long.toString(System.currentTimeMillis() - this.Q.L());
            db.c(w.d, "Replacing param eso with: " + string3);
            return s.replace(target, bd.p(string3));
        }
        if (!a("uc", target)) {
            db.c(w.d, "Unknown param: " + target);
            return s.replace(target, "");
        }
        final Iterator<Map.Entry<String, String>> iterator = this.Q.O().entrySet().iterator();
        String string4 = "";
        while (iterator.hasNext()) {
            final Map.Entry<String, String> entry = iterator.next();
            string4 = string4 + "c_" + bd.p(entry.getKey()) + "=" + bd.p(entry.getValue()) + "&";
        }
        db.c(w.d, "Replacing param uc with: " + string4);
        final String replace = s.replace(target, string4);
        if (string4.equals("") && replace.length() > 0) {
            return replace.substring(0, replace.length() - 1);
        }
        return replace;
    }
}
