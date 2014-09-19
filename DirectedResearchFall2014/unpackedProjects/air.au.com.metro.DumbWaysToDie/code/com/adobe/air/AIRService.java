package com.adobe.air;

import android.app.*;
import com.adobe.air.utils.*;
import android.content.*;
import android.os.*;

public class AIRService extends Service
{
    public static final String EXTRA_DOWNLOAD_TIME = "com.adobe.air.DownloadConfigCompleteTime";
    public static final String INTENT_CONFIG_DOWNLOADED = "com.adobe.air.DownloadConfigComplete";
    public static final String INTENT_DOWNLOAD_CONFIG = "com.adobe.air.DownloadConfig";
    private static final String LOG_TAG = "AIRService";
    private static AIRService sServiceInstance;
    private final IBinder mBinder;
    private Entrypoints mEntrypoints;
    private boolean mPlayerInitialized;
    
    static {
        AIRService.sServiceInstance = null;
    }
    
    public AIRService() {
        super();
        this.mEntrypoints = null;
        this.mPlayerInitialized = false;
        this.mBinder = (IBinder)new DummyBinder();
    }
    
    public static boolean IsRunningInServiceContext() {
        return getAIRService() != null;
    }
    
    private void downloadConfig() {
        if (!this.mPlayerInitialized) {
            this.mPlayerInitialized = true;
            if (!this.mEntrypoints.EntryDownloadConfig(this.getApplicationContext(), Utils.getRuntimePackageName())) {
                this.downloadDone(false);
            }
        }
    }
    
    public static AIRService getAIRService() {
        return AIRService.sServiceInstance;
    }
    
    private Entrypoints getEntrypoints() {
        return this.mEntrypoints;
    }
    
    public void downloadDone(final boolean b) {
        if (b) {
            final Intent intent = new Intent("com.adobe.air.DownloadConfigComplete");
            intent.putExtra("com.adobe.air.DownloadConfigCompleteTime", SystemClock.uptimeMillis());
            this.sendStickyBroadcast(intent);
        }
        this.stopSelf();
    }
    
    public Context getContext() {
        this.getEntrypoints();
        return Entrypoints.s_context;
    }
    
    public IBinder onBind(final Intent intent) {
        return this.mBinder;
    }
    
    public void onCreate() {
        super.onCreate();
        this.mEntrypoints = new Entrypoints();
        AIRService.sServiceInstance = this;
        Utils.setRuntimePackageName(this.getApplicationContext().getPackageName());
    }
    
    public void onDestroy() {
        super.onDestroy();
        AIRService.sServiceInstance = null;
        if (this.mPlayerInitialized) {
            this.mEntrypoints.EntryStopRuntime();
            this.mPlayerInitialized = false;
        }
        if (!Utils.hasCaptiveRuntime()) {
            Process.killProcess(Process.myPid());
        }
    }
    
    public int onStartCommand(final Intent intent, final int n, final int n2) {
        if (intent.getAction().equals("com.adobe.air.DownloadConfig")) {
            this.downloadConfig();
        }
        return 2;
    }
    
    public class DummyBinder extends Binder
    {
        AIRService getService() {
            return AIRService.this;
        }
    }
}
