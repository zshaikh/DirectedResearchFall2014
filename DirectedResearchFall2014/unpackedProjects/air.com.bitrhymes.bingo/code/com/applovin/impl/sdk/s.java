package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import android.util.*;
import org.json.*;
import android.content.*;
import java.util.*;

class s
{
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private final Object c;
    private final Collection d;
    private String e;
    private long f;
    
    s(final AppLovinSdkImpl a) {
        super();
        this.c = new Object();
        this.d = new HashSet();
        this.f = 0L;
        this.a = a;
        this.b = a.getLogger();
        this.e = this.f().getString("SessionLinkIdentifier", "NO_LINK_ID_SET");
    }
    
    private HashSet a(final String s) {
        final JSONArray jsonArray = new JSONArray(s);
        final HashSet<AppLovinEvent> set = new HashSet<AppLovinEvent>();
        for (int i = 0; i < jsonArray.length(); ++i) {
            set.add(AppLovinEvent.a(jsonArray.getJSONObject(i)));
        }
        return set;
    }
    
    protected static JSONArray a(final Collection collection) {
        final JSONArray jsonArray;
        synchronized (collection) {
            jsonArray = new JSONArray();
            final Iterator<AppLovinEvent> iterator = collection.iterator();
            while (iterator.hasNext()) {
                jsonArray.put((Object)iterator.next().toJson());
            }
        }
        // monitorexit(collection)
        return jsonArray;
    }
    
    private SharedPreferences f() {
        return this.a.getSettingsManager().a();
    }
    
    private void g() {
        boolean b;
        if (System.currentTimeMillis() > this.f + 1000L * (long)this.a.a(v.P)) {
            b = true;
        }
        else {
            b = false;
        }
        if (b && (boolean)this.a.a(v.O)) {
            this.f = System.currentTimeMillis();
            this.c();
        }
    }
    
    private void h() {
        synchronized (this.c) {
            try {
                final SharedPreferences$Editor edit = this.f().edit();
                edit.putString("ALQueuedEvents", a(this.d).toString());
                edit.commit();
            }
            catch (JSONException ex) {
                Log.e("EventManager", "Generated invalid JSON while trying to save events.", (Throwable)ex);
            }
        }
    }
    
    public Collection a() {
        synchronized (this.c) {
            return new ArrayList(this.d);
        }
    }
    
    public void a(final AppLovinEvent appLovinEvent) {
        this.a(appLovinEvent, true);
    }
    
    public void a(final AppLovinEvent appLovinEvent, final boolean b) {
        if (appLovinEvent != null) {
            synchronized (this.c) {
                if (this.d.size() < (int)this.a.a(v.R)) {
                    appLovinEvent.setSessionLinkIdentifier(this.e);
                    this.d.add(appLovinEvent);
                    this.h();
                    this.b.d("EventManager", "Now tracking event: " + appLovinEvent);
                }
                else {
                    Log.e("EventManager", "Could not track event: maximum cache size exceeded.");
                }
                // monitorexit(this.c)
                this.b.d("EventManager", "Tracked: " + appLovinEvent);
                if (b) {
                    this.g();
                }
                return;
            }
        }
        this.b.d("EventManager", "Disregarded tracking of null event.");
    }
    
    protected void b() {
        synchronized (this.c) {
            try {
                this.d.addAll(this.a(this.f().getString("ALQueuedEvents", "")));
            }
            catch (JSONException ex) {
                Log.e("EventManager", "Loaded invalid JSON from SharedPreferences. Clearing event cache.", (Throwable)ex);
                this.d();
            }
        }
    }
    
    public void b(final Collection collection) {
        synchronized (this.c) {
            this.d.removeAll(collection);
            this.h();
        }
    }
    
    protected void c() {
        this.a.a().a(new ab(this.a), am.b, 0L);
    }
    
    protected void d() {
        synchronized (this.c) {
            this.d.clear();
            this.h();
        }
    }
    
    protected String e() {
        synchronized (this.c) {
            this.e = UUID.randomUUID().toString();
            this.f().edit().putString("SessionLinkIdentifier", this.e).commit();
            return this.e;
        }
    }
}
