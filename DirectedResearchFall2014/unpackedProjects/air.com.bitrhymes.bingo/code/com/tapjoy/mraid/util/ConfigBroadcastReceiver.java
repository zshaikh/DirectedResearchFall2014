package com.tapjoy.mraid.util;

import com.tapjoy.mraid.controller.*;
import android.content.*;

public class ConfigBroadcastReceiver extends BroadcastReceiver
{
    private int mLastOrientation;
    private Display mMraidDisplay;
    
    public ConfigBroadcastReceiver(final Display mMraidDisplay) {
        super();
        this.mMraidDisplay = mMraidDisplay;
        this.mLastOrientation = this.mMraidDisplay.getOrientation();
    }
    
    public void onReceive(final Context context, final Intent intent) {
        if (intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED")) {
            final int orientation = this.mMraidDisplay.getOrientation();
            if (orientation != this.mLastOrientation) {
                this.mLastOrientation = orientation;
                this.mMraidDisplay.onOrientationChanged(this.mLastOrientation);
            }
        }
    }
}
