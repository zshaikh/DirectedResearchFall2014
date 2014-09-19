package com.fusepowered.crashlog.handlers;

import com.fusepowered.crashlog.*;
import android.content.*;

public interface CrashHandler
{
    boolean handleCrash(CrashData p0, Context p1);
}
