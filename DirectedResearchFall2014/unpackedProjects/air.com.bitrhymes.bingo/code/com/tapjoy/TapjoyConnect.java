package com.tapjoy;

import java.util.*;
import android.content.*;
import android.util.*;
import android.app.*;

public final class TapjoyConnect
{
    private static final String TAG = "TapjoyConnect";
    private static Hashtable<String, String> connectFlags;
    private static TapjoyConnect tapjoyConnectInstance;
    private static TapjoyDailyRewardAd tapjoyDailyRewardAd;
    private static TapjoyDisplayAd tapjoyDisplayAd;
    private static TapjoyEvent tapjoyEvent;
    private static TapjoyFullScreenAd tapjoyFullScreenAd;
    private static TJCOffers tapjoyOffers;
    private static TJPoints tapjoyPoints;
    private static TapjoyVideo tapjoyVideo;
    
    static {
        TapjoyConnect.tapjoyConnectInstance = null;
        TapjoyConnect.tapjoyOffers = null;
        TapjoyConnect.tapjoyPoints = null;
        TapjoyConnect.tapjoyFullScreenAd = null;
        TapjoyConnect.tapjoyDisplayAd = null;
        TapjoyConnect.tapjoyVideo = null;
        TapjoyConnect.tapjoyEvent = null;
        TapjoyConnect.tapjoyDailyRewardAd = null;
        TapjoyConnect.connectFlags = null;
    }
    
    private TapjoyConnect(final Context context, final String s, final String s2, final Hashtable<String, String> hashtable, final TapjoyConnectNotifier tapjoyConnectNotifier) throws TapjoyException {
        super();
        TapjoyConnectCore.requestTapjoyConnect(context, s, s2, hashtable, tapjoyConnectNotifier);
    }
    
    public static void enableLogging(final boolean b) {
        TapjoyLog.enableLogging(b);
    }
    
    public static TapjoyConnect getTapjoyConnectInstance() {
        if (TapjoyConnect.tapjoyConnectInstance == null) {
            Log.e("TapjoyConnect", "----------------------------------------");
            Log.e("TapjoyConnect", "ERROR -- call requestTapjoyConnect before any other Tapjoy methods");
            Log.e("TapjoyConnect", "----------------------------------------");
        }
        return TapjoyConnect.tapjoyConnectInstance;
    }
    
    public static boolean requestTapjoyConnect(final Context context, final String s, final String s2) {
        return requestTapjoyConnect(context, s, s2, TapjoyConnect.connectFlags);
    }
    
    public static boolean requestTapjoyConnect(final Context context, final String s, final String s2, final Hashtable<String, String> hashtable) {
        return requestTapjoyConnect(context, s, s2, hashtable, null);
    }
    
    public static boolean requestTapjoyConnect(final Context context, final String s, final String s2, final Hashtable<String, String> hashtable, final TapjoyConnectNotifier tapjoyConnectNotifier) {
        TapjoyConnectCore.setSDKType("offers");
        try {
            TapjoyConnect.tapjoyConnectInstance = new TapjoyConnect(context, s, s2, hashtable, tapjoyConnectNotifier);
            TapjoyConnect.tapjoyOffers = new TJCOffers(context);
            TapjoyConnect.tapjoyPoints = new TJPoints(context);
            TapjoyConnect.tapjoyFullScreenAd = new TapjoyFullScreenAd(context);
            TapjoyConnect.tapjoyDisplayAd = new TapjoyDisplayAd(context);
            TapjoyConnect.tapjoyVideo = new TapjoyVideo(context);
            TapjoyConnect.tapjoyEvent = new TapjoyEvent(context);
            TapjoyConnect.tapjoyDailyRewardAd = new TapjoyDailyRewardAd(context);
            TapjoyConnect.connectFlags = null;
            return true;
        }
        catch (TapjoyIntegrationException ex) {
            Log.e("TapjoyConnect", "IntegrationException: " + ex.getMessage());
            if (tapjoyConnectNotifier != null) {
                tapjoyConnectNotifier.connectFail();
            }
            return false;
        }
        catch (TapjoyException ex2) {
            Log.e("TapjoyConnect", "TapjoyException: " + ex2.getMessage());
            if (tapjoyConnectNotifier != null) {
                tapjoyConnectNotifier.connectFail();
            }
            return false;
        }
    }
    
