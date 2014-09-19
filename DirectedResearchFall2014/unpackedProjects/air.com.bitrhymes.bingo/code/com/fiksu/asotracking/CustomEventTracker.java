package com.fiksu.asotracking;

import android.content.*;

public class CustomEventTracker extends EventTracker
{
    public CustomEventTracker(final Context context) {
        super(context, FiksuEventType.CUSTOM_EVENT_01.getName());
    }
}
