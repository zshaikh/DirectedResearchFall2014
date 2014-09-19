package com.fiksu.asotracking;

import android.content.*;

class ResumeEventTracker extends EventTracker
{
    ResumeEventTracker(final Context context) {
        this(context, false);
    }
    
    ResumeEventTracker(final Context context, final boolean b) {
        String s;
        if (b) {
            s = FiksuEventType.NOTIFICATION_RESUME.getName();
        }
        else {
            s = FiksuEventType.RESUME.getName();
        }
        super(context, s);
    }
}
