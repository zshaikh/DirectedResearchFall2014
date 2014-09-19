package com.google.analytics.tracking.android;

import java.util.*;

interface Dispatcher
{
    int dispatchHits(List<Hit> p0);
    
    boolean okToDispatch();
}
