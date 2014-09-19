package com.facebook;

class AppEventsLogger$EventSuppression
{
    private AppEventsLogger$SuppressionTimeoutBehavior behavior;
    private int timeoutPeriod;
    
    AppEventsLogger$EventSuppression(final int timeoutPeriod, final AppEventsLogger$SuppressionTimeoutBehavior behavior) {
        super();
        this.timeoutPeriod = timeoutPeriod;
        this.behavior = behavior;
    }
    
    AppEventsLogger$SuppressionTimeoutBehavior getBehavior() {
        return this.behavior;
    }
    
    int getTimeoutPeriod() {
        return this.timeoutPeriod;
    }
}
