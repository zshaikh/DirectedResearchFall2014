package com.fiksu.asotracking;

import android.util.*;
import android.app.*;
import java.util.*;
import android.content.*;
import android.os.*;

class ForegroundTester implements Runnable
{
    private static boolean sStarted;
    private final Application mApplication;
    private final LaunchEventTracker mLaunchEventTracker;
    private boolean mPostedLaunch;
    private boolean mWasInForeground;
    
    static {
        ForegroundTester.sStarted = false;
    }
    
    ForegroundTester(final Application mApplication, final LaunchEventTracker mLaunchEventTracker) {
        super();
        this.mWasInForeground = false;
        this.mPostedLaunch = false;
        this.mApplication = mApplication;
        this.mLaunchEventTracker = mLaunchEventTracker;
        synchronized (ForegroundTester.class) {
            if (ForegroundTester.sStarted) {
                Log.e("FiksuTracking", "Already initialized!. Only call FiksuTrackingManager.initialize() once.");
                return;
            }
            ForegroundTester.sStarted = true;
            // monitorexit(ForegroundTester.class)
            new Thread(this).start();
        }
    }
    
    private boolean inForeground() {
        final List runningAppProcesses = ((ActivityManager)this.mApplication.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (final ActivityManager$RunningAppProcessInfo activityManager$RunningAppProcessInfo : runningAppProcesses) {
            if (activityManager$RunningAppProcessInfo != null && activityManager$RunningAppProcessInfo.importance == 100 && this.mApplication.getPackageName().equals(activityManager$RunningAppProcessInfo.processName)) {
                return true;
            }
        }
        return false;
    }
    
    protected void postEvent() {
        if (!this.mPostedLaunch) {
            this.mPostedLaunch = true;
            this.mLaunchEventTracker.uploadEvent();
            return;
        }
        new ResumeEventTracker((Context)this.mApplication).uploadEvent();
    }
    
    @Override
    public void run() {
        try {
            Log.d("FiksuTracking", "ForegroundTester thread started, process: " + Process.myPid());
            Thread.sleep(6000L);
            while (true) {
                Thread.sleep(5000L);
                if (this.mWasInForeground || !this.inForeground()) {
                    goto Label_0072;
                }
                this.postEvent();
                this.mWasInForeground = true;
            }
        }
        catch (InterruptedException ex) {
            Log.i("FiksuTracking", "ForegroundTester thread was interrupted.");
        }
        catch (SecurityException ex2) {
            Log.i("FiksuTracking", "ForegroundTester thread was aborted.");
        }
    }
}
