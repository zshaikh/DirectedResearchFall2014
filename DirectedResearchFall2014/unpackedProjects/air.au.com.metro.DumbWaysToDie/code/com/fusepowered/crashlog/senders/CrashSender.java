package com.fusepowered.crashlog.senders;

import com.fusepowered.crashlog.*;
import android.content.*;

public interface CrashSender
{
    void reportCrashs(CrashData[] p0, Context p1, CrashSenderCallback p2);
    
    public interface CrashSenderCallback
    {
        void onCrashSendFinished(boolean p0);
    }
}
