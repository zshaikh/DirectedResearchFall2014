package com.bitrhymes.flurry;

import com.adobe.fre.*;
import android.util.*;

public class FlurryExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        Log.i(this.getClass().getSimpleName(), "Inside create COntext method");
        return new FlurryContext();
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
