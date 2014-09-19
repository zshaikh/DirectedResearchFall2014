package com.fusepowered.m2.m2l.factories;

import com.fusepowered.m2.m2l.*;
import java.lang.reflect.*;

public class CustomEventInterstitialFactory
{
    private static CustomEventInterstitialFactory instance;
    
    static {
        CustomEventInterstitialFactory.instance = new CustomEventInterstitialFactory();
    }
    
    public static CustomEventInterstitial create(final String s) throws Exception {
        return CustomEventInterstitialFactory.instance.internalCreate(s);
    }
    
    @Deprecated
    public static void setInstance(final CustomEventInterstitialFactory instance) {
        CustomEventInterstitialFactory.instance = instance;
    }
    
    protected CustomEventInterstitial internalCreate(final String className) throws Exception {
        final Constructor<? extends CustomEventInterstitial> declaredConstructor = Class.forName(className).asSubclass(CustomEventInterstitial.class).getDeclaredConstructor((Class<?>[])null);
        declaredConstructor.setAccessible(true);
        return (CustomEventInterstitial)declaredConstructor.newInstance(new Object[0]);
    }
}
