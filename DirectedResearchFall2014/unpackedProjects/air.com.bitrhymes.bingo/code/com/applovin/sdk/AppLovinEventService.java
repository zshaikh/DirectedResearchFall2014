package com.applovin.sdk;

public interface AppLovinEventService
{
    void trackRevenueEvent(String p0, double p1, String p2);
    
    void trackSessionEnd();
    
    void trackSessionPause();
    
    void trackSessionStart();
    
    void uploadEvents();
}
