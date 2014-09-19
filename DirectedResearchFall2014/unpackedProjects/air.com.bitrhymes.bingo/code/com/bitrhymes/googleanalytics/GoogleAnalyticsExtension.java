package com.bitrhymes.googleanalytics;

import com.adobe.fre.*;
import android.util.*;

public class GoogleAnalyticsExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        Log.i(this.getClass().getSimpleName(), "Inside create COntext method");
        return new GoogleAnalyticsContext();
    }
    
    @Override
    public void dispose() {
        Log.i(this.getClass().getSimpleName(), "Inside dispose method");
    }
    
    @Override
    public void initialize() {
        Log.i(this.getClass().getSimpleName(), "Inside initialize method");
    }
}
