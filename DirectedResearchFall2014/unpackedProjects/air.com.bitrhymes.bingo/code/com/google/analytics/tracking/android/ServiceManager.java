package com.google.analytics.tracking.android;

public interface ServiceManager
{
    void dispatch();
    
    void setDispatchPeriod(int p0);
    
    void updateConnectivityStatus(boolean p0);
}
