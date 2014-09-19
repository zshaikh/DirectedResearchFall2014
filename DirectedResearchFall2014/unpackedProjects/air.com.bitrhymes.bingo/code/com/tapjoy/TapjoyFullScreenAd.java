package com.tapjoy;

import java.util.*;
import android.content.*;

public class TapjoyFullScreenAd
{
    private static final String TAG = "Full Screen Ad";
    private static String baseURL;
    private static TapjoyFeaturedAppNotifier featuredAppNotifier;
    private static TapjoyFullScreenAdNotifier fullScreenAdNotifier;
    private static String htmlResponseData;
    private Context context;
    private Map<String, String> legacyFullScreenAdParams;
    
    static {
        TapjoyFullScreenAd.baseURL = null;
        TapjoyFullScreenAd.htmlResponseData = null;
    }
    
    public TapjoyFullScreenAd(final Context context) {
        super();
        this.context = context;
    }
    
    public void getFeaturedApp(final TapjoyFeaturedAppNotifier tapjoyFeaturedAppNotifier) {
        TapjoyLog.i("Full Screen Ad", "getFeaturedApp");
        this.getFeaturedApp(null, tapjoyFeaturedAppNotifier);
    }
    
    public void getFeaturedApp(final String s, final TapjoyFeaturedAppNotifier featuredAppNotifier) {
        TapjoyFullScreenAd.featuredAppNotifier = featuredAppNotifier;
        this.getFullScreenAdLegacy(s);
    }
    
    public void getFullScreenAd(final TapjoyFullScreenAdNotifier tapjoyFullScreenAdNotifier) {
        TapjoyLog.i("Full Screen Ad", "getFullScreenAd");
        this.getFullScreenAd(null, tapjoyFullScreenAdNotifier);
    }
    
    public void getFullScreenAd(final String s, final TapjoyFullScreenAdNotifier fullScreenAdNotifier) {
        TapjoyFullScreenAd.fullScreenAdNotifier = fullScreenAdNotifier;
        this.getFullScreenAdLegacy(s);
    }
    
    public void getFullScreenAdLegacy(final String s) {
        TapjoyLog.i("Full Screen Ad", "Getting Full Screen Ad");
        TapjoyUtil.safePut(this.legacyFullScreenAdParams = TapjoyConnectCore.getURLParams(), "currency_id", s, true);
        this.legacyFullScreenAdParams.putAll(TapjoyConnectCore.getVideoParams());
        new Thread(new Runnable() {
            @Override
            public void run() {
                final TapjoyHttpURLResponse responseFromURL = new TapjoyURLConnection().getResponseFromURL(TapjoyConnectCore.getHostURL() + "get_offers/featured.html?", TapjoyFullScreenAd.this.legacyFullScreenAdParams);
                TapjoyFullScreenAd.baseURL = TapjoyConnectCore.getHostURL();
                if (responseFromURL != null) {
                    switch (responseFromURL.statusCode) {
                        default: {
                            if (TapjoyFullScreenAd.featuredAppNotifier != null) {
                                TapjoyFullScreenAd.featuredAppNotifier.getFeaturedAppResponseFailed("Error retrieving full screen ad data from the server.");
                            }
                            if (TapjoyFullScreenAd.fullScreenAdNotifier != null) {
                                TapjoyFullScreenAd.fullScreenAdNotifier.getFullScreenAdResponseFailed(1);
                                break;
                            }
                            break;
                        }
                        case 200: {
                            TapjoyFullScreenAd.htmlResponseData = responseFromURL.response;
                            if (TapjoyFullScreenAd.featuredAppNotifier != null) {
                                TapjoyFullScreenAd.featuredAppNotifier.getFeaturedAppResponse(null);
                            }
                            if (TapjoyFullScreenAd.fullScreenAdNotifier != null) {
                                TapjoyFullScreenAd.fullScreenAdNotifier.getFullScreenAdResponse();
                                return;
                            }
                            break;
                        }
                    }
                }
                else {
                    if (TapjoyFullScreenAd.featuredAppNotifier != null) {
                        TapjoyFullScreenAd.featuredAppNotifier.getFeaturedAppResponseFailed("Error retrieving full screen ad data from the server.");
                    }
                    if (TapjoyFullScreenAd.fullScreenAdNotifier != null) {
                        TapjoyFullScreenAd.fullScreenAdNotifier.getFullScreenAdResponseFailed(2);
                    }
                }
            }
        }).start();
    }
    
    public void setDisplayCount(final int n) {
    }
    
    public void showFeaturedAppFullScreenAd() {
        if (TapjoyFullScreenAd.htmlResponseData != null && TapjoyFullScreenAd.htmlResponseData.length() > 0) {
            final Intent intent = new Intent(this.context, (Class)TapjoyFeaturedAppWebView.class);
            intent.setFlags(268435456);
            intent.putExtra("html", TapjoyFullScreenAd.htmlResponseData);
            intent.putExtra("base_url", TapjoyFullScreenAd.baseURL);
            intent.putExtra("legacy_view", true);
            this.context.startActivity(intent);
        }
    }
    
    public void showFullScreenAd() {
        if (TapjoyFullScreenAd.htmlResponseData != null && TapjoyFullScreenAd.htmlResponseData.length() > 0) {
            final Intent intent = new Intent(this.context, (Class)TapjoyFullScreenAdWebView.class);
            intent.setFlags(268435456);
            intent.putExtra("html", TapjoyFullScreenAd.htmlResponseData);
            intent.putExtra("base_url", TapjoyFullScreenAd.baseURL);
            intent.putExtra("legacy_view", true);
            this.context.startActivity(intent);
        }
    }
}