    public static void setFlagKeyValue(final String key, final String value) {
        if (TapjoyConnect.connectFlags == null) {
            TapjoyConnect.connectFlags = new Hashtable<String, String>();
        }
        TapjoyConnect.connectFlags.put(key, value);
    }
    
    public void actionComplete(final String s) {
        TapjoyConnectCore.getInstance().actionComplete(s);
    }
    
    public void appPause() {
        TapjoyConnectCore.getInstance().appPause();
    }
    
    public void appResume() {
        TapjoyConnectCore.getInstance().appPause();
    }
    
    public void awardTapPoints(final int n, final TapjoyAwardPointsNotifier tapjoyAwardPointsNotifier) {
        TapjoyConnect.tapjoyPoints.awardTapPoints(n, tapjoyAwardPointsNotifier);
    }
    
    public void cacheVideos() {
        TapjoyConnect.tapjoyVideo.cacheVideos();
    }
    
    public void enableBannerAdAutoRefresh(final boolean b) {
        TapjoyConnect.tapjoyDisplayAd.enableAutoRefresh(b);
    }
    
    public void enableDisplayAdAutoRefresh(final boolean b) {
        TapjoyConnect.tapjoyDisplayAd.enableAutoRefresh(b);
    }
    
    public void enablePaidAppWithActionID(final String s) {
        TapjoyConnectCore.getInstance().enablePaidAppWithActionID(s);
    }
    
    public void enableVideoCache(final boolean b) {
        TapjoyConnect.tapjoyVideo.enableVideoCache(b);
    }
    
    public String getAppID() {
        return TapjoyConnectCore.getAppID();
    }
    
    public float getCurrencyMultiplier() {
        return TapjoyConnectCore.getInstance().getCurrencyMultiplier();
    }
    
    public void getDailyRewardAd(final TapjoyDailyRewardAdNotifier tapjoyDailyRewardAdNotifier) {
        TapjoyConnect.tapjoyDailyRewardAd.getDailyRewardAd(tapjoyDailyRewardAdNotifier);
    }
    
    public void getDailyRewardAdWithCurrencyID(final String s, final TapjoyDailyRewardAdNotifier tapjoyDailyRewardAdNotifier) {
        TapjoyConnect.tapjoyDailyRewardAd.getDailyRewardAdWithCurrencyID(s, tapjoyDailyRewardAdNotifier);
    }
    
    public void getDisplayAd(final Activity activity, final TapjoyDisplayAdNotifier tapjoyDisplayAdNotifier) {
        TapjoyConnect.tapjoyDisplayAd.getDisplayAd(activity, tapjoyDisplayAdNotifier);
    }
    
    public void getDisplayAd(final TapjoyDisplayAdNotifier tapjoyDisplayAdNotifier) {
        TapjoyConnect.tapjoyDisplayAd.getDisplayAd(null, tapjoyDisplayAdNotifier);
    }
    
    public void getDisplayAdWithCurrencyID(final Activity activity, final String s, final TapjoyDisplayAdNotifier tapjoyDisplayAdNotifier) {
        TapjoyConnect.tapjoyDisplayAd.getDisplayAd(activity, s, tapjoyDisplayAdNotifier);
    }
    
    public void getDisplayAdWithCurrencyID(final String s, final TapjoyDisplayAdNotifier tapjoyDisplayAdNotifier) {
        TapjoyConnect.tapjoyDisplayAd.getDisplayAd(null, s, tapjoyDisplayAdNotifier);
    }
    
    public void getFeaturedApp(final TapjoyFeaturedAppNotifier tapjoyFeaturedAppNotifier) {
        TapjoyConnect.tapjoyFullScreenAd.getFeaturedApp(tapjoyFeaturedAppNotifier);
    }
    
    public void getFeaturedAppWithCurrencyID(final String s, final TapjoyFeaturedAppNotifier tapjoyFeaturedAppNotifier) {
        TapjoyConnect.tapjoyFullScreenAd.getFeaturedApp(s, tapjoyFeaturedAppNotifier);
    }
    
    public void getFullScreenAd(final TapjoyFullScreenAdNotifier tapjoyFullScreenAdNotifier) {
        TapjoyConnect.tapjoyFullScreenAd.getFullScreenAd(tapjoyFullScreenAdNotifier);
    }
    
