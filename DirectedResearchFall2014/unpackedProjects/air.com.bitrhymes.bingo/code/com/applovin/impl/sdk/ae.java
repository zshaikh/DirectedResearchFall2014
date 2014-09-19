package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import org.json.*;
import com.applovin.adview.*;
import java.util.*;

class ae extends an
{
    private final AppLovinAdSize a;
    private final AppLovinAdLoadListener b;
    private boolean c;
    
    ae(final AppLovinAdSize a, final AppLovinAdLoadListener b, final AppLovinSdkImpl appLovinSdkImpl) {
        super("FetchNextAd", appLovinSdkImpl);
        this.a = a;
        this.b = b;
    }
    
    private List a(final List list) {
        List<String> list2;
        if (list == null || list.isEmpty()) {
            list2 = null;
        }
        else {
            list2 = new ArrayList<String>(list.size());
            final Iterator<q> iterator = list.iterator();
            while (iterator.hasNext()) {
                list2.add(iterator.next().c);
            }
        }
        return list2;
    }
    
    private void a(final aa aa) {
        if (System.currentTimeMillis() - aa.b("ad_session_start") > 60000 * (int)this.e.a(v.B)) {
            aa.b("ad_session_start", System.currentTimeMillis());
            aa.c("ad_dsp_session");
        }
    }
    
    private void b(final Map map) {
        map.put("api_did", this.e.a(v.c));
        map.put("sdk_key", this.e.getSdkKey());
        map.put("sdk_version", "5.1.1-5.1.1");
        final String s = (String)this.e.a(v.J);
        if (s != null && s.length() > 0) {
            map.put("plugin_version", s);
        }
        map.put("accept", this.g());
        map.put("preloading", String.valueOf(this.c));
        map.put("size", this.a.getLabel());
        map.put("format", "json");
    }
    
    private void c(final Map map) {
        map.put("network", m.a(this.e));
        final aa b = this.e.b();
        map.put("total_imps", String.valueOf(b.b("ad_dsp")));
        map.put("session_imps", String.valueOf(b.b("ad_dsp_session")));
    }
    
    private void d(final Map map) {
        final Map a = ((i)this.e.getTargetingData()).a();
        if (a != null && !a.isEmpty()) {
            map.putAll(a);
        }
    }
    
    private void e(final Map map) {
        final String s = (String)this.e.a(v.C);
        if (s.length() > 2) {
            try {
                final JSONObject jsonObject = new JSONObject(s);
                final Iterator keys = jsonObject.keys();
                while (keys.hasNext()) {
                    final String str = keys.next();
                    final String string = jsonObject.getString(str);
                    map.put(str, string);
                    this.f.d(this.d, "Ad request parameter \"" + str + "\" overriden with \"" + string + "\"");
                }
            }
            catch (JSONException ex) {
                this.f.e(this.d, "Unable to parse ad request parameter overrides", (Throwable)ex);
            }
        }
    }
    
    private void f(final Map map) {
        final Map a = com.applovin.impl.sdk.a.a(this.e);
        while (true) {
            if (!a.isEmpty()) {
                break Label_0030;
            }
            try {
                this.g(a);
                com.applovin.impl.sdk.a.a(a, this.e);
                map.putAll(a);
                map.put("app_id", bc.b(this.e.getApplicationContext().getPackageName(), this.e));
            }
            catch (Exception ex) {
                this.f.e(this.d, "Unable to populate device information", ex);
                continue;
            }
            break;
        }
    }
    
    private String g() {
        String string = "inter_size,custom_size,launch_app";
        if (j.b() && j.a(AppLovinInterstitialActivity.class, this.g)) {
            string += ",video";
        }
        return string;
    }
    
    private void g(final Map map) {
        final n f = this.f();
        final r b = f.b();
        final String a = b.a;
        if (bc.d(a)) {
            map.put("hudid", bc.a(bc.b(a), this.e));
        }
        final String b2 = b.b;
        if (bc.d(b2)) {
            map.put("hadid", bc.a(bc.b(b2), this.e));
            map.put("adid", b2);
        }
        map.put("brand", bc.c(b.f));
        map.put("carrier", bc.c(b.i));
        map.put("cpu_speed", b.j);
        map.put("locale", b.k.toString());
        map.put("model", bc.c(b.d));
        map.put("os", bc.c(b.e));
        map.put("platform", "android");
        if (f.g()) {
            map.put("sources", "tpa");
        }
    }
    
    @Override
    void a() {
        super.a();
        this.a(-410);
    }
    
    protected void a(final int i) {
        this.f.e(this.d, "Unable to fetch " + this.a + " ad: server returned " + i);
        while (true) {
            try {
                if (this.b != null) {
                    this.b.failedToReceiveAd(i);
                }
                m.b(i, this.e);
            }
            catch (Throwable t) {
                this.f.e(this.d, "Unable process a failure to recieve an ad", t);
                continue;
            }
            break;
        }
    }
    
    protected void a(final StringBuffer sb) {
        if (!(boolean)this.e.a(v.r)) {
            return;
        }
        try {
            sb.append("&apps=").append(this.d());
        }
        catch (Exception ex) {
            this.f.e(this.d, "Unable to populate apps", ex);
        }
    }
    
    protected void a(final Map map) {
        this.d(map);
        this.f(map);
        this.c(map);
        this.b(map);
        this.e(map);
    }
    
    protected void a(final JSONObject jsonObject) {
        this.e.a().a(new ar(jsonObject, this.b, this.e), am.a);
        m.a(jsonObject, this.e);
    }
    
    public void a(final boolean c) {
        this.c = c;
    }
    
    protected String b() {
        final HashMap hashMap = new HashMap();
        this.a(hashMap);
        final StringBuffer sb = new StringBuffer(this.c());
        sb.append("?").append(bc.a(hashMap));
        this.a(sb);
        return sb.toString();
    }
    
    protected String c() {
        return m.b("ad", this.e);
    }
    
    protected String d() {
        return bc.a(this.a(this.f().a()), ",", (int)this.e.a(v.q));
    }
    
    @Override
    public void run() {
        this.f.d(this.d, "Fetching next ad...");
        final aa b = this.e.b();
        b.a("ad_req");
        this.a(b);
        try {
            final af af = new af(this, "RepeatFetchNextAd", v.i, this.e);
            af.a(v.n);
            af.run();
        }
        catch (Throwable t) {
            this.f.e(this.d, "Unable to fetch " + this.a + " ad", t);
            this.a(0);
        }
    }
}
