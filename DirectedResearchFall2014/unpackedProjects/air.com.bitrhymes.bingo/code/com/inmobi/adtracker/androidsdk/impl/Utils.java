package com.inmobi.adtracker.androidsdk.impl;

import com.inmobi.commons.internal.*;
import com.inmobi.adtracker.androidsdk.impl.net.*;
import android.content.*;

public class Utils
{
    private static Context a;
    
    public static boolean checkDownloadGoalAdded() {
        if (getAppContext() == null) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Application Context NULL cannot checkStatusUpload");
            return false;
        }
        return IMFileOperations.getBooleanPreferences(getAppContext(), "IMAdTrackerStatusUpload", "insertStatus");
    }
    
    public static boolean checkDownloadGoalUploaded() {
        if (getAppContext() == null) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Application Context NULL cannot checkStatusUpload");
            return false;
        }
        return IMFileOperations.getBooleanPreferences(getAppContext(), "IMAdTrackerStatusUpload", "uploadStatus");
    }
    
    public static boolean checkPermManifest() {
        try {
            final int checkCallingOrSelfPermission = getAppContext().checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE");
            final int checkCallingOrSelfPermission2 = getAppContext().checkCallingOrSelfPermission("android.permission.INTERNET");
            if (checkCallingOrSelfPermission == 0 && checkCallingOrSelfPermission2 == 0) {
                return true;
            }
        }
        catch (Exception ex) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Cant check permissions", ex);
            return false;
        }
        return false;
    }
    
    public static Context getAppContext() {
        return Utils.a;
    }
    
    public static boolean increaseRetryTime(final String s, final int n) {
        while (true) {
            if (s != null) {
                try {
                    if ("".equals(s.trim())) {
                        IMLog.internal("IMAdTrackerSDK_V_2_5_1", "GoalName cannot be null");
                        return false;
                    }
                    final Goal goal = NetworkInterface.goalEventList.getGoal(s);
                    if (goal != null) {
                        final long retryTime = goal.getRetryTime();
                        long retryTime2;
                        if (retryTime < 10800000L) {
                            retryTime2 = 30L + retryTime * 2L;
                            if (retryTime2 > 10800000L) {
                                retryTime2 = 10800000L;
                            }
                        }
                        else {
                            if (retryTime / 10800000L == 100L) {
                                NetworkInterface.goalEventList.removeGoal(s, n);
                            }
                            retryTime2 = retryTime + 10800000L;
                        }
                        goal.setRetryTime(retryTime2);
                        NetworkInterface.goalEventList.saveGoals();
                        return true;
                    }
                }
                catch (Exception ex) {
                    IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Cant increase retry time", ex);
                    return false;
                }
                return false;
            }
            continue;
        }
    }
    
    public static boolean resetStatus() {
        if (getAppContext() == null) {
            return false;
        }
        IMFileOperations.setPreferences(getAppContext(), "IMAdTrackerStatusUpload", "uploadStatus", false);
        return true;
    }
    
    public static boolean sendBroadcastMessage(final int n) {
        try {
            final Intent intent = new Intent();
            intent.setAction("action.inmobi.ADTRACKER");
            intent.putExtra("iatError", n);
            Utils.a.sendBroadcast(intent);
            return true;
        }
        catch (Exception ex) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Cant send test broadcast", ex);
            return false;
        }
    }
    
    public static void setAppContext(final Context a) {
        Utils.a = a;
    }
    
    public static boolean updateStatus() {
        if (getAppContext() == null) {
            return false;
        }
        IMFileOperations.setPreferences(getAppContext(), "IMAdTrackerStatusUpload", "uploadStatus", true);
        return true;
    }
}
