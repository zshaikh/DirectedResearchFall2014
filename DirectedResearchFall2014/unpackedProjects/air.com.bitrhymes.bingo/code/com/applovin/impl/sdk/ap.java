package com.applovin.impl.sdk;

class ap implements UncaughtExceptionHandler
{
    final /* synthetic */ ao a;
    
    ap(final ao a) {
        this.a = a;
        super();
    }
    
    @Override
    public void uncaughtException(final Thread thread, final Throwable t) {
        this.a.a.b.e("TaskManager", "Caught unhandeled exception", t);
    }
}
