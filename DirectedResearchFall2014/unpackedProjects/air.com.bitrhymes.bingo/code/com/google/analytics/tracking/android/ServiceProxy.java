package com.google.analytics.tracking.android;

import java.util.*;
import com.google.android.gms.analytics.internal.*;

interface ServiceProxy
{
    void clearHits();
    
    void createService();
    
    void dispatch();
    
    void putHit(Map<String, String> p0, long p1, String p2, List<Command> p3);
}
