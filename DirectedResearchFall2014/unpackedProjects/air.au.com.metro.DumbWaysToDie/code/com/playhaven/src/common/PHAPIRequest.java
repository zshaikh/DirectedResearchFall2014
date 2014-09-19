package com.playhaven.src.common;

import org.json.*;

public interface PHAPIRequest
{
    int getRequestTag();
    
    void send();
    
    void setDelegate(Delegate p0);
    
    public interface Delegate
    {
        void requestFailed(PHAPIRequest p0, Exception p1);
        
        void requestSucceeded(PHAPIRequest p0, JSONObject p1);
    }
}
