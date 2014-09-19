package com.applovin.impl.sdk;

import java.util.*;
import org.json.*;

class ab extends an
{
    ab(final AppLovinSdkImpl appLovinSdkImpl) {
        super("SubmitData", appLovinSdkImpl);
    }
    
    static JSONArray a(final Collection collection) {
        final JSONArray jsonArray = new JSONArray();
        for (final q q : collection) {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("package_name", (Object)q.c);
            jsonObject.put("created_at", q.d / 1000L);
            jsonArray.put((Object)jsonObject);
        }
        return jsonArray;
    }
    
    static JSONObject a(final Map map) {
        final JSONObject jsonObject = new JSONObject();
        for (final Map.Entry<String, V> entry : map.entrySet()) {
            jsonObject.put((String)entry.getKey(), (Object)entry.getValue());
        }
        return jsonObject;
    }
    
    protected void a(final JSONObject jsonObject) {
        final n f = this.f();
        final q c = f.c();
        final r b = f.b();
        final JSONObject jsonObject2 = new JSONObject();
        jsonObject2.put("model", (Object)b.d);
        jsonObject2.put("os", (Object)b.e);
        jsonObject2.put("brand", (Object)b.f);
        jsonObject2.put("sdk_version", b.g);
        jsonObject2.put("country_code", (Object)b.h);
        jsonObject2.put("carrier", (Object)b.i);
        jsonObject2.put("cpu_speed", (Object)b.j);
        jsonObject2.put("type", (Object)"android");
        jsonObject2.put("adid", (Object)b.b);
        jsonObject2.put("h_android_id", (Object)bc.a(bc.b(b.b), this.e));
        jsonObject2.put("h_udid", (Object)bc.a(bc.b(b.a), this.e));
        jsonObject2.put("h_nn_android_id", (Object)bc.a(b.b, this.e));
        jsonObject2.put("h_nn_udid", (Object)bc.a(b.a, this.e));
        jsonObject2.put("facebook_attribution_id", (Object)b.c);
        final Locale k = b.k;
        if (k != null) {
            jsonObject2.put("locale", (Object)k.toString());
        }
        jsonObject.put("device_info", (Object)jsonObject2);
        final JSONObject jsonObject3 = new JSONObject();
        jsonObject3.put("package_name", (Object)c.c);
        jsonObject3.put("app_name", (Object)c.a);
        jsonObject3.put("app_version", (Object)c.b);
        jsonObject3.put("created_at", c.d / 1000L);
        jsonObject3.put("applovin_sdk_version", (Object)"5.1.1-5.1.1");
        final String s = (String)this.e.a(v.T);
        jsonObject3.put("first_install", (Object)s);
        if (s.equals("true")) {
            this.e.getSettingsManager().a(v.T, "false");
        }
        final String s2 = (String)this.e.a(v.J);
        if (s2 != null && s2.length() > 0) {
            jsonObject3.put("plugin_version", (Object)s2);
        }
        jsonObject.put("app_info", (Object)jsonObject3);
        final Map a = ((i)this.e.getTargetingData()).a();
        if (a != null && !a.isEmpty()) {
            jsonObject.put("targeting", (Object)a(a));
        }
        jsonObject.put("stats", (Object)this.e.b().b());
    }
    
    protected void a(final JSONObject jsonObject, final Collection collection) {
        try {
            final JSONObject a = m.a(jsonObject);
            final y settingsManager = this.e.getSettingsManager();
            settingsManager.a(v.c, a.getString("device_id"));
            settingsManager.a(v.f, a.getString("device_token"));
            settingsManager.a(v.d, a.getString("publisher_id"));
            settingsManager.a(v.e, a.getString("app_id"));
            settingsManager.b();
            m.a(a, this.e);
            if (a.has("adserver_parameters")) {
                settingsManager.a(v.C, a.getJSONObject("adserver_parameters").toString());
            }
            this.e.getEventManager().b(collection);
            if (this.e.a(v.y)) {
                this.a_();
            }
        }
        catch (JSONException ex) {
            this.f.e(this.d, "Unable to parse API response", (Throwable)ex);
        }
    }
    
    protected void a_() {
        this.e.a().a(new ay(this.e), am.b);
    }
    
    protected Collection b() {
        if ((boolean)this.e.a(v.r) && bc.a(v.s, this.e)) {
            return this.f().a();
        }
        return null;
    }
    
    protected void b(final JSONObject jsonObject, final Collection collection) {
        final ac ac = new ac(this, "Repeat" + this.d, v.h, this.e, jsonObject, collection);
        ac.a(v.m);
        ac.run();
    }
    
    @Override
    public void run() {
        try {
            final s eventManager = this.e.getEventManager();
            this.f.i(this.d, "Submitting user data...");
            final JSONObject jsonObject = new JSONObject();
            this.a(jsonObject);
            final Collection b = this.b();
            if (b != null) {
                jsonObject.put("apps", (Object)a(b));
            }
            final Collection a = eventManager.a();
            jsonObject.put("events", (Object)s.a(a));
            this.b(jsonObject, a);
        }
        catch (JSONException ex) {
            this.f.e(this.d, "Unable to create JSON message with collected data", (Throwable)ex);
        }
    }
}