    public void getFullScreenAdWithCurrencyID(final String s, final TapjoyFullScreenAdNotifier tapjoyFullScreenAdNotifier) {
        TapjoyConnect.tapjoyFullScreenAd.getFullScreenAd(s, tapjoyFullScreenAdNotifier);
    }
    
    public void getTapPoints(final TapjoyNotifier tapjoyNotifier) {
        TapjoyConnect.tapjoyPoints.getTapPoints(tapjoyNotifier);
    }
    
    public String getUserID() {
        return TapjoyConnectCore.getUserID();
    }
    
    public void initVideoAd(final TapjoyVideoNotifier tapjoyVideoNotifier) {
        TapjoyConnect.tapjoyVideo.initVideoAd(tapjoyVideoNotifier);
    }
    
    public void sendIAPEvent(final String s, final float n, final int n2, final String s2) {
        TapjoyConnect.tapjoyEvent.sendIAPEvent(s, n, n2, s2);
    }
    
    public void sendShutDownEvent() {
        TapjoyConnect.tapjoyEvent.sendShutDownEvent();
    }
    
    public void setBannerAdSize(final String bannerAdSize) {
        TapjoyConnect.tapjoyDisplayAd.setBannerAdSize(bannerAdSize);
    }
    
    public void setCurrencyMultiplier(final float currencyMultiplier) {
        TapjoyConnectCore.getInstance().setCurrencyMultiplier(currencyMultiplier);
    }
    
    public void setDisplayAdSize(final String displayAdSize) {
        TapjoyConnect.tapjoyDisplayAd.setDisplayAdSize(displayAdSize);
    }
    
    public void setEarnedPointsNotifier(final TapjoyEarnedPointsNotifier earnedPointsNotifier) {
        TapjoyConnect.tapjoyPoints.setEarnedPointsNotifier(earnedPointsNotifier);
    }
    
    public void setFeaturedAppDisplayCount(final int displayCount) {
        TapjoyConnect.tapjoyFullScreenAd.setDisplayCount(displayCount);
    }
    
    public void setMraidJsString(final String mraidJsString) {
        TapjoyUtil.setMraidJsString(mraidJsString);
    }
    
    public void setTapjoyViewNotifier(final TapjoyViewNotifier tapjoyViewNotifier) {
        TapjoyConnectCore.getInstance().setTapjoyViewNotifier(tapjoyViewNotifier);
    }
    
    public void setUserID(final String userID) {
        TapjoyConnectCore.setUserID(userID);
    }
    
    public void setVideoCacheCount(final int videoCacheCount) {
        TapjoyConnect.tapjoyVideo.setVideoCacheCount(videoCacheCount);
    }
    
    public void setVideoNotifier(final TapjoyVideoNotifier videoNotifier) {
        TapjoyConnect.tapjoyVideo.setVideoNotifier(videoNotifier);
    }
    
    public void showDailyRewardAd() {
        TapjoyConnect.tapjoyDailyRewardAd.showDailyRewardAd();
    }
    
    public void showFeaturedAppFullScreenAd() {
        TapjoyConnect.tapjoyFullScreenAd.showFeaturedAppFullScreenAd();
    }
    
    public void showFullScreenAd() {
        TapjoyConnect.tapjoyFullScreenAd.showFullScreenAd();
    }
    
    public void showOffers() {
        TapjoyConnect.tapjoyOffers.showOffers(null);
    }
    
    public void showOffers(final TapjoyOffersNotifier tapjoyOffersNotifier) {
        TapjoyConnect.tapjoyOffers.showOffers(tapjoyOffersNotifier);
    }
    
    public void showOffersWithCurrencyID(final String s, final boolean b) {
        TapjoyConnect.tapjoyOffers.showOffersWithCurrencyID(s, b, null);
    }
    
    public void showOffersWithCurrencyID(final String s, final boolean b, final TapjoyOffersNotifier tapjoyOffersNotifier) {
        TapjoyConnect.tapjoyOffers.showOffersWithCurrencyID(s, b, tapjoyOffersNotifier);
    }
    
    public void spendTapPoints(final int n, final TapjoySpendPointsNotifier tapjoySpendPointsNotifier) {
        TapjoyConnect.tapjoyPoints.spendTapPoints(n, tapjoySpendPointsNotifier);
    }
}
