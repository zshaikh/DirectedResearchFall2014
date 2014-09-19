package com.tapjoy;

import android.app.*;
import android.graphics.*;
import com.tapjoy.mraid.view.*;
import android.util.*;
import android.os.*;
import android.widget.*;
import android.view.*;
import com.tapjoy.mraid.listener.*;
import android.annotation.*;
import android.webkit.*;
import android.net.*;
import android.content.*;
import java.util.*;

public class TapjoyDisplayAd
{
    private static final String TAG = "Banner Ad";
    private static int bannerHeight;
    private static int bannerWidth;
    private static TapjoyDisplayAdNotifier displayAdNotifier;
    private static String displayAdSize;
    public static Map<String, String> displayAdURLParams;
    private static String htmlData;
    private static String lastCurrencyID;
    private static TapjoyURLConnection tapjoyURLConnection;
    private Activity activityContext;
    View adView;
    private boolean autoRefresh;
    long elapsed_time;
    Bitmap lastAd;
    Timer resumeTimer;
    Timer timer;
    MraidView webView;
    
    static {
        TapjoyDisplayAd.tapjoyURLConnection = null;
    }
    
    public TapjoyDisplayAd(final Context context) {
        super();
        this.setDisplayAdSize("640x100");
        TapjoyDisplayAd.tapjoyURLConnection = new TapjoyURLConnection();
    }
    
    public static String getHtmlString() {
        return TapjoyDisplayAd.htmlData;
    }
    
    public void enableAutoRefresh(final boolean autoRefresh) {
        this.autoRefresh = autoRefresh;
    }
    
    public String getBannerAdSize() {
        return this.getDisplayAdSize();
    }
    
    public void getDisplayAd(final Activity activity, final TapjoyDisplayAdNotifier tapjoyDisplayAdNotifier) {
        TapjoyLog.i("Banner Ad", "Get Banner Ad");
        this.getDisplayAd(activity, null, tapjoyDisplayAdNotifier);
    }
    
    public void getDisplayAd(final Activity activityContext, final String s, final TapjoyDisplayAdNotifier displayAdNotifier) {
        TapjoyLog.i("Banner Ad", "Get Banner Ad, currencyID: " + s);
        TapjoyDisplayAd.displayAdNotifier = displayAdNotifier;
        if (activityContext == null) {
            Log.e("Banner Ad", "getDisplayAd must take an Activity context");
            if (TapjoyDisplayAd.displayAdNotifier != null) {
                TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponseFailed("getDisplayAd must take an Activity context");
            }
            return;
        }
        (this.activityContext = activityContext).runOnUiThread((Runnable)new Runnable() {
            @Override
            public void run() {
                TapjoyDisplayAd.this.webView = new MraidView((Context)TapjoyDisplayAd.this.activityContext);
            }
        });
        TapjoyDisplayAd.lastCurrencyID = s;
        TapjoyUtil.safePut(TapjoyDisplayAd.displayAdURLParams = TapjoyConnectCore.getURLParams(), "size", TapjoyDisplayAd.displayAdSize, true);
        TapjoyUtil.safePut(TapjoyDisplayAd.displayAdURLParams, "currency_id", s, true);
        new GetBannerAdTask().execute(new Object[] { TapjoyConnectCore.getHostURL() + "display_ad.html?", TapjoyDisplayAd.displayAdURLParams });
    }
    
    public String getDisplayAdSize() {
        return TapjoyDisplayAd.displayAdSize;
    }
    
    public void setBannerAdSize(final String displayAdSize) {
        this.setDisplayAdSize(displayAdSize);
    }
    
    public void setDisplayAdSize(final String displayAdSize) {
        TapjoyDisplayAd.displayAdSize = displayAdSize;
        if (displayAdSize.equals("320x50")) {
            TapjoyDisplayAd.bannerWidth = 320;
            TapjoyDisplayAd.bannerHeight = 50;
        }
        else {
            if (displayAdSize.equals("640x100")) {
                TapjoyDisplayAd.bannerWidth = 640;
                TapjoyDisplayAd.bannerHeight = 100;
                return;
            }
            if (displayAdSize.equals("768x90")) {
                TapjoyDisplayAd.bannerWidth = 768;
                TapjoyDisplayAd.bannerHeight = 90;
            }
        }
    }
    
    private class CheckForResumeTimer extends TimerTask
    {
        @Override
        public void run() {
            final TapjoyDisplayAd this$0 = TapjoyDisplayAd.this;
            this$0.elapsed_time += 10000L;
            TapjoyLog.i("Banner Ad", "banner elapsed_time: " + TapjoyDisplayAd.this.elapsed_time + " (" + TapjoyDisplayAd.this.elapsed_time / 1000L / 60L + "m " + TapjoyDisplayAd.this.elapsed_time / 1000L % 60L + "s)");
            if (TapjoyDisplayAd.this.adView == null) {
                this.cancel();
            }
            else {
                TapjoyLog.i("Banner Ad", "adView.isShown: " + TapjoyDisplayAd.this.adView.isShown());
                if (TapjoyDisplayAd.this.adView.isShown() && TapjoyConnectCore.getInstance() != null) {
                    TapjoyLog.i("Banner Ad", "call connect");
                    TapjoyConnectCore.getInstance().callConnect();
                    this.cancel();
                }
                if (TapjoyDisplayAd.this.elapsed_time >= 1200000L) {
                    this.cancel();
                }
            }
        }
    }
    
    private class GetBannerAdTask extends AsyncTask<Object, Void, TapjoyHttpURLResponse>
    {
        protected TapjoyHttpURLResponse doInBackground(final Object... array) {
            return TapjoyDisplayAd.tapjoyURLConnection.getResponseFromURL((String)array[0], (Map<String, String>)array[1]);
        }
        
