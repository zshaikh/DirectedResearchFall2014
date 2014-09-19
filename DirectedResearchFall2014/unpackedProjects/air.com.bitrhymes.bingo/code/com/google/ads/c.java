package com.google.ads;

import java.util.*;
import org.json.*;
import com.google.ads.internal.*;

public class c
{
    private static final Map<String, AdSize> a;
    private final String b;
    private final String c;
    private final List<a> d;
    private final Integer e;
    private final Integer f;
    private final List<String> g;
    private final List<String> h;
    private final List<String> i;
    
    static {
        a = Collections.unmodifiableMap((Map<? extends String, ? extends AdSize>)new HashMap<String, AdSize>() {
            {
                this.put("banner", AdSize.BANNER);
                this.put("mrec", AdSize.IAB_MRECT);
                this.put("fullbanner", AdSize.IAB_BANNER);
                this.put("leaderboard", AdSize.IAB_LEADERBOARD);
                this.put("skyscraper", AdSize.IAB_WIDE_SKYSCRAPER);
            }
        });
    }
    
    private c(final String b, final String c, final List<a> d, final Integer e, final Integer f, final List<String> g, final List<String> h, final List<String> i) {
        super();
        com.google.ads.util.a.a(b);
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = e;
        this.f = f;
        this.g = g;
        this.h = h;
        this.i = i;
    }
    
    private static a a(final JSONObject jsonObject) throws JSONException {
        final String string = jsonObject.getString("id");
        final String optString = jsonObject.optString("allocation_id", (String)null);
        final JSONArray jsonArray = jsonObject.getJSONArray("adapters");
        final ArrayList list = new ArrayList<String>(jsonArray.length());
        for (int i = 0; i < jsonArray.length(); ++i) {
            list.add(jsonArray.getString(i));
        }
        final List<String> a = a(jsonObject, "imp_urls");
        final JSONObject optJSONObject = jsonObject.optJSONObject("data");
        HashMap<String, String> hashMap = new HashMap<String, String>(0);
        if (optJSONObject != null) {
            hashMap = new HashMap<String, String>(optJSONObject.length());
            final Iterator keys = optJSONObject.keys();
            while (keys.hasNext()) {
                final String key = keys.next();
                hashMap.put(key, optJSONObject.getString(key));
            }
        }
        return new a(optString, string, (List<String>)list, a, hashMap);
    }
    
    public static c a(final String s) throws JSONException {
        final JSONObject jsonObject = new JSONObject(s);
        final String string = jsonObject.getString("qdata");
        String string2;
        if (jsonObject.has("ad_type")) {
            string2 = jsonObject.getString("ad_type");
        }
        else {
            string2 = null;
        }
        final JSONArray jsonArray = jsonObject.getJSONArray("ad_networks");
        final ArrayList list = new ArrayList<a>(jsonArray.length());
        for (int i = 0; i < jsonArray.length(); ++i) {
            list.add(a(jsonArray.getJSONObject(i)));
        }
        final JSONObject optJSONObject = jsonObject.optJSONObject("settings");
        Integer value;
        Integer value2;
        List<String> a;
        List<String> a2;
        List<String> a3;
        if (optJSONObject != null) {
            if (optJSONObject.has("refresh")) {
                value = optJSONObject.getInt("refresh");
            }
            else {
                value = null;
            }
            if (optJSONObject.has("ad_network_timeout_millis")) {
                value2 = optJSONObject.getInt("ad_network_timeout_millis");
            }
            else {
                value2 = null;
            }
            a = a(optJSONObject, "imp_urls");
            a2 = a(optJSONObject, "click_urls");
            a3 = a(optJSONObject, "nofill_urls");
        }
        else {
            value = null;
            value2 = null;
            a = null;
            a2 = null;
            a3 = null;
        }
        return new c(string, string2, (List<a>)list, value, value2, a, a2, a3);
    }
    
    private static List<String> a(final JSONObject jsonObject, final String s) throws JSONException {
        final JSONArray optJSONArray = jsonObject.optJSONArray(s);
        if (optJSONArray != null) {
            final ArrayList list = new ArrayList<String>(optJSONArray.length());
            for (int i = 0; i < optJSONArray.length(); ++i) {
                list.add(optJSONArray.getString(i));
            }
            return (List<String>)list;
        }
        return null;
    }
    
    public boolean a() {
        return this.f != null;
    }
    
    public int b() {
        return this.f;
    }
    
    public String c() {
        return this.b;
    }
    
    public boolean d() {
        return this.e != null;
    }
    
    public int e() {
        return this.e;
    }
    
    public List<a> f() {
        return this.d;
    }
    
    public List<String> g() {
        return this.g;
    }
    
    public List<String> h() {
        return this.h;
    }
    
    public List<String> i() {
        return this.i;
    }
    
    public h j() {
        if (this.c == null) {
            return null;
        }
        if ("interstitial".equals(this.c)) {
            return com.google.ads.internal.h.a;
        }
        final AdSize adSize = com.google.ads.c.a.get(this.c);
        if (adSize != null) {
            return com.google.ads.internal.h.a(adSize);
        }
        return null;
    }
}
