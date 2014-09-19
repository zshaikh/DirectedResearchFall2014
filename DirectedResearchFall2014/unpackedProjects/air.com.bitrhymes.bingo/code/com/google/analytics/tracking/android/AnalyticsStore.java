package com.google.analytics.tracking.android;

import java.util.*;
import com.google.android.gms.analytics.internal.*;

interface AnalyticsStore
{
    void clearHits(long p0);
    
    void close();
    
    void dispatch();
    
    void putHit(Map<String, String> p0, long p1, String p2, Collection<Command> p3);
    
    void setDispatch(boolean p0);
}
