package com.applovin.impl.sdk;

import android.content.*;
import android.os.*;
import com.applovin.sdk.*;
import android.util.*;

public class AppLovinSdkImpl extends AppLovinSdk
{
    public static final String FULL_VERSION = "5.1.1-5.1.1";
    public static final String IMPL_VERSION = "5.1.1";
    private String a;
    private AppLovinSdkSettings b;
    private Context c;
    private AppLovinLogger d;
    private s e;
    private al f;
    private y g;
    private k h;
    private aa i;
    private bd j;
    private i k;
    private b l;
    private AppLovinEventServiceImpl m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    
    public AppLovinSdkImpl() {
        super();
        this.n = true;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
    }
    
    private static boolean g() {
        return !Build$VERSION.RELEASE.startsWith("1.") && !Build$VERSION.RELEASE.startsWith("2.0") && !Build$VERSION.RELEASE.startsWith("2.1");
    }
    
    al a() {
        return this.f;
    }
    
    Object a(final x x) {
        return this.g.a(x);
    }
    
    void a(final boolean o) {
        this.n = false;
        this.o = o;
        this.p = true;
    }
    
    aa b() {
        return this.i;
    }
    
    boolean c() {
        return this.n;
    }
    
    boolean d() {
        return this.p;
    }
    
    void e() {
        this.n = true;
        this.f.a(new ak(this), 0L);
    }
    
    void f() {
        this.g.d();
        this.g.b();
        this.i.a();
    }
    
    @Override
    public AppLovinAdService getAdService() {
        return this.l;
    }
    
    @Override
    public Context getApplicationContext() {
        return this.c;
    }
    
    public k getConnectionManager() {
        return this.h;
    }
    
    public s getEventManager() {
        return this.e;
    }
    
    @Override
    public AppLovinEventService getEventService() {
        return this.m;
    }
    
    @Override
    public AppLovinLogger getLogger() {
        return this.d;
    }
    
    @Override
    public String getSdkKey() {
        return this.a;
    }
    
    @Override
    public AppLovinSdkSettings getSettings() {
        return this.b;
    }
    
    public y getSettingsManager() {
        return this.g;
    }
    
    @Override
    public AppLovinTargetingData getTargetingData() {
        return this.k;
    }
    
    @Override
    public boolean hasCriticalErrors() {
        return this.q || this.r;
    }
    
    @Override
    protected void initialize(final String a, final AppLovinSdkSettings b, final Context c) {
        this.a = a;
        this.b = b;
        this.c = c;
        try {
            final g d = new g();
            this.d = d;
            this.g = new y(this);
            this.e = new s(this);
            this.f = new al(this);
            this.h = new k(this);
            this.i = new aa(this);
            this.j = new bd(this);
            this.l = new b(this);
            this.m = new AppLovinEventServiceImpl(this);
            this.k = new i(this);
            if (!g()) {
                this.q = true;
                Log.e("AppLovinSdk", "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8");
            }
            if (a == null || a.length() < 1) {
                this.r = true;
                Log.e("AppLovinSdk", "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml.");
            }
            if (!this.hasCriticalErrors()) {
                d.a(this.e);
                d.a(this.g);
                if (b instanceof t) {
                    d.a(((t)b).a());
                }
                this.g.c();
                if (this.g.a(v.b)) {
                    this.g.a(b);
                    this.g.a(v.b, false);
                    this.g.b();
                }
                this.e();
                return;
            }
            this.a(false);
        }
        catch (Throwable t) {
            Log.e("AppLovinSdk", "Failed to load AppLovin SDK, ad serving will be disabled", t);
            this.a(false);
        }
    }
    
    @Override
    public void initializeSdk() {
    }
    
    @Override
    public boolean isEnabled() {
        return this.o;
    }
    
    @Override
    public void setPluginVersion(final String s) {
        if (s == null) {
            throw new IllegalArgumentException("No version specified");
        }
        this.g.a(v.J, s);
        this.g.b();
    }
}
