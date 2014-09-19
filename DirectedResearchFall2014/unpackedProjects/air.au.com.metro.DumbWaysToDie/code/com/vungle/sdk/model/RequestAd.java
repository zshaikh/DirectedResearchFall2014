package com.vungle.sdk.model;

import android.media.*;
import javax.inject.*;
import android.content.*;
import org.json.*;
import android.os.*;
import com.vungle.sdk.*;

public class RequestAd
{
    @Inject
    AudioManager a;
    @Inject
    Provider<VungleCache> b;
    @Inject
    VungleUtil c;
    boolean d;
    private int e;
    private int f;
    private String g;
    private String h;
    private final String i;
    private String j;
    private w k;
    private String l;
    private z m;
    
    public RequestAd() {
        super();
        this.e = -1;
        this.k = null;
        this.l = "";
        this.d = false;
        final Context e = n.e();
        this.g = VungleUtil.c(e);
        this.i = VungleUtil.a(e);
        this.h = VungleUtil.a();
        this.k = new w();
    }
    
    public final z a() {
        return this.m;
    }
    
    public final String a(final JSONObject jsonObject) {
        try {
            if (this.m != null) {
                final String h = this.m.h;
                if (h != null) {
                    jsonObject.put("campaign", (Object)h.replace('_', '|'));
                }
                jsonObject.put("app_id", (Object)this.m.f);
                jsonObject.put("url", (Object)this.m.c);
                if (this.m.b != null) {
                    jsonObject.put("id", (Object)this.m.b);
                }
            }
            jsonObject.put("incentivized", n.D);
            if (n.D && n.E != null) {
                jsonObject.put("name", (Object)n.E);
            }
            return this.b(jsonObject);
        }
        catch (JSONException ex) {
            r.a(IVungleConstants.b, "JSONException", (Throwable)ex);
            return null;
        }
    }
    
    public final void a(final int e) {
        this.e = e;
    }
    
    public final void a(final z m) {
        this.m = m;
    }
    
    public final void a(final String l) {
        this.l = l;
    }
    
    public final String b() {
        return this.l;
    }
    
    public final String b(final JSONObject jsonObject) {
        while (true) {
            Label_0529: {
                if (jsonObject != null) {
                    break Label_0529;
                }
                final JSONObject jsonObject2 = new JSONObject();
                try {
                    final JSONObject jsonObject3 = new JSONObject();
                    final JSONObject jsonObject4 = new JSONObject();
                    final JSONObject jsonObject5 = new JSONObject();
                    final JSONObject jsonObject6 = new JSONObject();
                    jsonObject3.put("osVersion", (Object)Build$VERSION.RELEASE);
                    jsonObject3.put("platform", (Object)"android");
                    this.d = (this.b.get() != null && VungleCache.a());
                    int n;
                    if (this.d) {
                        n = 1;
                    }
                    else {
                        n = 0;
                    }
                    jsonObject3.put("isSdCardAvailable", n);
                    final VungleUtil c = this.c;
                    VungleUtil.h(com.vungle.sdk.n.e());
                    jsonObject6.put("width", (double)com.vungle.sdk.n.x);
                    jsonObject6.put("height", (double)com.vungle.sdk.n.y);
                    jsonObject3.put("dim", (Object)jsonObject6);
                    final VungleUtil c2 = this.c;
                    jsonObject3.put("connection", (Object)(this.j = VungleUtil.d(com.vungle.sdk.n.e())));
                    jsonObject3.put("volume", this.a.getStreamVolume(3) / this.a.getStreamMaxVolume(3));
                    jsonObject3.put("soundEnabled", com.vungle.sdk.n.s);
                    jsonObject3.put("mac", (Object)this.i);
                    final VungleUtil c3 = this.c;
                    jsonObject3.put("model", (Object)VungleUtil.f());
                    if ("NATIVE".equals("CORONA")) {
                        jsonObject3.put("corona", true);
                    }
                    else if ("NATIVE".equals("ADOBE_AIR")) {
                        jsonObject3.put("adobeAir", true);
                    }
                    final VungleUtil c4 = this.c;
                    com.vungle.sdk.n.e();
                    final String d = c4.d();
                    if (d != null && d.length() > 0) {
                        jsonObject3.put("networkOperator", (Object)d);
                    }
                    if (!VungleUtil.b(this.h)) {
                        jsonObject3.put("serial", (Object)this.h);
                    }
                    jsonObject4.put("gender", (Object)VunglePub.Gender.toString(this.e));
                    jsonObject4.put("age", this.f);
                    jsonObject5.put("lat", this.k.a);
                    jsonObject5.put("long", this.k.b);
                    jsonObject4.put("location", (Object)jsonObject5);
                    jsonObject2.put("deviceInfo", (Object)jsonObject3);
                    jsonObject2.put("demo", (Object)jsonObject4);
                    jsonObject2.put("pubAppId", (Object)this.l);
                    final String g = ab.g();
                    if (g != null) {
                        jsonObject2.put("lastError", (Object)g);
                    }
                    jsonObject2.put("isu", (Object)this.g);
                    new StringBuilder("requestJSON : ").append(jsonObject2.toString(3));
                    return jsonObject2.toString();
                }
                catch (JSONException ex) {
                    r.a(IVungleConstants.b, "JSONException", (Throwable)ex);
                    return jsonObject2.toString();
                }
            }
            final JSONObject jsonObject2 = jsonObject;
            continue;
        }
    }
    
    public final void b(final int f) {
        this.f = f;
    }
}
