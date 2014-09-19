package com.flurry.android;

import java.util.*;
import com.inmobi.androidsdk.*;
import android.content.*;
import android.os.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import android.util.*;

final class as implements IMAdListener
{
    private /* synthetic */ an bM;
    
    as(final an bm) {
        this.bM = bm;
        super();
    }
    
    @Override
    public final void onAdRequestCompleted(final IMAdView imAdView) {
        this.bM.onAdFilled(Collections.emptyMap());
        this.bM.onAdShown(Collections.emptyMap());
        Log.d(an.d, "InMobi imAdView ad request completed.");
    }
    
    @Override
    public final void onAdRequestFailed(final IMAdView imAdView, final IMAdRequest.ErrorCode errorCode) {
        this.bM.onRenderFailed(Collections.emptyMap());
        Log.d(an.d, "InMobi imAdView ad request failed.");
    }
    
    @Override
    public final void onDismissAdScreen(final IMAdView imAdView) {
        this.bM.onAdClosed(Collections.emptyMap());
        Log.d(an.d, "InMobi imAdView dismiss ad.");
    }
    
    @Override
    public final void onLeaveApplication(final IMAdView imAdView) {
        Log.d(an.d, "InMobi onLeaveApplication");
    }
    
    @Override
    public final void onShowAdScreen(final IMAdView imAdView) {
        this.bM.onAdClicked(Collections.emptyMap());
        Log.d(an.d, "InMobi imAdView ad shown.");
    }
}
