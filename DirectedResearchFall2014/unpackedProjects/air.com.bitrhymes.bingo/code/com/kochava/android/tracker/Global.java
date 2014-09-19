package com.kochava.android.tracker;

import java.util.*;

public class Global
{
    protected static final List<String> CURRENCYLIST;
    public static boolean DEBUG = false;
    public static boolean DEBUGERROR = false;
    protected static final String SDK_PROTOCOL = "3";
    public static final String SDK_VERSION = "Android20130808";
    
    static {
        Global.DEBUG = false;
        Global.DEBUGERROR = true;
        CURRENCYLIST = Arrays.asList("USD", "AUD", "CAD", "CHF", "CNY", "DKK", "EUR", "GBP", "MXP", "NOK", "NZD", "RUB", "SEK", "YEN", "TRY", "INR", "IDR", "ILS", "SAR", "ZAR", "AED");
    }
}
