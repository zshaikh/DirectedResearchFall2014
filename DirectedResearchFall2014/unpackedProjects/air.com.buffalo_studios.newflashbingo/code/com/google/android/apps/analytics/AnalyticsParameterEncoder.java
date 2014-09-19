package com.google.android.apps.analytics;

import java.net.*;
import java.io.*;

public class AnalyticsParameterEncoder
{
    public static String encode(final String s) {
        return encode(s, "UTF-8");
    }
    
    static String encode(final String s, final String enc) {
        try {
            return URLEncoder.encode(s, enc).replace("+", "%20");
        }
        catch (UnsupportedEncodingException ex) {
            throw new AssertionError((Object)("URL encoding failed for: " + s));
        }
    }
}
