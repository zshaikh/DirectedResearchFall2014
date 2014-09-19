package com.milkmangames.extensions.android;

import android.content.*;
import android.os.*;

public abstract class WakeLocker
{
    private static PowerManager$WakeLock wakeLock;
    
    public static void acquire(final Context context) {
        if (WakeLocker.wakeLock != null && WakeLocker.wakeLock.isHeld()) {
            WakeLocker.wakeLock.release();
        }
        final PowerManager powerManager = (PowerManager)context.getSystemService("power");
        if (powerManager.isScreenOn()) {
            return;
        }
        (WakeLocker.wakeLock = powerManager.newWakeLock(805306394, "com.milkmangames.customextensions.android.WakeLock")).acquire(10000L);
    }
    
    public static void release() {
    }
}
