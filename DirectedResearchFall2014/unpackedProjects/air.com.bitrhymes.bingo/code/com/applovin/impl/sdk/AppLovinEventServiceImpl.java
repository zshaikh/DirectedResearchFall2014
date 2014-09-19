package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import android.content.*;

public class AppLovinEventServiceImpl implements AppLovinEventService
{
    public static final String KEY_LAST_SESSION_TS = "ALEventServicePauseTS";
    public static final String TAG = "EventServiceImpl";
    private AppLovinSdkImpl a;
    private AppLovinLogger b;
    private Object c;
    private s d;
    
    AppLovinEventServiceImpl(final AppLovinSdkImpl a) {
        super();
        this.c = new Object();
        this.a = a;
        this.b = a.getLogger();
        this.d = a.getEventManager();
    }
    
    private void a() {
        this.b.d("EventServiceImpl", "Starting new user session...");
        this.d.e();
        final long currentTimeMillis = System.currentTimeMillis();
        this.b(currentTimeMillis);
        this.d.a(AppLovinEvent.a("start", currentTimeMillis));
    }
    
    private void a(final long lng) {
        synchronized (this.c) {
            this.b.d("EventServiceImpl", "Closing old session from ts: " + lng);
            this.d.a(AppLovinEvent.a("end", lng));
            this.b(-1L);
        }
    }
    
    private SharedPreferences b() {
        return this.a.getSettingsManager().a();
    }
    
    private void b(final long n) {
        final SharedPreferences$Editor edit = this.b().edit();
        edit.putLong("ALEventServicePauseTS", n);
        edit.commit();
    }
    
    @Override
    public void trackRevenueEvent(final String s, final double n, final String s2) {
        this.d.a(AppLovinEvent.a(s, n, s2));
    }
    
    @Override
    public void trackSessionEnd() {
        this.a(System.currentTimeMillis());
    }
    
    @Override
    public void trackSessionPause() {
        this.b.d("EventServiceImpl", "Pausing current session.");
        this.b(System.currentTimeMillis());
    }
    
    @Override
    public void trackSessionStart() {
        while (true) {
            while (true) {
                synchronized (this.c) {
                    final long long1 = this.b().getLong("ALEventServicePauseTS", -1L);
                    if (System.currentTimeMillis() > long1 + 1000L * (long)this.a.a(v.Q)) {
                        final int n = 1;
                        if (n != 0) {
                            if (long1 > 0L) {
                                this.a(long1);
                            }
                            this.a();
                        }
                        else {
                            this.b.d("EventServiceImpl", "Resuming old session from ts: " + long1);
                            this.b(System.currentTimeMillis());
                        }
                        return;
                    }
                }
                final int n = 0;
                continue;
            }
        }
    }
    
    @Override
    public void uploadEvents() {
        this.d.c();
    }
}
