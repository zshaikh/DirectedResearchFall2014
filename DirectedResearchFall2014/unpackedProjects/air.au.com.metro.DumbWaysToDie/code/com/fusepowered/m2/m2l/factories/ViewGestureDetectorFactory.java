package com.fusepowered.m2.m2l.factories;

import android.content.*;
import android.view.*;
import com.fusepowered.m2.m2l.*;

public class ViewGestureDetectorFactory
{
    protected static ViewGestureDetectorFactory instance;
    
    static {
        ViewGestureDetectorFactory.instance = new ViewGestureDetectorFactory();
    }
    
    public static ViewGestureDetector create(final Context context, final View view, final AdConfiguration adConfiguration) {
        return ViewGestureDetectorFactory.instance.internalCreate(context, view, adConfiguration);
    }
    
    @Deprecated
    public static void setInstance(final ViewGestureDetectorFactory instance) {
        ViewGestureDetectorFactory.instance = instance;
    }
    
    protected ViewGestureDetector internalCreate(final Context context, final View view, final AdConfiguration adConfiguration) {
        return new ViewGestureDetector(context, view, adConfiguration);
    }
}
