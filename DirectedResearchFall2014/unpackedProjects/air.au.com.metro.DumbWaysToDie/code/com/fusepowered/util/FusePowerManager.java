package com.fusepowered.util;

import android.content.*;
import android.os.*;

public class FusePowerManager
{
    public static boolean isSleepMode(final Context context) {
        return !((PowerManager)context.getSystemService("power")).isScreenOn();
    }
}