        protected void onPostExecute(final TapjoyHttpURLResponse tapjoyHttpURLResponse) {
            if (tapjoyHttpURLResponse != null) {
                switch (tapjoyHttpURLResponse.statusCode) {
                    default: {
                        TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponseFailed("No ad to display.");
                        break;
                    }
                    case 200: {
                        TapjoyDisplayAd.htmlData = tapjoyHttpURLResponse.response;
                        if (TapjoyDisplayAd.htmlData == null) {
                            TapjoyLog.d("Banner Ad", "unexpected 200 response with no content");
                            TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponseFailed("No ad to display.");
                            return;
                        }
                        TapjoyDisplayAd.this.webView.getSettings().setJavaScriptEnabled(true);
                        TapjoyDisplayAd.this.webView.setPlacementType(MraidView.PLACEMENT_TYPE.INLINE);
                        TapjoyLog.i("Banner Ad", "response: " + tapjoyHttpURLResponse.response);
                        TapjoyDisplayAd.this.webView.setLayoutParams((ViewGroup$LayoutParams)new LinearLayout$LayoutParams(TapjoyDisplayAd.bannerWidth, TapjoyDisplayAd.bannerHeight));
                        TapjoyDisplayAd.this.webView.setInitialScale(100);
                        TapjoyDisplayAd.this.webView.setBackgroundColor(0);
                        TapjoyDisplayAd.this.webView.loadDataWithBaseURL(null, tapjoyHttpURLResponse.response, "text/html", "utf-8", null);
                        TapjoyLog.i("Banner Ad", "isMraid: " + TapjoyDisplayAd.this.webView.isMraid());
                        if (!TapjoyDisplayAd.this.webView.isMraid()) {
                            TapjoyDisplayAd.this.webView.setListener(new MraidViewListener() {
                                @Override
                                public boolean onClose() {
                                    return false;
                                }
                                
                                @TargetApi(8)
                                @Override
                                public boolean onConsoleMessage(final ConsoleMessage consoleMessage) {
                                    return false;
                                }
                                
                                @Override
                                public boolean onEventFired() {
                                    return false;
                                }
                                
                                @Override
                                public boolean onExpand() {
                                    return false;
                                }
                                
                                @Override
                                public boolean onExpandClose() {
                                    return false;
                                }
                                
                                @Override
                                public void onPageFinished(final WebView webView, final String s) {
                                }
                                
                                @Override
                                public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
                                }
                                
                                @Override
                                public boolean onReady() {
                                    return false;
                                }
                                
                                @Override
                                public void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
                                }
                                
                                @Override
                                public boolean onResize() {
                                    return false;
                                }
                                
                                @Override
                                public boolean onResizeClose() {
                                    return false;
                                }
                                
                                @Override
                                public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
                                    TapjoyLog.i("Banner Ad", "shouldOverrideUrlLoading: " + s);
                                    if (s.contains("ws.tapjoyads.com") || s.contains("tjyoutubevideo=true")) {
                                        TapjoyLog.i("Banner Ad", "Open redirecting URL = [" + s + "]");
                                        ((MraidView)webView).loadUrlStandard(s);
                                    }
                                    else {
                                        TapjoyDisplayAd.this.activityContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
                                    }
                                    if (TapjoyDisplayAd.this.resumeTimer != null) {
                                        TapjoyDisplayAd.this.resumeTimer.cancel();
                                    }
                                    TapjoyDisplayAd.this.elapsed_time = 0L;
                                    (TapjoyDisplayAd.this.resumeTimer = new Timer()).schedule(new CheckForResumeTimer(), 10000L, 10000L);
                                    return true;
                                }
                            });
                        }
                        if (TapjoyDisplayAd.this.adView != null) {
                            TapjoyDisplayAd.this.lastAd = TapjoyUtil.createBitmapFromView(TapjoyDisplayAd.this.adView);
                        }
                        TapjoyDisplayAd.this.adView = (View)TapjoyDisplayAd.this.webView;
                        TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponse(TapjoyDisplayAd.this.adView);
                        if (TapjoyDisplayAd.this.timer != null) {
                            TapjoyDisplayAd.this.timer.cancel();
                            TapjoyDisplayAd.this.timer = null;
                        }
                        if (TapjoyDisplayAd.this.autoRefresh && TapjoyDisplayAd.this.timer == null) {
                            TapjoyLog.i("Banner Ad", "will refresh banner ad in 60000ms...");
                            (TapjoyDisplayAd.this.timer = new Timer()).schedule(new RefreshTimer(), 60000L);
                            return;
                        }
                        break;
                    }
                }
            }
        }
        
        protected void onProgressUpdate(final Void... array) {
        }
    }
    
    private class RefreshTimer extends TimerTask
    {
        @Override
        public void run() {
            if (TapjoyDisplayAd.this.webView.getState().equals(MraidView.VIEW_STATE.DEFAULT.toString().toLowerCase(Locale.ENGLISH))) {
                TapjoyLog.i("Banner Ad", "refreshing banner ad...");
                TapjoyDisplayAd.this.getDisplayAd(TapjoyDisplayAd.this.activityContext, TapjoyDisplayAd.lastCurrencyID, TapjoyDisplayAd.displayAdNotifier);
                TapjoyDisplayAd.this.timer.cancel();
                TapjoyDisplayAd.this.timer = null;
                return;
            }
            TapjoyLog.i("Banner Ad", "ad is not in default state.  will try refreshing again in 60000s...");
            TapjoyDisplayAd.this.timer.cancel();
            TapjoyDisplayAd.this.timer = null;
            (TapjoyDisplayAd.this.timer = new Timer()).schedule(new RefreshTimer(), 60000L);
        }
    }
}
