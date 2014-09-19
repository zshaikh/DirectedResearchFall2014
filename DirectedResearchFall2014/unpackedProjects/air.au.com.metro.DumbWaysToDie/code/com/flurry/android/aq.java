package com.flurry.android;

import android.content.*;

final class aq extends ao
{
    public aq(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        super(context, flurryAds, cz, adUnit);
    }
    
    @Override
    public final void f() {
        if (!this.C().a(this.getContext(), new Intent(this.getContext(), (Class)FlurryFullscreenTakeoverActivity.class), this.E().getAdSpace().toString())) {
            db.d(aq.d, "Unable to launch FlurryFullscreenTakeoverActivity. Fix by declaring this Activity in your AndroidManifest.xml");
        }
    }
}
