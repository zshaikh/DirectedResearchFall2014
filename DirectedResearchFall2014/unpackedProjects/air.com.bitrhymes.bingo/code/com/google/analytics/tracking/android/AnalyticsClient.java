package com.google.analytics.tracking.android;

import java.util.*;
import com.google.android.gms.analytics.internal.*;

interface AnalyticsClient
{
    void clearHits();
    
    void connect();
    
    void disconnect();
    
    void sendHit(Map<String, String> p0, long p1, String p2, List<Command> p3);
}
