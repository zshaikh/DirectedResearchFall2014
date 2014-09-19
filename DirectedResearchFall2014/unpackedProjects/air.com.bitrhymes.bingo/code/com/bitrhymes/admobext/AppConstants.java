package com.bitrhymes.admobext;

import java.io.*;

public class AppConstants
{
    public static final String ERROR_EVENT = "ERROR_EVENT";
    public static final String ON_DISPLAY_AD_EVENT = "ON_DISPLAY_AD_EVENT";
    public static final String ON_RECEIVE_AD_EVENT = "ON_RECEIVE_AD_EVENT";
    
    public static String getExceptionStackTraceAsString(final Exception ex) {
        final StringWriter out = new StringWriter();
        ex.printStackTrace(new PrintWriter(out));
        return out.toString();
    }
}
