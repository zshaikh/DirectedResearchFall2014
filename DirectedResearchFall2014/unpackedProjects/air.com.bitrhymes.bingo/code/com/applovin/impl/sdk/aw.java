package com.applovin.impl.sdk;

import org.json.*;
import android.content.*;

class aw extends as
{
    final /* synthetic */ String a;
    final /* synthetic */ av b;
    
    aw(final av b, final String s, final x x, final AppLovinSdkImpl appLovinSdkImpl, final String a) {
        this.b = b;
        this.a = a;
        super(s, x, appLovinSdkImpl);
    }
    
    @Override
    public void a(final int i) {
        if (i > 400) {
            this.b.c();
        }
        this.f.e(this.d, "Unable to track conversion: server responded with " + i);
    }
    
    @Override
    protected void a(final k k, final l l) {
        k.a(this.b.a(this.a), l);
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
        this.b.c();
    }
}
