package com.flurry.android;

import android.content.*;

final class cp extends bk
{
    private /* synthetic */ Context eO;
    private /* synthetic */ String eP;
    private /* synthetic */ ac eQ;
    private /* synthetic */ FlurryAds ee;
    
    cp(final FlurryAds ee, final Context eo, final String ep, final ac eq) {
        this.ee = ee;
        this.eO = eo;
        this.eP = ep;
        this.eQ = eq;
        super();
    }
    
    @Override
    public final void a() {
        this.ee.a(this.eO, this.eP, this.eQ.h());
    }
}
