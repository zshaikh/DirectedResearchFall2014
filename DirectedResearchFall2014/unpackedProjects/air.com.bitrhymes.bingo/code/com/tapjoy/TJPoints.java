package com.tapjoy;

import org.w3c.dom.*;
import java.util.*;
import android.content.*;

public class TJPoints
{
    private static final String TAG = "TapjoyPoints";
    private static TapjoyAwardPointsNotifier tapjoyAwardPointsNotifier;
    private static TapjoyEarnedPointsNotifier tapjoyEarnedPointsNotifier;
    private static TapjoyNotifier tapjoyNotifier;
    private static TapjoySpendPointsNotifier tapjoySpendPointsNotifier;
    int awardTapPoints;
    Context context;
    String spendTapPoints;
    
    public TJPoints(final Context context) {
        super();
        this.spendTapPoints = null;
        this.awardTapPoints = 0;
        this.context = context;
    }
    
    private boolean handleAwardPointsResponse(final String s) {
        final Document buildDocument = TapjoyUtil.buildDocument(s);
        if (buildDocument != null) {
            final String nodeTrimValue = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("Success"));
            if (nodeTrimValue != null && nodeTrimValue.equals("true")) {
                final String nodeTrimValue2 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("TapPoints"));
                final String nodeTrimValue3 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("CurrencyName"));
                if (nodeTrimValue2 != null && nodeTrimValue3 != null) {
                    this.saveTapPointsTotal(Integer.parseInt(nodeTrimValue2));
                    TJPoints.tapjoyAwardPointsNotifier.getAwardPointsResponse(nodeTrimValue3, Integer.parseInt(nodeTrimValue2));
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
            }
            else {
                if (nodeTrimValue != null && nodeTrimValue.endsWith("false")) {
                    final String nodeTrimValue4 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("Message"));
                    TapjoyLog.i("TapjoyPoints", nodeTrimValue4);
                    TJPoints.tapjoyAwardPointsNotifier.getAwardPointsResponseFailed(nodeTrimValue4);
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
            }
        }
        return false;
    }
    
    private boolean handleGetPointsResponse(final String s) {
        while (true) {
            synchronized (this) {
                final Document buildDocument = TapjoyUtil.buildDocument(s);
                if (buildDocument == null) {
                    return false;
                }
                final String nodeTrimValue = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("Success"));
                if (nodeTrimValue != null && nodeTrimValue.equals("true")) {
                    final String nodeTrimValue2 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("TapPoints"));
                    final String nodeTrimValue3 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("CurrencyName"));
                    if (nodeTrimValue2 != null && nodeTrimValue3 != null) {
                        try {
                            final int int1 = Integer.parseInt(nodeTrimValue2);
                            final int localTapPointsTotal = this.getLocalTapPointsTotal();
                            if (TJPoints.tapjoyEarnedPointsNotifier != null && localTapPointsTotal != -9999 && int1 > localTapPointsTotal) {
                                TapjoyLog.i("TapjoyPoints", "earned: " + (int1 - localTapPointsTotal));
                                TJPoints.tapjoyEarnedPointsNotifier.earnedTapPoints(int1 - localTapPointsTotal);
                            }
                            this.saveTapPointsTotal(Integer.parseInt(nodeTrimValue2));
                            TJPoints.tapjoyNotifier.getUpdatePoints(nodeTrimValue3, Integer.parseInt(nodeTrimValue2));
                            return true;
                        }
                        catch (Exception ex) {
                            TapjoyLog.e("TapjoyPoints", "Error parsing XML and calling notifier: " + ex.toString());
                            return false;
                        }
                    }
                    TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
                    return false;
                }
            }
            TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
            return false;
        }
    }
    
    private boolean handleSpendPointsResponse(final String s) {
        final Document buildDocument = TapjoyUtil.buildDocument(s);
        if (buildDocument != null) {
            final String nodeTrimValue = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("Success"));
            if (nodeTrimValue != null && nodeTrimValue.equals("true")) {
                final String nodeTrimValue2 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("TapPoints"));
                final String nodeTrimValue3 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("CurrencyName"));
                if (nodeTrimValue2 != null && nodeTrimValue3 != null) {
                    this.saveTapPointsTotal(Integer.parseInt(nodeTrimValue2));
                    TJPoints.tapjoySpendPointsNotifier.getSpendPointsResponse(nodeTrimValue3, Integer.parseInt(nodeTrimValue2));
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
            }
            else {
                if (nodeTrimValue != null && nodeTrimValue.endsWith("false")) {
                    final String nodeTrimValue4 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("Message"));
                    TapjoyLog.i("TapjoyPoints", nodeTrimValue4);
                    TJPoints.tapjoySpendPointsNotifier.getSpendPointsResponseFailed(nodeTrimValue4);
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
            }
        }
        return false;
    }
    
    public void awardTapPoints(final int awardTapPoints, final TapjoyAwardPointsNotifier tapjoyAwardPointsNotifier) {
        if (awardTapPoints < 0) {
            TapjoyLog.e("TapjoyPoints", "spendTapPoints error: amount must be a positive number");
            return;
        }
        this.awardTapPoints = awardTapPoints;
        TJPoints.tapjoyAwardPointsNotifier = tapjoyAwardPointsNotifier;
        new Thread(new Runnable() {
            @Override
            public void run() {
                final String string = UUID.randomUUID().toString();
                final long l = System.currentTimeMillis() / 1000L;
                final Map<String, String> genericURLParams = TapjoyConnectCore.getGenericURLParams();
                TapjoyUtil.safePut(genericURLParams, "tap_points", String.valueOf(TJPoints.this.awardTapPoints), true);
                TapjoyUtil.safePut(genericURLParams, "guid", string, true);
                TapjoyUtil.safePut(genericURLParams, "timestamp", String.valueOf(l), true);
                TapjoyUtil.safePut(genericURLParams, "verifier", TapjoyConnectCore.getAwardPointsVerifier(l, TJPoints.this.awardTapPoints, string), true);
                final TapjoyHttpURLResponse responseFromURL = new TapjoyURLConnection().getResponseFromURL(TapjoyConnectCore.getHostURL() + "points/award?", genericURLParams);
                final String response = responseFromURL.response;
                boolean access$400 = false;
                if (response != null) {
                    access$400 = TJPoints.this.handleAwardPointsResponse(responseFromURL.response);
                }
                if (!access$400) {
                    TJPoints.tapjoyAwardPointsNotifier.getAwardPointsResponseFailed("Failed to award points.");
                }
            }
        }).start();
    }
    
    public int getLocalTapPointsTotal() {
        return this.context.getSharedPreferences("tjcPrefrences", 0).getInt("last_tap_points", -9999);
    }
    
    public void getTapPoints(final TapjoyNotifier tapjoyNotifier) {
        TJPoints.tapjoyNotifier = tapjoyNotifier;
        new Thread(new Runnable() {
            @Override
            public void run() {
                final TapjoyHttpURLResponse responseFromURL = new TapjoyURLConnection().getResponseFromURL(TapjoyConnectCore.getHostURL() + "get_vg_store_items/user_account?", TapjoyConnectCore.getURLParams());
                final String response = responseFromURL.response;
                boolean access$000 = false;
                if (response != null) {
                    access$000 = TJPoints.this.handleGetPointsResponse(responseFromURL.response);
                }
                if (!access$000) {
                    TJPoints.tapjoyNotifier.getUpdatePointsFailed("Failed to retrieve points from server");
                }
            }
        }).start();
    }
    
    public void saveTapPointsTotal(final int n) {
        final SharedPreferences$Editor edit = this.context.getSharedPreferences("tjcPrefrences", 0).edit();
        edit.putInt("last_tap_points", n);
        edit.commit();
    }
    
    public void setEarnedPointsNotifier(final TapjoyEarnedPointsNotifier tapjoyEarnedPointsNotifier) {
        TJPoints.tapjoyEarnedPointsNotifier = tapjoyEarnedPointsNotifier;
    }
    
    public void spendTapPoints(final int i, final TapjoySpendPointsNotifier tapjoySpendPointsNotifier) {
        if (i < 0) {
            TapjoyLog.e("TapjoyPoints", "spendTapPoints error: amount must be a positive number");
            return;
        }
        this.spendTapPoints = "" + i;
        TJPoints.tapjoySpendPointsNotifier = tapjoySpendPointsNotifier;
        new Thread(new Runnable() {
            @Override
            public void run() {
                final Map<String, String> urlParams = TapjoyConnectCore.getURLParams();
                TapjoyUtil.safePut(urlParams, "tap_points", TJPoints.this.spendTapPoints, true);
                final TapjoyHttpURLResponse responseFromURL = new TapjoyURLConnection().getResponseFromURL(TapjoyConnectCore.getHostURL() + "points/spend?", urlParams);
                final String response = responseFromURL.response;
                boolean access$200 = false;
                if (response != null) {
                    access$200 = TJPoints.this.handleSpendPointsResponse(responseFromURL.response);
                }
                if (!access$200) {
                    TJPoints.tapjoySpendPointsNotifier.getSpendPointsResponseFailed("Failed to spend points.");
                }
            }
        }).start();
    }
}
