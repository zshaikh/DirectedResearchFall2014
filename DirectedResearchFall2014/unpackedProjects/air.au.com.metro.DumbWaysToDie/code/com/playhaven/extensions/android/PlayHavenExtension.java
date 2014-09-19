package com.playhaven.extensions.android;

import com.adobe.fre.*;

public class PlayHavenExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        return new PlayHavenExtensionContext();
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public void initialize() {
    }
}
