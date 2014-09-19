package com.bitrhymes.iab;

import com.adobe.fre.*;

public class InAppExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        return new InAppContext();
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public void initialize() {
    }
}
