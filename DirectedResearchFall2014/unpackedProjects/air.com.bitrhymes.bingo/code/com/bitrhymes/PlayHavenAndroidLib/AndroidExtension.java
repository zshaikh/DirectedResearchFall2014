package com.bitrhymes.PlayHavenAndroidLib;

import com.adobe.fre.*;

public class AndroidExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        return new AndroidExtensionContext();
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public void initialize() {
    }
}
