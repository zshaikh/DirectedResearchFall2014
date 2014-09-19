package com.flurry.android;

import android.content.*;
import android.view.*;

final class cr extends bk
{
    private /* synthetic */ Context eO;
    private /* synthetic */ FlurryAds ee;
    
    cr(final FlurryAds ee, final Context eo) {
        this.ee = ee;
        this.eO = eo;
        super();
    }
    
    @Override
    public final void a() {
        this.ee.e(this.ee.a(this.eO, "", null, true, FlurryAdSize.BANNER_BOTTOM));
    }
}
