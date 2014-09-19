package com.flurry.android;

import android.content.*;
import android.os.*;
import android.text.*;

final class be extends az
{
    private static final String d;
    
    static {
        d = be.class.getSimpleName();
    }
    
    @Override
    protected final Bundle a(final Context context) {
        Bundle p = bp.p(context);
        if (TextUtils.isEmpty((CharSequence)p.getString("com.flurry.jumptap.PUBLISHER_ID"))) {
            db.d(be.d, "The meta-data should include not empty value for com.flurry.jumptap.PUBLISHER_ID key in AndroidManifest.xml");
            p = null;
        }
        return p;
    }
    
    @Override
    protected final ao a(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit, final Bundle bundle) {
        if (context == null || flurryAds == null || cz == null || adUnit == null || bundle == null) {
            return null;
        }
        return new bo(context, flurryAds, cz, adUnit, bundle);
    }
    
    @Override
    protected final p a(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative adCreative, final Bundle bundle) {
        if (context == null || flurryAds == null || cz == null || adCreative == null || bundle == null) {
            return null;
        }
        return new e(context, flurryAds, cz, adCreative, bundle);
    }
    
    @Override
    protected final av b() {
        return new av("JTAdTag", "1.1.10.4", "com.jumptap.adtag.JtAdInterstitial");
    }
    
    @Override
    protected final av c() {
        return new av("JTAdTag", "1.1.10.4", "com.jumptap.adtag.JtAdView");
    }
}
