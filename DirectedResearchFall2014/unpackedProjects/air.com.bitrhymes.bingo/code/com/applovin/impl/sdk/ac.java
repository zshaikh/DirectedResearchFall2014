package com.applovin.impl.sdk;

import org.json.*;
import java.util.*;

class ac extends as
{
    final /* synthetic */ JSONObject a;
    final /* synthetic */ Collection b;
    final /* synthetic */ ab c;
    
    ac(final ab c, final String s, final x x, final AppLovinSdkImpl appLovinSdkImpl, final JSONObject a, final Collection b) {
        this.c = c;
        this.a = a;
        this.b = b;
        super(s, x, appLovinSdkImpl);
    }
    
    @Override
    public void a(final int n) {
        m.a(n, this.e);
    }
    
    @Override
    protected void a(final k k, final l l) {
        k.b(m.a("device", this.e), this.a, l);
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
        this.c.a(jsonObject, this.b);
    }
}
