package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import android.util.*;

class g implements AppLovinLogger
{
    private s a;
    private y b;
    private h c;
    
    void a(final h c) {
        this.c = c;
    }
    
    void a(final s a) {
        this.a = a;
    }
    
    void a(final y b) {
        this.b = b;
    }
    
    protected boolean a() {
        return this.b != null && (boolean)this.b.a(v.l);
    }
    
    @Override
    public void d(final String s, final String s2) {
        if (this.a()) {
            Log.d("AppLovinSdk", "[" + s + "] " + s2);
        }
        if (this.c != null) {
            this.c.a("DEBUG  [" + s + "] " + s2);
        }
    }
    
    @Override
    public void e(final String s, final String s2) {
        this.e(s, s2, null);
    }
    
    @Override
    public void e(final String s, final String s2, final Throwable t) {
        if (this.a()) {
            Log.e("AppLovinSdk", "[" + s + "] " + s2, t);
        }
        if (this.a != null) {
            this.a.a(AppLovinEvent.a(s, s2, t), false);
        }
        if (this.c != null) {
            final h c = this.c;
            final StringBuilder append = new StringBuilder().append("ERROR  [").append(s).append("] ").append(s2);
            String string;
            if (t != null) {
                string = ": " + t.getMessage();
            }
            else {
                string = "";
            }
            c.a(append.append(string).toString());
        }
    }
    
    @Override
    public void i(final String s, final String s2) {
        if (this.a()) {
            Log.i("AppLovinSdk", "[" + s + "] " + s2);
        }
        if (this.c != null) {
            this.c.a("INFO  [" + s + "] " + s2);
        }
    }
    
    @Override
    public void userError(final String s, final String s2) {
        this.userError(s, s2, null);
    }
    
    @Override
    public void userError(final String s, final String s2, final Throwable t) {
        Log.e("AppLovinSdk", "[" + s + "] " + s2, t);
        if (this.a != null) {
            this.a.a(AppLovinEvent.b(s, s2, t), false);
        }
        if (this.c != null) {
            final h c = this.c;
            final StringBuilder append = new StringBuilder().append("USER  [").append(s).append("] ").append(s2);
            String string;
            if (t != null) {
                string = ": " + t.getMessage();
            }
            else {
                string = "";
            }
            c.a(append.append(string).toString());
        }
    }
    
    @Override
    public void w(final String s, final String s2) {
        this.w(s, s2, null);
    }
    
    @Override
    public void w(final String s, final String s2, final Throwable t) {
        if (this.a()) {
            Log.w("AppLovinSdk", "[" + s + "] " + s2, t);
        }
        if (this.c != null) {
            this.c.a("WARN  [" + s + "] " + s2);
        }
    }
}
