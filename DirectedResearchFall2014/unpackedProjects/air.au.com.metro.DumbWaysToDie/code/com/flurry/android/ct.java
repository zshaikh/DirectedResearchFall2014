package com.flurry.android;

import android.content.*;

final class ct extends bk
{
    private /* synthetic */ Context eO;
    private /* synthetic */ String eR;
    
    ct(final FlurryAds flurryAds, final Context eo, final String er) {
        this.eO = eo;
        this.eR = er;
        super();
    }
    
    @Override
    public final void a() {
        FlurryAds.e(this.eO, this.eR);
    }
}
