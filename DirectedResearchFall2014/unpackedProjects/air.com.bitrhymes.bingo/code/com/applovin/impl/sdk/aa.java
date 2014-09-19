package com.applovin.impl.sdk;

import java.util.*;
import org.json.*;
import android.content.*;

class aa
{
    private final AppLovinSdkImpl a;
    private final Map b;
    
    aa(final AppLovinSdkImpl a) {
        super();
        this.b = new HashMap();
        if (a == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = a;
    }
    
    void a() {
        synchronized (this.b) {
            this.b.clear();
            // monitorexit(this.b)
            this.d();
        }
    }
    
    void a(final String s) {
        this.a(s, 1L);
    }
    
    void a(final String s, final long n) {
        synchronized (this.b) {
            Long value = this.b.get(s);
            if (value == null) {
                value = 0L;
            }
            this.b.put(s, n + value);
            // monitorexit(this.b)
            this.d();
        }
    }
    
    long b(final String s) {
        while (true) {
            while (true) {
                final Long n;
                synchronized (this.b) {
                    n = this.b.get(s);
                    if (n == null) {
                        return 0L;
                    }
                }
                final Long value = n;
                continue;
            }
        }
    }
    
    JSONObject b() {
        final JSONObject jsonObject;
        synchronized (this.b) {
            jsonObject = new JSONObject();
            for (final Map.Entry<String, V> entry : this.b.entrySet()) {
                jsonObject.put((String)entry.getKey(), (Object)entry.getValue());
            }
        }
        // monitorexit(map)
        return jsonObject;
    }
    
    void b(final String s, final long l) {
        synchronized (this.b) {
            this.b.put(s, l);
            // monitorexit(this.b)
            this.d();
        }
    }
    
    void c() {
        final String string = this.a.getSettingsManager().a().getString("stats", "{}");
        try {
            final JSONObject jsonObject = new JSONObject(string);
            synchronized (this.b) {
                final Iterator keys = jsonObject.keys();
                while (keys.hasNext()) {
                    try {
                        final String s = keys.next();
                        this.b.put(s, jsonObject.getLong(s));
                    }
                    catch (JSONException ex) {}
                }
            }
        }
        catch (Throwable t) {
            this.a.getLogger().e("StatsManager", "Unable to load stats", t);
        }
    }
    
    void c(final String s) {
        synchronized (this.b) {
            this.b.remove(s);
            // monitorexit(this.b)
            this.d();
        }
    }
    
    void d() {
        try {
            final SharedPreferences$Editor edit = this.a.getSettingsManager().a().edit();
            edit.putString("stats", this.b().toString());
            edit.commit();
        }
        catch (JSONException ex) {
            this.a.getLogger().e("StatsManager", "Unable to save stats", (Throwable)ex);
        }
    }
}
