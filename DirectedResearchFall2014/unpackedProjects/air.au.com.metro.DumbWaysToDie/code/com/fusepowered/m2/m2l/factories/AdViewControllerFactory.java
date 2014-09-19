package com.fusepowered.m2.m2l.factories;

import android.content.*;
import com.fusepowered.m2.m2l.*;

public class AdViewControllerFactory
{
    protected static AdViewControllerFactory instance;
    
    static {
        AdViewControllerFactory.instance = new AdViewControllerFactory();
    }
    
    public static AdViewController create(final Context context, final MoPubView moPubView) {
        return AdViewControllerFactory.instance.internalCreate(context, moPubView);
    }
    
    @Deprecated
    public static void setInstance(final AdViewControllerFactory instance) {
        AdViewControllerFactory.instance = instance;
    }
    
    protected AdViewController internalCreate(final Context context, final MoPubView moPubView) {
        return new AdViewController(context, moPubView);
    }
}
