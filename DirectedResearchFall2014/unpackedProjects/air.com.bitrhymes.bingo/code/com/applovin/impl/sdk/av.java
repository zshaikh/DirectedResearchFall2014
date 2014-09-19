package com.applovin.impl.sdk;

import android.content.*;

class av extends an
{
    av(final AppLovinSdkImpl appLovinSdkImpl) {
        super("TrackConversion", appLovinSdkImpl);
    }
    
    private String a(final String str) {
        final StringBuffer sb = new StringBuffer();
        sb.append(m.b("conv", this.e));
        sb.append("?");
        sb.append("did=").append((String)this.e.a(v.c)).append("&");
        sb.append("aid=").append(str);
        return sb.toString();
    }
    
    protected String b() {
        return (String)this.e.a(v.d);
    }
    
    protected void c() {
        final SharedPreferences$Editor edit = this.e.getSettingsManager().a().edit();
        edit.putBoolean("conversion_tracked", true);
        edit.commit();
    }
    
    @Override
    public void run() {
        final String b = this.b();
        this.f.d(this.d, "Tracking conversion for advertiser \"" + b + "\" and device \"" + (String)this.e.a(v.c) + "\"...");
        final aw aw = new aw(this, "RepeatTrackConversion", v.j, this.e, b);
        aw.a(v.n);
        aw.run();
    }
}
