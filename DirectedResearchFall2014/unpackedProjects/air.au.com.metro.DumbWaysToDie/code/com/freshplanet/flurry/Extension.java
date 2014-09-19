package com.freshplanet.flurry;

import com.adobe.fre.*;
import android.util.*;

public class Extension implements FREExtension
{
    public static String TAG;
    public static FREContext context;
    
    static {
        Extension.TAG = "AirFlurry";
    }
    
    @Override
    public FREContext createContext(final String s) {
        return Extension.context = new ExtensionContext();
    }
    
    @Override
    public void dispose() {
        Log.d(Extension.TAG, "Extension disposed.");
        Extension.context = null;
    }
    
    @Override
    public void initialize() {
        Log.d(Extension.TAG, "Extension initialized.");
    }
}
