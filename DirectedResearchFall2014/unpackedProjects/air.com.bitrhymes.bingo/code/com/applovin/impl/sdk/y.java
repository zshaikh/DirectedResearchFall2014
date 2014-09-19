package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import org.json.*;
import android.content.*;
import java.io.*;
import java.util.*;

class y
{
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private final Context c;
    private final Object[] d;
    
    y(final AppLovinSdkImpl a) {
        super();
        this.d = new Object[v.b()];
        this.a = a;
        this.b = a.getLogger();
        this.c = a.getApplicationContext();
    }
    
    private static x a(final String anObject) {
        for (final x x : v.a()) {
            if (x.b().equals(anObject)) {
                return x;
            }
        }
        return null;
    }
    
    private static Object a(final String s, final JSONObject jsonObject, final Object o) {
        if (o instanceof Boolean) {
            return jsonObject.getBoolean(s);
        }
        if (o instanceof Float) {
            return (float)jsonObject.getDouble(s);
        }
        if (o instanceof Integer) {
            return jsonObject.getInt(s);
        }
        if (o instanceof Long) {
            return jsonObject.getLong(s);
        }
        if (o instanceof String) {
            return jsonObject.getString(s);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + o.getClass());
    }
    
    private String e() {
        return "com.applovin.sdk." + bc.a(this.a.getSdkKey()) + ".";
    }
    
    public SharedPreferences a() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return this.c.getSharedPreferences("com.applovin.sdk.1", 0);
    }
    
    public Object a(final x x) {
        if (x == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        synchronized (this.d) {
            final Object o = this.d[x.a()];
            Object o2;
            if (o != null) {
                o2 = x.a(o);
            }
            else {
                o2 = x.c();
            }
            return o2;
        }
    }
    
    public void a(final x x, final Object obj) {
        if (x == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No new value specified");
        }
        synchronized (this.d) {
            this.d[x.a()] = obj;
            // monitorexit(this.d)
            this.b.d("SettingsManager", "Setting update: " + x.b() + " set to \"" + obj + "\"");
        }
    }
    
    void a(final AppLovinSdkSettings appLovinSdkSettings) {
        this.b.i("SettingsManager", "Loading user-defined settings...");
        if (appLovinSdkSettings == null) {
            return;
        }
    Label_0104_Outer:
        while (true) {
            while (true) {
                long bannerAdRefreshSeconds = 0L;
                Label_0206: {
                    while (true) {
                        synchronized (this.d) {
                            this.d[v.l.a()] = appLovinSdkSettings.isVerboseLoggingEnabled();
                            bannerAdRefreshSeconds = appLovinSdkSettings.getBannerAdRefreshSeconds();
                            if (bannerAdRefreshSeconds < 0L) {
                                break Label_0206;
                            }
                            if (bannerAdRefreshSeconds > 0L) {
                                final long max = Math.max(30L, bannerAdRefreshSeconds);
                                this.d[v.E.a()] = max;
                                this.d[v.D.a()] = true;
                                this.d[v.N.a()] = appLovinSdkSettings.getAutoPreloadSizes();
                                if (appLovinSdkSettings instanceof t) {
                                    for (final Map.Entry<x, V> entry : ((t)appLovinSdkSettings).b().entrySet()) {
                                        this.d[entry.getKey().a()] = entry.getValue();
                                    }
                                    break;
                                }
                                break;
                            }
                        }
                        final long max = 0L;
                        continue Label_0104_Outer;
                    }
                }
                if (bannerAdRefreshSeconds == -1L) {
                    this.d[v.D.a()] = false;
                    continue;
                }
                continue;
            }
        }
    }
    // monitorexit(array)
    
    void a(final JSONObject jsonObject) {
        this.b.d("SettingsManager", "Loading settings from JSON array...");
        final Object[] d = this.d;
        // monitorenter(d)
        try {
            final Iterator keys = jsonObject.keys();
            while (keys.hasNext()) {
                final String s = keys.next();
                if (s != null && s.length() > 0) {
                    try {
                        final x a = a(s);
                        if (a == null) {
                            goto Label_0181;
                        }
                        final Object a2 = a(s, jsonObject, a.c());
                        this.d[a.a()] = a2;
                        this.b.d("SettingsManager", "Setting update: " + a.b() + " set to \"" + a2 + "\"");
                    }
                    catch (JSONException ex) {
                        this.b.e("SettingsManager", "Unable to parse JSON settings array", (Throwable)ex);
                    }
                    catch (Throwable t) {
                        this.b.e("SettingsManager", "Unable to convert setting object ", t);
                    }
                }
            }
        }
        finally {}
    }
    // monitorexit(d)
    
    void b() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        while (true) {
            this.b.i("SettingsManager", "Saving settings with the application...");
            final String e = this.e();
            final SharedPreferences$Editor edit = this.a().edit();
            Label_0302: {
                Object o = null;
                while (true) {
                    String string = null;
                    Label_0161: {
                        synchronized (this.d) {
                            for (final x x : v.a()) {
                                o = this.d[x.a()];
                                if (o != null) {
                                    string = e + x.b();
                                    if (!(o instanceof Boolean)) {
                                        break Label_0161;
                                    }
                                    edit.putBoolean(string, (boolean)o);
                                }
                            }
                            break Label_0302;
                        }
                    }
                    if (o instanceof Float) {
                        edit.putFloat(string, (float)o);
                        continue;
                    }
                    if (o instanceof Integer) {
                        edit.putInt(string, (int)o);
                        continue;
                    }
                    if (o instanceof Long) {
                        edit.putLong(string, (long)o);
                        continue;
                    }
                    if (o instanceof String) {
                        edit.putString(string, (String)o);
                        continue;
                    }
                    break;
                }
                throw new RuntimeException("SDK Error: unknown value: " + ((String)o).getClass());
            }
            // monitorexit(array)
            edit.commit();
            this.b.d("SettingsManager", "Settings saved with the application.");
        }
    }
    
    void c() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        while (true) {
            this.b.i("SettingsManager", "Loading settings saved with the application...");
            final String e = this.e();
            final SharedPreferences a = this.a();
            Label_0363: {
                Object c = null;
                while (true) {
                    String string = null;
                    Label_0209: {
                        synchronized (this.d) {
                            for (final x x : v.a()) {
                                try {
                                    string = e + x.b();
                                    c = x.c();
                                    if (!(c instanceof Boolean)) {
                                        break Label_0209;
                                    }
                                    final Serializable s = a.getBoolean(string, (boolean)c);
                                    this.d[x.a()] = s;
                                }
                                catch (Exception ex) {
                                    this.b.e("SettingsManager", "Unable to load \"" + x.b() + "\"", ex);
                                }
                            }
                            break Label_0363;
                        }
                    }
                    if (c instanceof Float) {
                        final Serializable s = a.getFloat(string, (float)c);
                        continue;
                    }
                    if (c instanceof Integer) {
                        final Serializable s = a.getInt(string, (int)c);
                        continue;
                    }
                    if (c instanceof Long) {
                        final Serializable s = a.getLong(string, (long)c);
                        continue;
                    }
                    if (c instanceof String) {
                        final Serializable s = a.getString(string, (String)c);
                        continue;
                    }
                    break;
                }
                throw new RuntimeException("SDK Error: unknown value: " + ((String)c).getClass());
            }
        }
        // monitorexit(array)
    }
    
    void d() {
        synchronized (this.d) {
            Arrays.fill(this.d, null);
            // monitorexit(this.d)
            final SharedPreferences$Editor edit = this.a().edit();
            edit.clear();
            edit.commit();
        }
    }
}
