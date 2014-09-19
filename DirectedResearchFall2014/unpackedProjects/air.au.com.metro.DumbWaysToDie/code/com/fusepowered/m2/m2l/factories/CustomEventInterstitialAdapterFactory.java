package com.fusepowered.m2.m2l.factories;

import com.fusepowered.m2.m2l.*;

public class CustomEventInterstitialAdapterFactory
{
    protected static CustomEventInterstitialAdapterFactory instance;
    
    static {
        CustomEventInterstitialAdapterFactory.instance = new CustomEventInterstitialAdapterFactory();
    }
    
    public static CustomEventInterstitialAdapter create(final MoPubInterstitial moPubInterstitial, final String s, final String s2) {
        return CustomEventInterstitialAdapterFactory.instance.internalCreate(moPubInterstitial, s, s2);
    }
    
    @Deprecated
    public static void setInstance(final CustomEventInterstitialAdapterFactory instance) {
        CustomEventInterstitialAdapterFactory.instance = instance;
    }
    
    protected CustomEventInterstitialAdapter internalCreate(final MoPubInterstitial moPubInterstitial, final String s, final String s2) {
        return new CustomEventInterstitialAdapter(moPubInterstitial, s, s2);
    }
}
