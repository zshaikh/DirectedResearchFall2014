package com.flurry.android;

import android.content.*;
import android.os.*;
import java.util.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.google.ads.*;
import android.text.*;
import android.util.*;

final class ai extends AdNetworkView
{
    private static final String bA;
    private static final int bB;
    private static final Map<AdSize, AdSize> bC;
    private final boolean P;
    private final String bD;
    private final String g;
    
    static {
        bA = ai.class.getSimpleName();
        bB = AdSize.BANNER.getWidth();
        final HashMap<AdSize, AdSize> m = new HashMap<AdSize, AdSize>();
        m.put(new AdSize(ai.bB, AdSize.IAB_LEADERBOARD.getHeight()), AdSize.IAB_LEADERBOARD);
        m.put(new AdSize(ai.bB, AdSize.IAB_BANNER.getHeight()), AdSize.IAB_BANNER);
        m.put(new AdSize(ai.bB, AdSize.BANNER.getHeight()), AdSize.BANNER);
        m.put(new AdSize(ai.bB, AdSize.IAB_MRECT.getHeight()), AdSize.IAB_MRECT);
        bC = Collections.unmodifiableMap((Map<?, ?>)m);
    }
    
    public ai(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative adCreative, final Bundle bundle) {
        super(context, flurryAds, cz, adCreative);
        this.g = bundle.getString("com.flurry.admob.MY_AD_UNIT_ID");
        this.bD = bundle.getString("com.flurry.admob.MYTEST_AD_DEVICE_ID");
        this.P = bundle.getBoolean("com.flurry.admob.test");
        this.setFocusable(true);
    }
    
    private static AdSize a(final int n) {
        final Set<AdSize> keySet = ai.bC.keySet();
        return ai.bC.get(new AdSize(ai.bB, n).findBestSize((AdSize[])keySet.toArray(new AdSize[keySet.size()])));
    }
    
    @Override
    public final void initLayout(final Context context) {
        final int width = this.getAdCreative().getWidth();
        final int height = this.getAdCreative().getHeight();
        final DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int n = (int)(displayMetrics.heightPixels / displayMetrics.density);
        int n2 = (int)(displayMetrics.widthPixels / displayMetrics.density);
        if (width > 0 && width <= n2) {
            n2 = width;
        }
        if (height > 0 && height <= n) {
            n = height;
        }
        AdSize obj = new AdSize(n2, n).findBestSize(AdSize.IAB_LEADERBOARD, AdSize.IAB_BANNER, AdSize.BANNER, AdSize.IAB_MRECT);
        if (obj == null && width == 0 && height != 0) {
            obj = a(height);
        }
        if (obj == null) {
            db.d(ai.bA, "Could not find Admob AdSize that matches {width = " + width + ", height " + height + "}");
            obj = a(height);
        }
        db.c(ai.bA, "Determined Admob AdSize as " + obj + " that best matches {width = " + width + ", height = " + height + "}");
        final AdView adView = new AdView((Activity)context, obj, this.g);
        adView.setAdListener(new ae(this));
        this.setGravity(17);
        this.addView((View)adView, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(obj.getWidthInPixels(context), obj.getHeightInPixels(context)));
        final AdRequest adRequest = new AdRequest();
        if (this.P) {
            db.c(ai.bA, "Admob AdView set to Test Mode.");
            adRequest.addTestDevice(AdRequest.TEST_EMULATOR);
            if (!TextUtils.isEmpty((CharSequence)this.bD)) {
                adRequest.addTestDevice(this.bD);
            }
        }
        adView.loadAd(adRequest);
    }
}
