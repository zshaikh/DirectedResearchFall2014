package com.bitrhymes.applovin;

import com.applovin.adview.*;
import java.io.*;

public class Utils
{
    public static AppLovinInterstitialAdDialog appLovinInterestitialDialog;
    
    static {
        Utils.appLovinInterestitialDialog = null;
    }
    
    public static String getExceptionStackTraceAsString(final Exception ex) {
        final StringWriter out = new StringWriter();
        ex.printStackTrace(new PrintWriter(out));
        return out.toString();
    }
}
