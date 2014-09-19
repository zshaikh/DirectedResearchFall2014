package com.bitrhymes.admobext;

import com.adobe.fre.*;

public class AdMobExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        return new AdMobContext();
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public void initialize() {
    }
}
