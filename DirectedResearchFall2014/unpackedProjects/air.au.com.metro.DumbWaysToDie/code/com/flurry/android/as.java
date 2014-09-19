package com.flurry.android;

import java.util.*;
import android.content.*;
import android.os.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.inmobi.androidsdk.*;
import android.util.*;

final class as implements IMAdListener
{
    private /* synthetic */ an bM;
    
    as(final an bm) {
        this.bM = bm;
        super();
    }
    
    public final void onAdRequestCompleted(final IMAdView imAdView) {
        this.bM.onAdFilled(Collections.emptyMap());
        this.bM.onAdShown(Collections.emptyMap());
        Log.d(an.d, "InMobi imAdView ad request completed.");
    }
    
    public final void onAdRequestFailed(final IMAdView imAdView, final IMAdRequest$ErrorCode imAdRequest$ErrorCode) {
        this.bM.onRenderFailed(Collections.emptyMap());
        Log.d(an.d, "InMobi imAdView ad request failed.");
    }
    
    public final void onDismissAdScreen(final IMAdView imAdView) {
        this.bM.onAdClosed(Collections.emptyMap());
        Log.d(an.d, "InMobi imAdView dismiss ad.");
    }
    
    public final void onLeaveApplication(final IMAdView imAdView) {
        Log.d(an.d, "InMobi onLeaveApplication");
    }
    
    public final void onShowAdScreen(final IMAdView imAdView) {
        this.bM.onAdClicked(Collections.emptyMap());
        Log.d(an.d, "InMobi imAdView ad shown.");
    }
}
