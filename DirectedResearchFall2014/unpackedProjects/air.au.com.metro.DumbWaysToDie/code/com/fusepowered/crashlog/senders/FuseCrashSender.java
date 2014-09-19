package com.fusepowered.crashlog.senders;

import com.fusepowered.crashlog.*;
import android.content.*;
import com.fusepowered.fuseapi.*;

public class FuseCrashSender implements CrashSender
{
    @Override
    public void reportCrashs(final CrashData[] array, final Context context, final CrashSenderCallback crashSenderCallback) {
        if (array == null) {
            throw new NullPointerException("Crashes may not be null");
        }
        if (context == null) {
            throw new NullPointerException("Context may not be null");
        }
        for (final CrashData crashData : array) {
            FuseAPI.registerCrash(crashData.getCrashedThreadState(), crashData.getCrashedThreadName(), crashData.getStackTrace());
        }
        if (crashSenderCallback != null) {
            crashSenderCallback.onCrashSendFinished(true);
        }
    }
}
