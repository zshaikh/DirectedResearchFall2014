package com.fusepowered.m2.m2l.util;

import java.util.*;

public class DateAndTime
{
    protected static DateAndTime instance;
    
    static {
        DateAndTime.instance = new DateAndTime();
    }
    
    public static TimeZone localTimeZone() {
        return DateAndTime.instance.internalLocalTimeZone();
    }
    
    public static Date now() {
        return DateAndTime.instance.internalNow();
    }
    
    @Deprecated
    public static void setInstance(final DateAndTime instance) {
        DateAndTime.instance = instance;
    }
    
    public TimeZone internalLocalTimeZone() {
        return TimeZone.getDefault();
    }
    
    public Date internalNow() {
        return new Date();
    }
}
