package com.fusepowered.m2.m2l.factories;

import android.content.*;
import com.fusepowered.m2.m2l.*;

public class MoPubViewFactory
{
    protected static MoPubViewFactory instance;
    
    static {
        MoPubViewFactory.instance = new MoPubViewFactory();
    }
    
    public static MoPubView create(final Context context) {
        return MoPubViewFactory.instance.internalCreate(context);
    }
    
    @Deprecated
    public static void setInstance(final MoPubViewFactory instance) {
        MoPubViewFactory.instance = instance;
    }
    
    protected MoPubView internalCreate(final Context context) {
        return new MoPubView(context);
    }
}
