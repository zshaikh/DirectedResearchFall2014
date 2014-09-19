package com.bitrhymes.facebookext;

import com.adobe.fre.*;
import android.util.*;

public class FacebookExt implements FREExtension
{
    private static Boolean PRINT_LOG;
    public static String TAG;
    public static FREContext context;
    
    static {
        FacebookExt.TAG = "FacebookExt";
        FacebookExt.PRINT_LOG = false;
    }
    
    public static void log(final String s) {
        if (FacebookExt.PRINT_LOG) {
            Log.d(FacebookExt.TAG, s);
        }
        if (FacebookExt.context != null && s != null) {
            FacebookExt.context.dispatchStatusEventAsync("LOGGING", s);
        }
    }
    
    @Override
    public FREContext createContext(final String s) {
        return FacebookExt.context = new FacebookExtContext();
    }
    
    @Override
    public void dispose() {
        FacebookExt.context = null;
    }
    
    @Override
    public void initialize() {
    }
}
