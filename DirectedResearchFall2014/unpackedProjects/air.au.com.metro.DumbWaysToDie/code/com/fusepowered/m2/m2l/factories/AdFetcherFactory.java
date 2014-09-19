package com.fusepowered.m2.m2l.factories;

import com.fusepowered.m2.m2l.*;

public class AdFetcherFactory
{
    protected static AdFetcherFactory instance;
    
    static {
        AdFetcherFactory.instance = new AdFetcherFactory();
    }
    
    public static AdFetcher create(final AdViewController adViewController, final String s) {
        return AdFetcherFactory.instance.internalCreate(adViewController, s);
    }
    
    @Deprecated
    public static void setInstance(final AdFetcherFactory instance) {
        AdFetcherFactory.instance = instance;
    }
    
    protected AdFetcher internalCreate(final AdViewController adViewController, final String s) {
        return new AdFetcher(adViewController, s);
    }
}
