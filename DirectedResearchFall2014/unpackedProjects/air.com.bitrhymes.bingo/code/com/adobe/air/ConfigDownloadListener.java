package com.adobe.air;

import android.os.*;
import android.content.*;
import android.app.*;
import android.content.res.*;

class ConfigDownloadListener
{
    private static String LOG_TAG;
    private static ConfigDownloadListener sListener;
    private long lastPauseTime;
    private AndroidActivityWrapper.StateChangeCallback mActivityStateCB;
    private BroadcastReceiver mDownloadConfigRecv;
    
    static {
        ConfigDownloadListener.sListener = null;
        ConfigDownloadListener.LOG_TAG = "ConfigDownloadListener";
    }
    
    private ConfigDownloadListener() {
        super();
        this.mDownloadConfigRecv = new BroadcastReceiver() {
            private String LOG_TAG = "ConfigDownloadListenerBR";
            
            public void onReceive(final Context context, final Intent intent) {
                if (intent.getAction().equals("com.adobe.air.DownloadConfigComplete")) {
                    int n;
                    if (this.isInitialStickyBroadcast()) {
                        final Bundle extras = intent.getExtras();
                        n = 0;
                        if (extras != null) {
                            final long n2 = lcmp(ConfigDownloadListener.this.lastPauseTime, extras.getLong("com.adobe.air.DownloadConfigCompleteTime"));
                            n = 0;
                            if (n2 < 0) {
                                n = 1;
                            }
                        }
                    }
                    else {
                        n = 1;
                    }
                    if (n != 0) {
                        final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
                        if (getAndroidActivityWrapper != null) {
                            getAndroidActivityWrapper.applyDownloadedConfig();
                        }
                    }
                }
            }
        };
        this.mActivityStateCB = new AndroidActivityWrapper.StateChangeCallback() {
            @Override
            public void onActivityStateChanged(final ActivityState activityState) {
                final Activity activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
                if (activityState == ActivityState.PAUSED) {
                    activity.unregisterReceiver(ConfigDownloadListener.this.mDownloadConfigRecv);
                    ConfigDownloadListener.this.lastPauseTime = SystemClock.uptimeMillis();
                }
                else if (activityState == ActivityState.RESUMED) {
                    activity.registerReceiver(ConfigDownloadListener.this.mDownloadConfigRecv, new IntentFilter("com.adobe.air.DownloadConfigComplete"));
                }
            }
            
            @Override
            public void onConfigurationChanged(final Configuration configuration) {
            }
        };
        this.lastPauseTime = SystemClock.uptimeMillis();
        AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityStateChangeListner(this.mActivityStateCB);
    }
    
    public static ConfigDownloadListener GetConfigDownloadListener() {
        if (ConfigDownloadListener.sListener == null) {
            ConfigDownloadListener.sListener = new ConfigDownloadListener();
        }
        return ConfigDownloadListener.sListener;
    }
}
