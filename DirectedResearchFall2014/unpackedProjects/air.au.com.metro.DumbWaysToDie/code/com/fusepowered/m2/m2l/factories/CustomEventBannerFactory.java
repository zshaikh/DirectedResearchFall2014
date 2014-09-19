package com.fusepowered.m2.m2l.factories;

import com.fusepowered.m2.m2l.*;
import java.lang.reflect.*;

public class CustomEventBannerFactory
{
    private static CustomEventBannerFactory instance;
    
    static {
        CustomEventBannerFactory.instance = new CustomEventBannerFactory();
    }
    
    public static CustomEventBanner create(final String s) throws Exception {
        return CustomEventBannerFactory.instance.internalCreate(s);
    }
    
    @Deprecated
    public static void setInstance(final CustomEventBannerFactory instance) {
        CustomEventBannerFactory.instance = instance;
    }
    
    protected CustomEventBanner internalCreate(final String className) throws Exception {
        final Constructor<? extends CustomEventBanner> declaredConstructor = Class.forName(className).asSubclass(CustomEventBanner.class).getDeclaredConstructor((Class<?>[])null);
        declaredConstructor.setAccessible(true);
        return (CustomEventBanner)declaredConstructor.newInstance(new Object[0]);
    }
}
