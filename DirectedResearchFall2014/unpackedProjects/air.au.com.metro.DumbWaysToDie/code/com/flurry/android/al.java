package com.flurry.android;

import android.content.*;
import android.os.*;
import android.text.*;

final class al extends az
{
    private static final String d;
    
    static {
        d = be.class.getSimpleName();
    }
    
    @Override
    protected final Bundle a(final Context context) {
        Bundle p = bp.p(context);
        if (TextUtils.isEmpty((CharSequence)p.getString("com.mobclix.APPLICATION_ID"))) {
            db.d(al.d, "The meta-data should include not empty value for com.mobclix.APPLICATION_ID key in AndroidManifest.xml");
            p = null;
        }
        return p;
    }
    
    @Override
    protected final ao a(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit, final Bundle bundle) {
        if (context == null || flurryAds == null || cz == null || adUnit == null || bundle == null) {
            return null;
        }
        return new cg(context, flurryAds, cz, adUnit);
    }
    
    @Override
    protected final p a(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative adCreative, final Bundle bundle) {
        if (context == null || flurryAds == null || cz == null || adCreative == null || bundle == null) {
            return null;
        }
        return new aw(context, flurryAds, cz, adCreative);
    }
    
    @Override
    protected final av b() {
        return new av("mobclix", "3.2.0", "com.mobclix.android.sdk.MobclixFullScreenAdView");
    }
    
    @Override
    protected final av c() {
        return new av("mobclix", "3.2.0", "com.mobclix.android.sdk.MobclixAdView");
    }
}
