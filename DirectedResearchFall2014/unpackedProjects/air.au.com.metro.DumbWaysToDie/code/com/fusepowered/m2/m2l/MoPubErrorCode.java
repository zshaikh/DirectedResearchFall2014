package com.fusepowered.m2.m2l;

public enum MoPubErrorCode
{
    ADAPTER_CONFIGURATION_ERROR("ADAPTER_CONFIGURATION_ERROR", 5, "Native Network or Custom Event adapter was configured incorrectly."), 
    ADAPTER_NOT_FOUND("ADAPTER_NOT_FOUND", 4, "Unable to find Native Network or Custom Event adapter."), 
    CANCELLED("CANCELLED", 3, "Ad request was cancelled."), 
    INTERNAL_ERROR("INTERNAL_ERROR", 2, "Unable to serve ad due to invalid internal state."), 
    MRAID_LOAD_ERROR("MRAID_LOAD_ERROR", 9, "Error loading MRAID ad."), 
    NETWORK_INVALID_STATE("NETWORK_INVALID_STATE", 8, "Third-party network failed due to invalid internal state."), 
    NETWORK_NO_FILL("NETWORK_NO_FILL", 7, "Third-party network failed to provide inventory."), 
    NETWORK_TIMEOUT("NETWORK_TIMEOUT", 6, "Third-party network failed to respond in a timely manner."), 
    NO_FILL("NO_FILL", 0, "No inventory."), 
    SERVER_ERROR("SERVER_ERROR", 1, "Unable to connect to MoPub adserver."), 
    UNSPECIFIED("UNSPECIFIED", 12, "Unspecified error."), 
    VIDEO_CACHE_ERROR("VIDEO_CACHE_ERROR", 10, "Error creating a cache to store downloaded videos."), 
    VIDEO_DOWNLOAD_ERROR("VIDEO_DOWNLOAD_ERROR", 11, "Error downloading video.");
    
    private final String message;
    
    private MoPubErrorCode(final String name, final int ordinal, final String message) {
        this.message = message;
    }
    
    @Override
    public String toString() {
        return this.message;
    }
}
