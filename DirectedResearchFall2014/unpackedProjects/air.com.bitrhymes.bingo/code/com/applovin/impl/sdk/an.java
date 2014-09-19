package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import android.content.*;

abstract class an implements Runnable
{
    protected final String d;
    protected final AppLovinSdkImpl e;
    protected final AppLovinLogger f;
    protected final Context g;
    
    an(final String s, final AppLovinSdkImpl e) {
        super();
        if (e == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.e = e;
        String simpleName;
        if (s != null) {
            simpleName = s;
        }
        else {
            simpleName = this.getClass().getSimpleName();
        }
        this.d = simpleName;
        this.f = e.getLogger();
        this.g = e.getApplicationContext();
    }
    
    void a() {
    }
    
    protected void a(final an an, final am am) {
        this.e.a().a(an, am);
    }
    
    String e() {
        return this.d;
    }
    
    protected n f() {
        return new n(this.e);
    }
}
