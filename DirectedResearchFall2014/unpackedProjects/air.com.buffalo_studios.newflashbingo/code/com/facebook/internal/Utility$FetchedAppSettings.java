package com.facebook.internal;

public class Utility$FetchedAppSettings
{
    private boolean supportsAttribution;
    private boolean supportsImplicitLogging;
    
    private Utility$FetchedAppSettings(final boolean supportsAttribution, final boolean supportsImplicitLogging) {
        super();
        this.supportsAttribution = supportsAttribution;
        this.supportsImplicitLogging = supportsImplicitLogging;
    }
    
    public boolean supportsAttribution() {
        return this.supportsAttribution;
    }
    
    public boolean supportsImplicitLogging() {
        return this.supportsImplicitLogging;
    }
}
