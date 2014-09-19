package com.flurry.android;

import android.content.*;
import android.os.*;
import android.text.*;

final class b extends az
{
    private static final String d;
    
    static {
        d = b.class.getSimpleName();
    }
    
    @Override
    protected final Bundle a(final Context context) {
        Bundle p = bp.p(context);
        if (TextUtils.isEmpty((CharSequence)p.getString("com.flurry.inmobi.MY_APP_ID"))) {
            db.d(b.d, "The meta-data should include not empty value for com.flurry.inmobi.MY_APP_ID key in AndroidManifest.xml");
            p = null;
        }
        return p;
    }
    
    @Override
    protected final ao a(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit, final Bundle bundle) {
        if (context == null || flurryAds == null || cz == null || adUnit == null || bundle == null) {
            return null;
        }
        return new u(context, flurryAds, cz, adUnit, bundle);
    }
    
    @Override
    protected final p a(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative adCreative, final Bundle bundle) {
        if (context == null || flurryAds == null || cz == null || adCreative == null || bundle == null) {
            return null;
        }
        return new an(context, flurryAds, cz, adCreative, bundle);
    }
    
    @Override
    protected final av b() {
        return new av("InMobiAndroidSDK", "3.5.0", "com.inmobi.androidsdk.IMAdInterstitial");
    }
    
    @Override
    protected final av c() {
        return new av("InMobiAndroidSDK", "3.5.0", "com.inmobi.androidsdk.IMAdView");
    }
}
