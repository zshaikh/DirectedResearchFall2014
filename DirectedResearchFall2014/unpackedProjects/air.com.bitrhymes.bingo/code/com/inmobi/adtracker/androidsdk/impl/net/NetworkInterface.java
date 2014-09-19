package com.inmobi.adtracker.androidsdk.impl.net;

import java.util.concurrent.atomic.*;
import android.os.*;
import java.util.*;
import com.inmobi.adtracker.androidsdk.impl.*;
import com.inmobi.commons.internal.*;

public class NetworkInterface
{
    private static AtomicBoolean a;
    public static GoalList goalEventList;
    public static AtomicBoolean isSynced;
    public static boolean lastUploadStatus;
    public static Handler mainHandler;
    public static Thread networkThread;
    
    static {
        NetworkInterface.a = null;
        NetworkInterface.lastUploadStatus = false;
    }
    
    private static boolean c() {
        try {
            final String preferences = IMFileOperations.getPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "timetoLive");
            final String preferences2 = IMFileOperations.getPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "iat_ids");
            final Calendar instance = Calendar.getInstance();
            instance.setTime(new Date());
            instance.getTime().toString();
            if (preferences == null || preferences2 == null) {
                return false;
            }
            final Date time = instance.getTime();
            instance.add(11, Integer.parseInt(preferences));
            if (instance.getTime().after(time)) {
                return true;
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public static void deinit() {
        if (NetworkInterface.goalEventList != null) {
            NetworkInterface.goalEventList.saveGoals();
        }
    }
    
    public static void init() {
        NetworkInterface.goalEventList = new GoalList();
        NetworkInterface.goalEventList = NetworkInterface.goalEventList.getLoggedGoals();
        if (NetworkInterface.a == null) {
            NetworkInterface.a = new AtomicBoolean(false);
        }
        NetworkInterface.isSynced = new AtomicBoolean(false);
        NetworkInterface.mainHandler = new Handler();
        NetworkInterface.lastUploadStatus = true;
    }
    
    public static void reportOnConnected() {
        final String preferences = IMFileOperations.getPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "appId");
        final String odin1 = InternalSDKUtil.getODIN1(InternalSDKUtil.getAndroidId(Utils.getAppContext()));
        final String androidIdMD5 = InternalSDKUtil.getAndroidIdMD5(Utils.getAppContext());
        if (NetworkInterface.goalEventList != null) {
            NetworkInterface.goalEventList.getLoggedGoals();
        }
        if (preferences != null && NetworkInterface.goalEventList != null && !NetworkInterface.goalEventList.isEmpty()) {
            reportToServer(preferences, odin1, androidIdMD5);
        }
    }
    
