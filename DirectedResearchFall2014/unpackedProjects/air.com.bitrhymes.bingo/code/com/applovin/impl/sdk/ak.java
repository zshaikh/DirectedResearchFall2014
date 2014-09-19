package com.applovin.impl.sdk;

import android.content.*;
import com.applovin.sdk.*;

class ak implements Runnable
{
    protected final AppLovinSdkImpl a;
    protected final AppLovinLogger b;
    protected final Context c;
    
    ak(final AppLovinSdkImpl a) {
        super();
        this.a = a;
        this.c = a.getApplicationContext();
        this.b = a.getLogger();
    }
    
    private boolean c() {
        return (boolean)this.a.a(v.A);
    }
    
    private void d() {
        final String s = (String)this.a.a(v.N);
        if (s.length() > 0) {
            final String[] split = s.split(",");
            for (int length = split.length, i = 0; i < length; ++i) {
                this.a.getAdService().preloadAd(AppLovinAdSize.fromString(split[i]));
            }
        }
    }
    
    protected boolean a() {
        if (!n.a("android.permission.INTERNET", this.c)) {
            this.b.userError("TaskInitializeSdk", "Unable to enable AppLovin SDK: no android.permission.INTERNET");
            return false;
        }
        return true;
    }
    
    protected void b() {
        if (bc.a(v.o, this.a)) {
            this.a.a().a(new ab(this.a), am.b, 1500L);
        }
    }
    
    @Override
    public void run() {
        final long currentTimeMillis = System.currentTimeMillis();
        this.b.d("TaskInitializeSdk", "Initializing AppLovin SDK 5.1.1-5.1.1...");
        try {
        Label_0282_Outer:
            while (true) {
                while (true) {
                Label_0327:
                    while (true) {
                        try {
                            if (this.a()) {
                                this.a.getEventManager().b();
                                final aa b = this.a.b();
                                b.c();
                                b.c("ad_dsp_session");
                                if (this.c()) {
                                    new bd(this.a).start();
                                }
                                this.b();
                                this.d();
                                this.a.getEventService().trackSessionStart();
                                if (((String)this.a.a(v.T)).equals("unknown")) {
                                    this.a.getSettingsManager().a(v.T, "true");
                                }
                                this.a.a(true);
                            }
                            else {
                                this.a.a(false);
                            }
                            final AppLovinLogger b2 = this.b;
                            final StringBuilder append = new StringBuilder().append("AppLovin SDK 5.1.1-5.1.1 initialization ");
                            if (this.a.isEnabled()) {
                                final String str = "succeeded";
                                b2.d("TaskInitializeSdk", append.append(str).append(" in ").append(System.currentTimeMillis() - currentTimeMillis).append("ms").toString());
                                return;
                            }
                        }
                        catch (Throwable t) {
                            this.b.e("TaskInitializeSdk", "Unable to intialize SDK, disabling the SDK", t);
                            this.a.a(false);
                            final AppLovinLogger b3 = this.b;
                            final StringBuilder append2 = new StringBuilder().append("AppLovin SDK 5.1.1-5.1.1 initialization ");
                            if (this.a.isEnabled()) {
                                final String str2 = "succeeded";
                                b3.d("TaskInitializeSdk", append2.append(str2).append(" in ").append(System.currentTimeMillis() - currentTimeMillis).append("ms").toString());
                                return;
                            }
                            break Label_0327;
                        }
                        final String str = "failed";
                        continue Label_0282_Outer;
                    }
                    final String str2 = "failed";
                    continue;
                }
            }
        }
        finally {
            final AppLovinLogger b4 = this.b;
            final StringBuilder append3 = new StringBuilder().append("AppLovin SDK 5.1.1-5.1.1 initialization ");
            String str3;
            if (this.a.isEnabled()) {
                str3 = "succeeded";
            }
            else {
                str3 = "failed";
            }
            while (true) {
                b4.d("TaskInitializeSdk", append3.append(str3).append(" in ").append(System.currentTimeMillis() - currentTimeMillis).append("ms").toString());
                continue;
            }
        }
    }
}
