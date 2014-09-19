package com.bitrhymes.nativeutils;

import com.adobe.fre.*;

public class NativeUtilsExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        return new NativeUtilsContext();
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public void initialize() {
    }
}
