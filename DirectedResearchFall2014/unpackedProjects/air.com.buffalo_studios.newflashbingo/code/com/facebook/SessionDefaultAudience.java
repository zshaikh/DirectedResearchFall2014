package com.facebook;

public enum SessionDefaultAudience
{
    EVERYONE("EVERYONE"), 
    FRIENDS("ALL_FRIENDS"), 
    NONE((String)null), 
    ONLY_ME("SELF");
    
    private final String nativeProtocolAudience;
    
    private SessionDefaultAudience(final String nativeProtocolAudience) {
        this.nativeProtocolAudience = nativeProtocolAudience;
    }
    
    final String getNativeProtocolAudience() {
        return this.nativeProtocolAudience;
    }
}
