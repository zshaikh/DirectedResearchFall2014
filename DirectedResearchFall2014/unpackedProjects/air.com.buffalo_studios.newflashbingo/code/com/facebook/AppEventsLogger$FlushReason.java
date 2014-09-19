package com.facebook;

enum AppEventsLogger$FlushReason
{
    EAGER_FLUSHING_EVENT, 
    EVENT_THRESHOLD, 
    EXPLICIT, 
    PERSISTED_EVENTS, 
    SESSION_CHANGE, 
    TIMER;
}
