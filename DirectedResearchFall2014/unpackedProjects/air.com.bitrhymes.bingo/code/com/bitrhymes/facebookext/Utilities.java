package com.bitrhymes.facebookext;

import java.util.*;

public class Utilities
{
    public static final String EVENT_FB_AUTH = "fb_auth";
    public static final String EXTRA_ACCESS_TOKEN = "EXTEND_ACCESS_TOKEN_EVENT";
    public static final String FB_ERROR_EVENT = "FB_ERROR_EVENT";
    public static final String FB_NETWORK_ERROR_EVENT = "FB_NETWORK_ERROR_EVENT";
    public static final String REQUEST_CANCELLED_EVENT = "REQUEST_CANCELLED";
    public static final String REQUEST_FAILED_EVENT = "REQUEST_FAILED";
    public static final String REQUEST_SENT_EVENT = "REQUEST_SENT";
    
    public static String[] getStringArray(final String str) {
        final StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        final String[] array = new String[stringTokenizer.countTokens()];
        int n = 0;
        while (stringTokenizer.hasMoreTokens()) {
            final int n2 = n + 1;
            array[n] = stringTokenizer.nextToken();
            n = n2;
        }
        return array;
    }
}
