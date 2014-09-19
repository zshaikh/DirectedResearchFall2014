package com.facebook.internal;

interface WorkQueue$WorkItem
{
    boolean cancel();
    
    boolean isRunning();
    
    void moveToFront();
}
