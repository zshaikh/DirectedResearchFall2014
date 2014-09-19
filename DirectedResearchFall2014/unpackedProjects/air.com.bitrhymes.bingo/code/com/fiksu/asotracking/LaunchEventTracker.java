package com.fiksu.asotracking;

import android.app.*;
import android.content.*;

class LaunchEventTracker extends EventTracker
{
    LaunchEventTracker(final Application application) {
        this(application, false);
    }
    
    LaunchEventTracker(final Application application, final boolean b) {
        String s;
        if (b) {
            s = FiksuEventType.NOTIFICATION_LAUNCH.getName();
        }
        else {
            s = FiksuEventType.LAUNCH.getName();
        }
        super((Context)application, s);
    }
}
