package com.inmobi.adtracker.androidsdk;

import com.inmobi.commons.*;
import com.inmobi.adtracker.androidsdk.impl.net.*;
import com.inmobi.adtracker.androidsdk.impl.*;
import android.content.*;
import com.inmobi.commons.internal.*;

public class IMAdTracker
{
    private static IMAdTracker a;
    
    public static IMAdTracker getInstance() {
        synchronized (IMAdTracker.class) {
            if (!"3.6.1".equals(IMCommonUtil.getReleaseVersion())) {
                throw new IMAdTrackerException("SDK Bundle mismatch. Ad Tracker SDK version : 2.5.1, IMCommons SDK version : 3.6.1.Please add Ad Tracker SDK and IMCommons SDK jars from the latest bundle");
            }
        }
        if (IMAdTracker.a == null) {
            IMAdTracker.a = new IMAdTracker();
        }
        // monitorexit(IMAdTracker.class)
        return IMAdTracker.a;
    }
    
    public void init(final Context appContext, final String s) {
        if (appContext == null) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Application Context NULL");
            throw new IMAdTrackerException("context cannot be null");
        }
        if (s == null) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "APP ID Cannot be NULL");
            throw new IMAdTrackerException("appId cannot be null");
        }
        if ("" == s.trim()) {
            throw new IMAdTrackerException("appId cannot be blank");
        }
        IMLog.debug("IMAdTrackerSDK_V_2_5_1", "IMAdtracker init successfull");
        Utils.setAppContext(appContext);
        IMFileOperations.setPreferences(appContext, "IMAdTrackerStatusUpload", "appId", s);
        if (!Utils.checkPermManifest()) {
            throw new IMAdTrackerException("Add android.permission.INTERNET and android.permission.ACCESS_NETWORK_STATE permission in Android manifest");
        }
        NetworkInterface.init();
        WebViewLoader.initializeWebview();
        appContext.registerReceiver((BroadcastReceiver)new ConnBroadcastReciever(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
    
    public void reportAppDownloadGoal() {
        this.reportInternalGoals("download");
    }
    
    public void reportCustomGoal(final String anObject) {
        if ("download".equals(anObject)) {
            throw new IMAdTrackerException("Download Goal should be reported using reportAppDownloadGoal()..");
        }
        this.reportInternalGoals(anObject);
    }
    
    protected boolean reportInternalGoals(final String s) {
        final String preferences = IMFileOperations.getPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "appId");
        if (Utils.getAppContext() == null || preferences == null || "" == preferences.trim()) {
            throw new IMAdTrackerException("Please call init() with valid context and app id");
        }
        if (s == null || "".equals(s.trim())) {
            throw new IMAdTrackerException("Please pass a valid GoalName");
        }
        if ("download".equals(s) && Utils.checkDownloadGoalUploaded()) {
            return false;
        }
        if ("download".equals(s)) {
            if (!Utils.checkDownloadGoalAdded()) {
                IMFileOperations.setPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "insertStatus", true);
                IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Goal Queued " + s);
                NetworkInterface.goalEventList.addGoal(s, 1, 0L);
            }
        }
        else {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Goal Queued " + s);
            NetworkInterface.goalEventList.addGoal(s, 1, 0L);
        }
        if (!InternalSDKUtil.checkNetworkAvailibility(Utils.getAppContext())) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Not connected to Internet");
            return false;
        }
        final String odin1 = InternalSDKUtil.getODIN1(InternalSDKUtil.getAndroidId(Utils.getAppContext()));
        if (odin1 == null) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "ODIN1 generation failed");
        }
        final String androidIdMD5 = InternalSDKUtil.getAndroidIdMD5(Utils.getAppContext());
        if (androidIdMD5 == null) {
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "UDID generation failed");
        }
        NetworkInterface.reportToServer(preferences, odin1, androidIdMD5);
        return true;
    }
}