    public static ConfigConstants.StatusCode reportToServer(final String s, final String s2, final String s3) {
        synchronized (NetworkInterface.class) {
            if (NetworkInterface.a.compareAndSet(false, true)) {
                (NetworkInterface.networkThread = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        while (!NetworkInterface.isSynced.get()) {
                            NetworkInterface.isSynced.set(true);
                            if (NetworkInterface.goalEventList == null || NetworkInterface.goalEventList.isEmpty()) {
                                NetworkInterface.a.set(false);
                                return;
                            }
                            Label_0096: {
                                break Label_0096;
                                try {
                                    do {
                                        final Goal goal = NetworkInterface.goalEventList.elementAt(0);
                                        final String goalName = goal.getGoalName();
                                        final int goalCount = goal.getGoalCount();
                                        final long retryTime = goal.getRetryTime();
                                        if (!c()) {
                                            NetworkInterface.reportUsingWebview(s, s2, s3, goalName, goalCount, retryTime);
                                        }
                                        else {
                                            NetworkInterface.reportUsingNetwork(s, s2, s3, goalName, goalCount, retryTime);
                                        }
                                    } while (!NetworkInterface.goalEventList.isEmpty());
                                    NetworkInterface.a.set(false);
                                }
                                catch (Exception ex) {
                                    NetworkInterface.a.set(false);
                                }
                            }
                        }
                    }
                })).setPriority(1);
                NetworkInterface.networkThread.start();
            }
            return ConfigConstants.StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS;
        }
    }
    
    public static void reportUsingNetwork(final String s, final String s2, final String s3, final String str, final int n, final long n2) {
        while (true) {
            while (true) {
                try {
                    // monitorenter(networkThread)
                    Label_0104: {
                        if (!NetworkInterface.lastUploadStatus) {
                            break Label_0104;
                        }
                        long lng = 0L;
                        if (lng > 0L) {
                            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Retrying goalname: " + str + " after " + lng + " secs");
                        }
                        final Thread networkThread = NetworkInterface.networkThread;
                        final long n3 = lng * 1000L;
                        try {
                            Thread.sleep(n3);
                            // monitorexit(networkThread)
                            if (!InternalSDKUtil.checkNetworkAvailibility(Utils.getAppContext())) {
                                IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Network Unavailable !!!");
                                NetworkInterface.lastUploadStatus = false;
                                Utils.increaseRetryTime(str, n);
                                return;
                            }
                            break;
                            // iftrue(Label_0390:, n2 <= 10800000L)
                            lng = 10800000L;
                        }
                        finally {
                        }
                        // monitorexit(networkThread)
                    }
                }
                catch (Exception ex) {
                    NetworkInterface.lastUploadStatus = false;
                    NetworkInterface.goalEventList.remove(0);
                    NetworkInterface.goalEventList.addGoal(str, n, n2);
                    Utils.increaseRetryTime(str, n);
                    IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Failed to upload goal: " + str);
                    IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Failed to report goal: ", ex);
                    return;
                }
                break;
                Label_0390: {
                    final long lng = n2;
                }
                continue;
            }
        }
        final String preferences = IMFileOperations.getPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "iat_ids");
        Enum<ConfigConstants.StatusCode> enum1 = ConfigConstants.StatusCode.APP_ANALYTICS_UPLOAD_FAILURE;
        if (!"download".equals(str)) {
            enum1 = HTTPRequestResponseBuilder.sendHTTPRequest(s, s2, s3, str, n, preferences);
        }
        else if ("download".equals(str) && !Utils.checkDownloadGoalUploaded()) {
            enum1 = HTTPRequestResponseBuilder.sendHTTPRequest(s, s2, s3, str, n, preferences);
        }
        if (ConfigConstants.StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS == enum1) {
            NetworkInterface.lastUploadStatus = true;
            NetworkInterface.goalEventList.remove(0);
            NetworkInterface.goalEventList.saveGoals();
            if ("download".equals(str)) {
                Utils.updateStatus();
            }
            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Successfully uploaded goal: " + str);
            return;
        }
        if (ConfigConstants.StatusCode.RELOAD_WEBVIEW_ERROR == enum1) {
            NetworkInterface.lastUploadStatus = false;
            return;
        }
        NetworkInterface.lastUploadStatus = false;
        NetworkInterface.goalEventList.remove(0);
        NetworkInterface.goalEventList.addGoal(str, n, n2);
        Utils.increaseRetryTime(str, n);
        IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Failed to upload goal: " + str);
    }
    
    public static void reportUsingWebview(final String s, final String s2, final String s3, final String s4, final int n, final long n2) {
        while (true) {
            while (true) {
                Label_0142: {
                    try {
                        // monitorenter(networkThread)
                        Label_0104: {
                            if (!NetworkInterface.lastUploadStatus) {
                                break Label_0104;
                            }
                            long lng = 0L;
                            if (lng > 0L) {
                                IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Retrying goalname: " + s4 + " after " + lng + " secs");
                            }
                            final Thread networkThread = NetworkInterface.networkThread;
                            final long n3 = lng * 1000L;
                            try {
                                Thread.sleep(n3);
                                // monitorexit(networkThread)
                                if (!InternalSDKUtil.checkNetworkAvailibility(Utils.getAppContext())) {
                                    IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Network Unavailable !!!");
                                    NetworkInterface.lastUploadStatus = false;
                                    Utils.increaseRetryTime(s4, n);
                                    return;
                                }
                                break Label_0142;
                                // iftrue(Label_0287:, n2 <= 10800000L)
                                lng = 10800000L;
                            }
                            finally {
                            }
                            // monitorexit(networkThread)
                        }
                    }
                    catch (Exception ex) {
                        IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Failed to load webview Exception", ex);
                        return;
                    }
                }
                WebViewLoader.saveCurrentGoal(s4, n, n2);
                HTTPRequestResponseBuilder.saveWebviewRequestParam(s, s2, s3, s4, n);
                if (WebViewLoader.loadingWebview.compareAndSet(false, true)) {
                    WebViewLoader.loadWebview();
                }
                synchronized (NetworkInterface.networkThread) {
                    NetworkInterface.networkThread.wait(300000L);
                    // monitorexit(NetworkInterface.networkThread)
                    if (WebViewLoader.mWebview != null && WebViewLoader.loadingWebview.compareAndSet(true, false)) {
                        NetworkInterface.lastUploadStatus = false;
                        WebViewLoader.mWebview.stopLoading();
                        NetworkInterface.goalEventList.remove(0);
                        NetworkInterface.goalEventList.addGoal(s4, n, n2);
                        Utils.increaseRetryTime(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount());
                        IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Network Timeout !!!Failed to upload goal: " + s4);
                    }
                    return;
                }
                Label_0287: {
                    final long lng = n2;
                }
                continue;
            }
        }
    }
}
