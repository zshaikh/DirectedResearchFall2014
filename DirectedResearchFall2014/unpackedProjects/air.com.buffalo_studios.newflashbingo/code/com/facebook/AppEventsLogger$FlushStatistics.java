package com.facebook;

class AppEventsLogger$FlushStatistics
{
    public int numEvents;
    public AppEventsLogger$FlushResult result;
    
    private AppEventsLogger$FlushStatistics() {
        super();
        this.numEvents = 0;
        this.result = AppEventsLogger$FlushResult.SUCCESS;
    }
}
