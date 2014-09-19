package com.adobe.air;

import android.content.*;
import android.os.*;
import android.content.pm.*;
import java.io.*;
import com.adobe.air.utils.*;
import android.view.*;

public class Entrypoints
{
    static boolean mCallEntryMain;
    private static customHandler mHandler;
    private static String mLibCorePath;
    public static Context s_context;
    private static String s_packageName;
    
    static {
        Entrypoints.mLibCorePath = null;
        Entrypoints.mHandler = new customHandler();
    }
    
    public static void BroadcastIntent(final String s, final String s2) {
        AndroidActivityWrapper.GetAndroidActivityWrapper().BroadcastIntent(s, s2);
    }
    
    public static String getAppCacheDirectory() {
        return Entrypoints.s_context.getCacheDir().getAbsolutePath();
    }
    
    public static String getPackageName() {
        return Entrypoints.s_packageName;
    }
    
    public static String getRuntimeDataDirectory() {
        return Entrypoints.s_context.getApplicationInfo().dataDir + "/";
    }
    
    public static void registerCallback(final int n, final int arg1, final int arg2) {
        final Message obtain = Message.obtain();
        obtain.what = 1119;
        obtain.arg1 = arg1;
        obtain.arg2 = arg2;
        if (n > 0) {
            Entrypoints.mHandler.sendMessageDelayed(obtain, (long)n);
            return;
        }
        Entrypoints.mHandler.sendMessage(obtain);
    }
    
    public static boolean registerKeyCallback(final int n, final KeyEventData obj) {
        final Message obtain = Message.obtain();
        obtain.what = 1121;
        obtain.obj = obj;
        if (n > 0) {
            Entrypoints.mHandler.sendMessageDelayed(obtain, (long)n);
        }
        else {
            Entrypoints.mHandler.sendMessage(obtain);
        }
        return true;
    }
    
    public static boolean registerTouchCallback(final int n, final TouchEventData obj) {
        final Message obtain = Message.obtain();
        obtain.what = 1120;
        obtain.obj = obj;
        if (n > 0) {
            Entrypoints.mHandler.sendMessageDelayed(obtain, (long)n);
        }
        else {
            Entrypoints.mHandler.sendMessage(obtain);
        }
        return true;
    }
    
    public void EntryApplyDownloadedConfig() {
        this.applyDownloadedConfig();
    }
    
    public boolean EntryDownloadConfig(final Object o, final String s) {
        Entrypoints.s_context = (Context)o;
        final ApplicationInfo applicationInfo = Entrypoints.s_context.getApplicationInfo();
        ApplicationFileManager.setAndroidPackageName(Entrypoints.s_packageName = applicationInfo.packageName);
        ApplicationFileManager.setAndroidAPKPath(applicationInfo.sourceDir);
        final File cacheDir = Entrypoints.s_context.getCacheDir();
        if (cacheDir == null) {
            return false;
        }
        ApplicationFileManager.processAndroidDataPath(cacheDir.getAbsolutePath());
        System.load(this.GetLibCorePath());
        this.EntryDownloadConfigNative(o, s);
        return true;
    }
    
    public native void EntryDownloadConfigNative(final Object p0, final String p1);
    
    public void EntryMain(final String s, final String s2, final String s3, final String s4, final Object o, final Object o2, final Object o3, final Object o4, final Object o5, final boolean b, final boolean b2) {
        Entrypoints.s_context = (Context)o4;
        Entrypoints.s_packageName = ((ApplicationInfo)o3).packageName;
        if (!Entrypoints.mCallEntryMain) {
            Entrypoints.mCallEntryMain = true;
            if (s2.length() > 0 && s.length() > 0) {
                this.EntryMainWrapper(s, s2, s3, s4, o, o2, o4, o5, b, b2);
            }
        }
    }
    
    public native void EntryMainWrapper(final String p0, final String p1, final String p2, final String p3, final Object p4, final Object p5, final Object p6, final Object p7, final boolean p8, final boolean p9);
    
    public void EntryStopRuntime() {
        System.load(this.GetLibCorePath());
        this.EntryStopRuntimeNative();
    }
    
    public native void EntryStopRuntimeNative();
    
    public String GetLibCorePath() {
        if (Entrypoints.mLibCorePath == null) {
            Entrypoints.mLibCorePath = Utils.GetLibCorePath(Entrypoints.s_context);
        }
        return Entrypoints.mLibCorePath;
    }
    
    public native void applyDownloadedConfig();
    
    public void setMainView(final View view) {
        this.setMainViewOnCreate((AIRWindowSurfaceView)view);
    }
    
    public native void setMainViewOnCreate(final AIRWindowSurfaceView p0);
}
