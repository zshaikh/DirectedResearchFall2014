package com.bitrhymes.kochava;

import com.adobe.fre.*;
import android.util.*;

public class KochavaExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        Log.i(this.getClass().getSimpleName(), "Inside create COntext method");
        return new KochavaContext();
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
