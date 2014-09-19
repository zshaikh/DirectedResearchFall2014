package com.bitrhymes.iab.functions;

import android.annotation.*;
import com.adobe.fre.*;
import java.io.*;

@SuppressLint({ "ParserError" })
public class Utils
{
    static FREContext freContextObj;
    static GoogleIABV3Activity inAppActivity;
    
    static {
        Utils.inAppActivity = null;
        Utils.freContextObj = null;
    }
    
    public static String getExceptionStackTraceAsString(final Exception ex) {
        final StringWriter out = new StringWriter();
        ex.printStackTrace(new PrintWriter(out));
        return out.toString();
    }
    
    public static FREContext getFREContext() {
        return Utils.freContextObj;
    }
    
    public static GoogleIABV3Activity getInAppActivity() {
        return Utils.inAppActivity;
    }
    
    public static void setFREContextObj(final FREContext freContextObj) {
        Utils.freContextObj = freContextObj;
    }
    
    public static void setInAppActivity(final GoogleIABV3Activity inAppActivity) {
        Utils.inAppActivity = inAppActivity;
    }
}
