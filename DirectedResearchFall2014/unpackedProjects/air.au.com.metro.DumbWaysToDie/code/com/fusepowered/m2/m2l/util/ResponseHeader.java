package com.fusepowered.m2.m2l.util;

public enum ResponseHeader
{
    AD_TIMEOUT("AD_TIMEOUT", 0, "X-AdTimeout"), 
    AD_TYPE("AD_TYPE", 1, "X-Adtype"), 
    CLICKTHROUGH_URL("CLICKTHROUGH_URL", 2, "X-Clickthrough"), 
    CUSTOM_EVENT_DATA("CUSTOM_EVENT_DATA", 3, "X-Custom-Event-Class-Data"), 
    CUSTOM_EVENT_HTML_DATA("CUSTOM_EVENT_HTML_DATA", 5, "X-Custom-Event-Html-Data"), 
    CUSTOM_EVENT_NAME("CUSTOM_EVENT_NAME", 4, "X-Custom-Event-Class-Name"), 
    CUSTOM_SELECTOR("CUSTOM_SELECTOR", 20, "X-Customselector"), 
    DSP_CREATIVE_ID("DSP_CREATIVE_ID", 6, "X-DspCreativeid"), 
    FAIL_URL("FAIL_URL", 7, "X-Failurl"), 
    FULL_AD_TYPE("FULL_AD_TYPE", 8, "X-Fulladtype"), 
    HEIGHT("HEIGHT", 9, "X-Height"), 
    IMPRESSION_URL("IMPRESSION_URL", 10, "X-Imptracker"), 
    LOCATION("LOCATION", 18, "Location"), 
    NATIVE_PARAMS("NATIVE_PARAMS", 12, "X-Nativeparams"), 
    NETWORK_TYPE("NETWORK_TYPE", 13, "X-Networktype"), 
    REDIRECT_URL("REDIRECT_URL", 11, "X-Launchpage"), 
    REFRESH_TIME("REFRESH_TIME", 14, "X-Refreshtime"), 
    SCROLLABLE("SCROLLABLE", 15, "X-Scrollable"), 
    USER_AGENT("USER_AGENT", 19, "User-Agent"), 
    WARMUP("WARMUP", 16, "X-Warmup"), 
    WIDTH("WIDTH", 17, "X-Width");
    
    private final String key;
    
    private ResponseHeader(final String name, final int ordinal, final String key) {
        this.key = key;
    }
    
    public String getKey() {
        return this.key;
    }
}
