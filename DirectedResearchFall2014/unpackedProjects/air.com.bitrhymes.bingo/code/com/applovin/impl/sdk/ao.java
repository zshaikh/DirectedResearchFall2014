package com.applovin.impl.sdk;

import java.util.concurrent.*;

class ao implements ThreadFactory
{
    final /* synthetic */ al a;
    private final String b;
    
    public ao(final al a, final String b) {
        this.a = a;
        super();
        this.b = b;
    }
    
    @Override
    public Thread newThread(final Runnable target) {
        final Thread thread = new Thread(target, "AppLovinSdk:" + this.b + ":" + bc.a(this.a.a.getSdkKey()));
        thread.setDaemon(true);
        thread.setPriority(10);
        thread.setUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)new ap(this));
        return thread;
    }
}
