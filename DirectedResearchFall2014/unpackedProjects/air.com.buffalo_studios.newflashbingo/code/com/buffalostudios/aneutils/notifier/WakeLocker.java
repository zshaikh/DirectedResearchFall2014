package com.buffalostudios.aneutils.notifier;

import android.content.*;
import android.os.*;

public class WakeLocker
{
    private static final String TAG = "WakeLocker";
    private static PowerManager$WakeLock _wakeLock;
    
    static {
        WakeLocker._wakeLock = null;
    }
    
    public static void acquire(final Context context) {
        if (WakeLocker._wakeLock == null || !WakeLocker._wakeLock.isHeld()) {
            WakeLocker._wakeLock = ((PowerManager)context.getSystemService("power")).newWakeLock(536870913, "WakeLocker");
            if (WakeLocker._wakeLock != null && !WakeLocker._wakeLock.isHeld()) {
                WakeLocker._wakeLock.acquire();
            }
        }
    }
    
    public static void release() {
        if (WakeLocker._wakeLock != null) {
            WakeLocker._wakeLock.release();
            WakeLocker._wakeLock = null;
        }
    }
}
