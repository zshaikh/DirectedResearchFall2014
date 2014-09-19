package com.tapjoy;

import java.util.*;
import android.content.*;

public class TapjoyDailyRewardAd
{
    private static final String TAG = "Daily Reward";
    private static TapjoyDailyRewardAdNotifier dailyRewardNotifier;
    private static String htmlResponseData;
    private Context context;
    private Map<String, String> legacyDailyRewardAdParams;
    
    static {
        TapjoyDailyRewardAd.htmlResponseData = null;
    }
    
    public TapjoyDailyRewardAd(final Context context) {
        super();
        this.context = context;
    }
    
    public void getDailyRewardAd(final TapjoyDailyRewardAdNotifier tapjoyDailyRewardAdNotifier) {
        TapjoyLog.i("Daily Reward", "Getting Daily Reward Ad");
        this.getDailyRewardAdWithCurrencyID(null, tapjoyDailyRewardAdNotifier);
    }
    
    public void getDailyRewardAdLegacy(final String s) {
        TapjoyUtil.safePut(this.legacyDailyRewardAdParams = TapjoyConnectCore.getURLParams(), "currency_id", s, true);
        new Thread(new Runnable() {
            @Override
            public void run() {
                final TapjoyHttpURLResponse responseFromURL = new TapjoyURLConnection().getResponseFromURL(TapjoyConnectCore.getHostURL() + "reengagement_rewards?", TapjoyDailyRewardAd.this.legacyDailyRewardAdParams);
                if (responseFromURL == null) {
                    TapjoyDailyRewardAd.dailyRewardNotifier.getDailyRewardAdResponseFailed(2);
                    return;
                }
                switch (responseFromURL.statusCode) {
                    default: {}
                    case 200: {
                        TapjoyDailyRewardAd.htmlResponseData = responseFromURL.response;
                        TapjoyDailyRewardAd.dailyRewardNotifier.getDailyRewardAdResponse();
                    }
                    case 204: {
                        TapjoyDailyRewardAd.dailyRewardNotifier.getDailyRewardAdResponseFailed(1);
                    }
                }
            }
        }).start();
    }
    
    public void getDailyRewardAdWithCurrencyID(final String s, final TapjoyDailyRewardAdNotifier dailyRewardNotifier) {
        TapjoyDailyRewardAd.dailyRewardNotifier = dailyRewardNotifier;
        this.getDailyRewardAdLegacy(s);
    }
    
    public void showDailyRewardAd() {
        TapjoyLog.i("Daily Reward", "Displaying Daily Reward ad...");
        if (TapjoyDailyRewardAd.htmlResponseData != null && TapjoyDailyRewardAd.htmlResponseData.length() > 0) {
            final Intent intent = new Intent(this.context, (Class)TapjoyDailyRewardAdWebView.class);
            intent.setFlags(268435456);
            intent.putExtra("html", TapjoyDailyRewardAd.htmlResponseData);
            intent.putExtra("base_url", TapjoyConnectCore.getHostURL());
            intent.putExtra("legacy_view", true);
            this.context.startActivity(intent);
        }
    }
}
