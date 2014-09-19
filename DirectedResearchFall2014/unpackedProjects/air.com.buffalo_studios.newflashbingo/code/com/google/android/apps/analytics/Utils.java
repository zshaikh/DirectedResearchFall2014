package com.google.android.apps.analytics;

import android.net.*;
import android.util.*;
import java.util.*;

class Utils
{
    static String addQueueTimeParameter(final String str, final long n) {
        final String queryParameter = Uri.parse(str).getQueryParameter("utmht");
        if (queryParameter != null) {
            try {
                return str + "&utmqt=" + (n - Long.valueOf(Long.parseLong(queryParameter)));
            }
            catch (NumberFormatException ex) {
                Log.e("GoogleAnalyticsTracker", "Error parsing utmht parameter: " + ex.toString());
            }
        }
        return str;
    }
    
    static Map<String, String> parseURLParameters(final String s) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final String[] split = s.split("&");
        for (int length = split.length, i = 0; i < length; ++i) {
            final String[] split2 = split[i].split("=");
            if (split2.length > 1) {
                hashMap.put(split2[0], split2[1]);
            }
            else if (split2.length == 1) {
                hashMap.put(split2[0], null);
            }
        }
        return hashMap;
    }
}
