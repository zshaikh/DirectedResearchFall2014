package com.buffalostudios.aneutils;

import com.adobe.fre.*;

public class ANEExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        return new ANEContext();
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public void initialize() {
    }
}
