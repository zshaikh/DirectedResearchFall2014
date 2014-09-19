package com.fusepowered.m2.m2l.util;

import android.os.*;
import java.util.concurrent.*;

public class AsyncTasks
{
    public static <P> void safeExecuteOnExecutor(final AsyncTask<P, ?, ?> asyncTask, final P... array) throws Exception {
        if (asyncTask == null) {
            throw new IllegalArgumentException("Unable to execute null AsyncTask.");
        }
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) {
            new Reflection.MethodBuilder(asyncTask, "executeOnExecutor").addParam(Executor.class, (Executor)AsyncTask.class.getField("THREAD_POOL_EXECUTOR").get(AsyncTask.class)).addParam(Object[].class, array).execute();
            return;
        }
        asyncTask.execute((Object[])array);
    }
}
