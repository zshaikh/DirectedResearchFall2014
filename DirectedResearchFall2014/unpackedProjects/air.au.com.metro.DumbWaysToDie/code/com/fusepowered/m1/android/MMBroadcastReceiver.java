package com.fusepowered.m1.android;

import android.content.*;

@Deprecated
public class MMBroadcastReceiver extends BroadcastReceiver
{
    public static final String ACTION_AD_SINGLE_TAP = "millennialmedia.action.ACTION_AD_SINGLE_TAP";
    public static final String ACTION_DISPLAY_STARTED = "millennialmedia.action.ACTION_DISPLAY_STARTED";
    public static final String ACTION_FETCH_FAILED = "millennialmedia.action.ACTION_FETCH_FAILED";
    public static final String ACTION_FETCH_STARTED_CACHING = "millennialmedia.action.ACTION_FETCH_STARTED_CACHING";
    public static final String ACTION_FETCH_SUCCEEDED = "millennialmedia.action.ACTION_FETCH_SUCCEEDED";
    public static final String ACTION_GETAD_FAILED = "millennialmedia.action.ACTION_GETAD_FAILED";
    public static final String ACTION_GETAD_SUCCEEDED = "millennialmedia.action.ACTION_GETAD_SUCCEEDED";
    public static final String ACTION_INTENT_STARTED = "millennialmedia.action.ACTION_INTENT_STARTED";
    public static final String ACTION_OVERLAY_CLOSED = "millennialmedia.action.ACTION_OVERLAY_CLOSED";
    public static final String ACTION_OVERLAY_OPENED = "millennialmedia.action.ACTION_OVERLAY_OPENED";
    @Deprecated
    public static final String ACTION_OVERLAY_TAP = "millennialmedia.action.ACTION_OVERLAY_TAP";
    public static final String CATEGORY_SDK = "millennialmedia.category.CATEGORY_SDK";
    
    public static IntentFilter createIntentFilter() {
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addCategory("millennialmedia.category.CATEGORY_SDK");
        intentFilter.addAction("millennialmedia.action.ACTION_DISPLAY_STARTED");
        intentFilter.addAction("millennialmedia.action.ACTION_FETCH_FAILED");
        intentFilter.addAction("millennialmedia.action.ACTION_FETCH_SUCCEEDED");
        intentFilter.addAction("millennialmedia.action.ACTION_FETCH_STARTED_CACHING");
        intentFilter.addAction("millennialmedia.action.ACTION_GETAD_FAILED");
        intentFilter.addAction("millennialmedia.action.ACTION_GETAD_SUCCEEDED");
        intentFilter.addAction("millennialmedia.action.ACTION_INTENT_STARTED");
        intentFilter.addAction("millennialmedia.action.ACTION_OVERLAY_CLOSED");
        intentFilter.addAction("millennialmedia.action.ACTION_OVERLAY_OPENED");
        intentFilter.addAction("millennialmedia.action.ACTION_OVERLAY_TAP");
        intentFilter.addAction("millennialmedia.action.ACTION_AD_SINGLE_TAP");
        return intentFilter;
    }
    
    public void displayStarted(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media display started.");
    }
    
    public void fetchFailure(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media fetch failed.");
    }
    
    public void fetchFinishedCaching(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media fetch finished caching.");
    }
    
    public void fetchStartedCaching(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media fetch started caching.");
    }
    
    public void getAdFailure(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media ad Failure.");
    }
    
    public void getAdSuccess(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media ad Success.");
    }
    
    public void intentStarted(final MMAd mmAd, final String str) {
        if (str != null) {
            MMSDK.Log.i("Millennial Media started intent: " + str);
        }
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final String action = intent.getAction();
        final String stringExtra = intent.getStringExtra("packageName");
        final long longExtra = intent.getLongExtra("internalId", -4L);
        if (context.getPackageName().equals(stringExtra)) {
            final long n = lcmp(longExtra, -4L);
            MMAd callingAd = null;
            if (n != 0) {
                final MMAdImpl adImplWithId = MMAdImplController.getAdImplWithId(longExtra);
                callingAd = null;
                if (adImplWithId != null) {
                    callingAd = adImplWithId.getCallingAd();
                }
            }
            final StringBuilder append = new StringBuilder().append(" @@ Intent - Ad in receiver = ");
            String string;
            if (callingAd == null) {
                string = " null";
            }
            else {
                string = callingAd.toString();
            }
            MMSDK.Log.v(append.append(string).toString());
            if (action.equals("millennialmedia.action.ACTION_OVERLAY_OPENED")) {
                this.overlayOpened(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_OVERLAY_CLOSED")) {
                this.overlayClosed(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_OVERLAY_TAP")) {
                this.overlayTap(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_AD_SINGLE_TAP")) {
                this.onSingleTap(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_DISPLAY_STARTED")) {
                this.displayStarted(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_FETCH_FAILED")) {
                this.fetchFailure(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_FETCH_SUCCEEDED")) {
                this.fetchFinishedCaching(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_FETCH_STARTED_CACHING")) {
                this.fetchStartedCaching(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_GETAD_FAILED")) {
                this.getAdFailure(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_GETAD_SUCCEEDED")) {
                this.getAdSuccess(callingAd);
                return;
            }
            if (action.equals("millennialmedia.action.ACTION_INTENT_STARTED")) {
                this.intentStarted(callingAd, intent.getStringExtra("intentType"));
            }
        }
    }
    
    public void onSingleTap(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media ad Tap.");
    }
    
    public void overlayClosed(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media overlay closed.");
    }
    
    public void overlayOpened(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media overlay opened.");
    }
    
    @Deprecated
    public void overlayTap(final MMAd mmAd) {
        MMSDK.Log.i("Millennial Media overlay Tap.");
    }
}
