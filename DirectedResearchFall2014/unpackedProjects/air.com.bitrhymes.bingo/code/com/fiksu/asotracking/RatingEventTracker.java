package com.fiksu.asotracking;

import android.content.*;

class RatingEventTracker extends EventTracker
{
    RatingEventTracker(final Context context, final String s, final int i) {
        super(context, FiksuEventType.RATING.getName());
        this.addParameter(FiksuEventParameter.TVALUE, s);
        this.addParameter(FiksuEventParameter.IVALUE, Integer.toString(i));
    }
    
    public void uploadEvent() {
        super.uploadEvent();
    }
}
