package com.flurry.android;

final class cq extends bk
{
    private /* synthetic */ FlurryAds ee;
    
    cq(final FlurryAds ee) {
        this.ee = ee;
        super();
    }
    
    @Override
    public final void a() {
        this.ee.m("/postAdLog.do");
    }
}
