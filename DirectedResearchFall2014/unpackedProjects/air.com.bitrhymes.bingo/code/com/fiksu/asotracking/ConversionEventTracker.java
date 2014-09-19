package com.fiksu.asotracking;

import android.content.*;

class ConversionEventTracker extends EventTracker
{
    ConversionEventTracker(final Context context, final String s) {
        super(context, FiksuEventType.CONVERSION.getName());
        this.addParameter(FiksuEventParameter.TVALUE, s);
    }
}
