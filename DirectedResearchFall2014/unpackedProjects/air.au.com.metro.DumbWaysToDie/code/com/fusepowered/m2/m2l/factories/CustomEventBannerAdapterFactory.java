package com.fusepowered.m2.m2l.factories;

import com.fusepowered.m2.m2l.*;

public class CustomEventBannerAdapterFactory
{
    protected static CustomEventBannerAdapterFactory instance;
    
    static {
        CustomEventBannerAdapterFactory.instance = new CustomEventBannerAdapterFactory();
    }
    
    public static CustomEventBannerAdapter create(final MoPubView moPubView, final String s, final String s2) {
        return CustomEventBannerAdapterFactory.instance.internalCreate(moPubView, s, s2);
    }
    
    @Deprecated
    public static void setInstance(final CustomEventBannerAdapterFactory instance) {
        CustomEventBannerAdapterFactory.instance = instance;
    }
    
    protected CustomEventBannerAdapter internalCreate(final MoPubView moPubView, final String s, final String s2) {
        return new CustomEventBannerAdapter(moPubView, s, s2);
    }
}
