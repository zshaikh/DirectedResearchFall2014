package com.fusepowered.crashlog;

import android.content.*;
import com.fusepowered.crashlog.handlers.*;
import com.fusepowered.crashlog.senders.*;
import java.io.*;
import com.fusepowered.logging.*;

public class CrashDetector implements UncaughtExceptionHandler
{
    private static final String TAG = "CrashDetector";
    private final Context mContext;
    private CrashHandler mCrashHandler;
    private CrashSender mCrashSender;
    UncaughtExceptionHandler mExternalExceptionHandler;
    private boolean mHasStarted;
    
    public CrashDetector(final Context context) {
        this(null, null, context);
    }
    
    private CrashDetector(final CrashHandler mCrashHandler, final CrashSender mCrashSender, final Context mContext) {
        super();
        this.mExternalExceptionHandler = null;
        this.mHasStarted = false;
        if (mContext == null) {
            throw new NullPointerException("context may not be null");
        }
        this.mContext = mContext;
        if (mCrashHandler != null) {
            this.mCrashHandler = mCrashHandler;
        }
        else {
            this.mCrashHandler = new CacheForStartupCrashHandler(this.mContext);
        }
        if (mCrashSender != null) {
            this.mCrashSender = mCrashSender;
            return;
        }
        this.mCrashSender = new FuseCrashSender();
    }
    
    private String formattedStackTrace(final Throwable t) {
        final StringWriter out = new StringWriter();
        final PrintWriter s = new PrintWriter(out);
        for (Throwable cause = t; cause != null; cause = cause.getCause()) {
            cause.printStackTrace(s);
        }
        return out.toString();
    }
    
    private CrashData gatherCrashData(final Thread thread, final Throwable t) {
        final String name = thread.getName();
        final String name2 = thread.getState().name();
        final String formattedStackTrace = this.formattedStackTrace(t);
        final CrashData crashData = new CrashData();
        crashData.setStackTrace(formattedStackTrace);
        crashData.setCrashedThreadName(name);
        crashData.setCrashedThreadState(name2);
        return crashData;
    }
    
    private void registerAsUncaughtExceptionHandler() {
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            this.mExternalExceptionHandler = defaultUncaughtExceptionHandler;
        }
        Thread.setDefaultUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)this);
        this.mHasStarted = true;
        FuseLog.i("CrashDetector", "Crash Detection enabled");
    }
    
    private void sendCachedCrashes() {
        final CrashData[] cachedCrashes = CacheForStartupCrashHandler.getCachedCrashes(this.mContext);
        if (cachedCrashes == null || cachedCrashes.length == 0) {
            FuseLog.i("CrashDetector", "No cached crashes waiting to be sent");
            return;
        }
        FuseLog.i("CrashDetector", "Found " + cachedCrashes.length + " cached crashes.  Attempting to report them now.");
        this.mCrashSender.reportCrashs(cachedCrashes, this.mContext, (CrashSender.CrashSenderCallback)new CrashSender.CrashSenderCallback() {
            @Override
            public void onCrashSendFinished(final boolean b) {
                if (b) {
                    FuseLog.i("CrashDetector", "Cached crashes sent to server");
                    CacheForStartupCrashHandler.clearCachedCrashes(CrashDetector.this.mContext);
                    return;
                }
                FuseLog.e("CrashDetector", "Couldn't send crashes to server");
            }
        });
    }
    
    public void start() {
        if (this.mHasStarted) {
            FuseLog.e("CrashDetector", "Start called but crash detection has already been enabled.");
            return;
        }
        this.registerAsUncaughtExceptionHandler();
        this.sendCachedCrashes();
    }
    
    @Override
    public void uncaughtException(final Thread thread, final Throwable t) {
        FuseLog.i("CrashDetector", "Crash detected.  Attempting to record it.");
        t.printStackTrace();
        if (this.mCrashHandler != null) {
            final CrashData gatherCrashData = this.gatherCrashData(thread, t);
            FuseLog.i("CrashDetector", "Gathered crash data: " + gatherCrashData.toJson());
            this.mCrashHandler.handleCrash(gatherCrashData, this.mContext);
        }
        if (this.mExternalExceptionHandler != null) {
            FuseLog.i("CrashDetector", "Forwarding exception to external exception handler");
            this.mExternalExceptionHandler.uncaughtException(thread, t);
        }
    }
}
