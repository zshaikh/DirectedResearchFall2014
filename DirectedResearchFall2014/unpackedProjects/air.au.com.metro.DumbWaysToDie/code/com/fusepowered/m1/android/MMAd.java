package com.fusepowered.m1.android;

public interface MMAd
{
    String getApid();
    
    boolean getIgnoresDensityScaling();
    
    RequestListener getListener();
    
    MMRequest getMMRequest();
    
    void setApid(String p0);
    
    void setIgnoresDensityScaling(boolean p0);
    
    void setListener(RequestListener p0);
    
    void setMMRequest(MMRequest p0);
}
