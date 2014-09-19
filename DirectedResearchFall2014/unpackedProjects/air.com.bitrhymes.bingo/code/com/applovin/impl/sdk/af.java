package com.applovin.impl.sdk;

import org.json.*;

class af extends as
{
    final /* synthetic */ ae a;
    
    af(final ae a, final String s, final x x, final AppLovinSdkImpl appLovinSdkImpl) {
        this.a = a;
        super(s, x, appLovinSdkImpl);
    }
    
    @Override
    public void a(final int n) {
        this.a.a(n);
    }
    
    @Override
    protected void a(final k k, final l l) {
        k.a(this.a.b().toString(), l);
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
        if (n == 200) {
            this.a.a(jsonObject);
            return;
        }
        this.a.a(n);
    }
}
