package com.google.analytics.tracking.android;

import java.util.*;

interface TrackerHandler
{
    void closeTracker(Tracker p0);
    
    void sendHit(Map<String, String> p0);
}
