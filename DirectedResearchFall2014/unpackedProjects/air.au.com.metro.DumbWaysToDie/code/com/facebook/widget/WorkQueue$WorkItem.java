package com.facebook.widget;

interface WorkQueue$WorkItem
{
    boolean cancel();
    
    boolean isRunning();
    
    void moveToFront();
}
