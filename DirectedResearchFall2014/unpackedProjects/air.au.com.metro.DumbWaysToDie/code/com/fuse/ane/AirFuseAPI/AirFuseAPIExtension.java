package com.fuse.ane.AirFuseAPI;

import com.adobe.fre.*;

public class AirFuseAPIExtension implements FREExtension
{
    public static FREContext context;
    
    public static void dispatch(final String s, final String s2) {
        AirFuseAPIExtension.context.dispatchStatusEventAsync(s, s2);
    }
    
    public static void log(final String s) {
        AirFuseAPIExtension.context.dispatchStatusEventAsync("LOGGING", s);
    }
    
    @Override
    public FREContext createContext(final String s) {
        return AirFuseAPIExtension.context = new AirFuseAPIExtensionContext();
    }
    
    @Override
    public void dispose() {
        AirFuseAPIExtension.context = null;
    }
    
    @Override
    public void initialize() {
    }
}
