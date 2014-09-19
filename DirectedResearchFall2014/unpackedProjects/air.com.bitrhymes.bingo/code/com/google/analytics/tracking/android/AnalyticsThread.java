package com.google.analytics.tracking.android;

import java.util.concurrent.*;
import java.util.*;

interface AnalyticsThread
{
    void dispatch();
    
    LinkedBlockingQueue<Runnable> getQueue();
    
    Thread getThread();
    
    void requestAppOptOut(GoogleAnalytics.AppOptOutCallback p0);
    
    void requestClientId(ClientIdCallback p0);
    
    void sendHit(Map<String, String> p0);
    
    void setAppOptOut(boolean p0);
    
    public interface ClientIdCallback
    {
        void reportClientId(String p0);
    }
}
