package com.fusepowered.m2.m2l;

import java.util.*;

public class AdTypeTranslator
{
    public static final String ADMOB_BANNER = "com.fusepowered.m2.m2l.GoogleAdMobBanner";
    public static final String ADMOB_INTERSTITIAL = "com.fusepowered.m2.m2l.GoogleAdMobInterstitial";
    public static final String HTML_BANNER = "com.fusepowered.m2.m2l.HtmlBanner";
    public static final String HTML_INTERSTITIAL = "com.fusepowered.m2.m2l.HtmlInterstitial";
    public static final String MILLENNIAL_BANNER = "com.fusepowered.m2.m2l.MillennialBanner";
    public static final String MILLENNIAL_INTERSTITIAL = "com.fusepowered.m2.m2l.MillennialInterstitial";
    public static final String MRAID_BANNER = "com.fusepowered.m2.m2l.MraidBanner";
    public static final String MRAID_INTERSTITIAL = "com.fusepowered.m2.m2l.MraidInterstitial";
    public static final String VAST_VIDEO_INTERSTITIAL = "com.fusepowered.m2.m2l.VastVideoInterstitial";
    private static Map<String, String> customEventNameForAdType;
    
    static {
        (AdTypeTranslator.customEventNameForAdType = new HashMap<String, String>()).put("admob_native_banner", "com.fusepowered.m2.m2l.GoogleAdMobBanner");
        AdTypeTranslator.customEventNameForAdType.put("admob_full_interstitial", "com.fusepowered.m2.m2l.GoogleAdMobInterstitial");
        AdTypeTranslator.customEventNameForAdType.put("millennial_native_banner", "com.fusepowered.m2.m2l.MillennialBanner");
        AdTypeTranslator.customEventNameForAdType.put("millennial_full_interstitial", "com.fusepowered.m2.m2l.MillennialInterstitial");
        AdTypeTranslator.customEventNameForAdType.put("mraid_banner", "com.fusepowered.m2.m2l.MraidBanner");
        AdTypeTranslator.customEventNameForAdType.put("mraid_interstitial", "com.fusepowered.m2.m2l.MraidInterstitial");
        AdTypeTranslator.customEventNameForAdType.put("html_banner", "com.fusepowered.m2.m2l.HtmlBanner");
        AdTypeTranslator.customEventNameForAdType.put("html_interstitial", "com.fusepowered.m2.m2l.HtmlInterstitial");
        AdTypeTranslator.customEventNameForAdType.put("vast_interstitial", "com.fusepowered.m2.m2l.VastVideoInterstitial");
    }
    
    static String getAdNetworkType(final String anObject, final String s) {
        String s2;
        if ("interstitial".equals(anObject)) {
            s2 = s;
        }
        else {
            s2 = anObject;
        }
        if (s2 != null) {
            return s2;
        }
        return "unknown";
    }
    
    static String getCustomEventNameForAdType(final MoPubView moPubView, final String s, final String obj) {
        if ("html".equals(s) || "mraid".equals(s)) {
            if (isInterstitial(moPubView)) {
                return AdTypeTranslator.customEventNameForAdType.get(String.valueOf(s) + "_interstitial");
            }
            return AdTypeTranslator.customEventNameForAdType.get(String.valueOf(s) + "_banner");
        }
        else {
            if ("interstitial".equals(s)) {
                return AdTypeTranslator.customEventNameForAdType.get(String.valueOf(obj) + "_interstitial");
            }
            return AdTypeTranslator.customEventNameForAdType.get(String.valueOf(s) + "_banner");
        }
    }
    
    private static boolean isInterstitial(final MoPubView moPubView) {
        return moPubView instanceof MoPubInterstitial.MoPubInterstitialView;
    }
}
