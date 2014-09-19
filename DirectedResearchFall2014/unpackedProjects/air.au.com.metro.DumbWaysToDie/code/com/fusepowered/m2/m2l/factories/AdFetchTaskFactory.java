package com.fusepowered.m2.m2l.factories;

import com.fusepowered.m2.m2l.*;

public class AdFetchTaskFactory
{
    protected static AdFetchTaskFactory instance;
    
    static {
        AdFetchTaskFactory.instance = new AdFetchTaskFactory();
    }
    
    public static AdFetchTask create(final TaskTracker taskTracker, final AdViewController adViewController, final String s, final int n) {
        return AdFetchTaskFactory.instance.internalCreate(taskTracker, adViewController, s, n);
    }
    
    @Deprecated
    public static void setInstance(final AdFetchTaskFactory instance) {
        AdFetchTaskFactory.instance = instance;
    }
    
    protected AdFetchTask internalCreate(final TaskTracker taskTracker, final AdViewController adViewController, final String s, final int n) {
        return new AdFetchTask(taskTracker, adViewController, s, n);
    }
}
