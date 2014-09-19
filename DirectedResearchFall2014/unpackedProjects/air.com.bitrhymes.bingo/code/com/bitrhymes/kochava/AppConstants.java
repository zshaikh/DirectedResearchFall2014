package com.bitrhymes.kochava;

import com.kochava.android.tracker.*;
import android.app.*;
import android.content.*;

public class AppConstants
{
    public static final String ERROR_EVENT = "ERROR_EVENT";
    public static final int REQUEST_CODE_FB_AUTH = 10;
    static Feature kochavaObj;
    
    static {
        AppConstants.kochavaObj = null;
    }
    
    public static Feature getKochavaInstance(final Activity activity, final String s) {
        if (AppConstants.kochavaObj == null) {
            AppConstants.kochavaObj = new Feature((Context)activity, s, "USD");
        }
        return AppConstants.kochavaObj;
    }
}
