package com.fiksu.asotracking;

import android.content.*;

class RegistrationEventTracker extends EventTracker
{
    RegistrationEventTracker(final Context context, final String s) {
        super(context, FiksuEventType.REGISTRATION.getName());
        this.addParameter(FiksuEventParameter.USERNAME, s);
    }
}
