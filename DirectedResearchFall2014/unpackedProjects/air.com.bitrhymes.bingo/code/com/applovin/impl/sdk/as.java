package com.applovin.impl.sdk;

import org.json.*;

abstract class as extends an implements l
{
    private int a;
    private final l b;
    private x c;
    
    private as(final String s, final int a, final AppLovinSdkImpl appLovinSdkImpl) {
        super(s, appLovinSdkImpl);
        this.c = null;
        this.a = a;
        this.b = new at(this, appLovinSdkImpl, s);
    }
    
    as(final String s, final x x, final AppLovinSdkImpl appLovinSdkImpl) {
        this(s, (int)appLovinSdkImpl.a(x), appLovinSdkImpl);
    }
    
    private void b() {
        if (this.c != null) {
            final y settingsManager = this.e.getSettingsManager();
            settingsManager.a(this.c, this.c.c());
            settingsManager.b();
        }
    }
    
    @Override
    public void a(final int n) {
    }
    
    protected abstract void a(final k p0, final l p1);
    
    public void a(final x c) {
        this.c = c;
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
    }
    
    @Override
    public void run() {
        this.a(this.e.getConnectionManager(), this.b);
    }
}
