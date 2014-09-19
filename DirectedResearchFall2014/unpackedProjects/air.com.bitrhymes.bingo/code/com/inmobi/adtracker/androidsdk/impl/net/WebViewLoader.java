package com.inmobi.adtracker.androidsdk.impl.net;

import java.util.concurrent.atomic.*;
import java.net.*;
import org.json.*;
import com.inmobi.commons.internal.*;
import android.webkit.*;
import android.annotation.*;
import com.inmobi.adtracker.androidsdk.impl.*;

public class WebViewLoader
{
    public static AtomicBoolean loadingWebview;
    public static Goal mCurrentEvent;
    public static WebView mWebview;
    
    static {
        WebViewLoader.mWebview = null;
        WebViewLoader.mCurrentEvent = null;
    }
    
    private static a c(final String s) {
        a a;
        String s2;
        int a2;
        while (true) {
            a = new a();
            while (true) {
                int n = 0;
                Label_0348: {
                    try {
                        final String[] split = s.split("&");
                        int i = 0;
                        s2 = null;
                        a2 = 0;
                        while (i < split.length) {
                            final String[] split2 = split[i].split("=");
                            int int1 = a2;
                            String s3 = s2;
                            n = 0;
                            if (n >= split2.length) {
                                ++i;
                                s2 = s3;
                                a2 = int1;
                            }
                            else {
                                if ("err".equals(split2[n])) {
                                    int1 = Integer.parseInt(split2[n + 1]);
                                    break Label_0348;
                                }
                                if ("res".equals(split2[n])) {
                                    s3 = split2[n + 1];
                                }
                                break Label_0348;
                            }
                        }
                        a.a = a2;
                        a.b = s2;
                        if (5003 == a2) {
                            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Webview Timeout " + s2);
                            return a;
                        }
                        if (5001 == a2) {
                            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Invalid params passed " + s2);
                            return a;
                        }
                    }
                    catch (Exception ex) {
                        IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Check content Exception", ex);
                        return null;
                    }
                    break;
                }
                ++n;
                continue;
            }
        }
        if (5002 == a2) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "XMLHTTP request not supported " + s2);
            return a;
        }
        if (5005 == a2) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Invalid JSON Response " + s2);
            return a;
        }
        if (5004 == a2) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Webview Server Error " + s2);
            return a;
        }
        if (5000 == a2) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Webview response " + URLDecoder.decode(s2, "utf-8"));
        }
        return a;
    }
    
    private static void d(final String s) {
    Label_0113_Outer:
        while (true) {
            while (true) {
                int int2 = 0;
                Label_0389: {
                    try {
                        final JSONObject jsonObject = new JSONObject(URLDecoder.decode(s, "utf-8"));
                        final JSONObject jsonObject2 = jsonObject.getJSONObject("iat_ids");
                        final String string = jsonObject.getString("errmsg");
                        final int int1 = jsonObject.getInt("timetoLive");
                        int2 = jsonObject.getInt("errcode");
                        if (int2 != 6000) {
                            NetworkInterface.lastUploadStatus = false;
                            NetworkInterface.goalEventList.remove(0);
                            NetworkInterface.goalEventList.addGoal(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount(), WebViewLoader.mCurrentEvent.getRetryTime());
                            Utils.increaseRetryTime(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount());
                            final String string2 = null;
                            break Label_0389;
                        }
                        NetworkInterface.lastUploadStatus = true;
                        final String string2 = jsonObject2.toString();
                        if ("download".equals(WebViewLoader.mCurrentEvent.getGoalName())) {
                            Utils.updateStatus();
                        }
                        NetworkInterface.goalEventList.remove(0);
                        NetworkInterface.goalEventList.saveGoals();
                        IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Successfully uploaded goal " + WebViewLoader.mCurrentEvent.getGoalName());
                        break Label_0389;
                        while (true) {
                            IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Download server Error " + int2 + ":" + string);
                            IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Failed to upload goal: " + WebViewLoader.mCurrentEvent.getGoalName());
                            Label_0179: {
                                IMFileOperations.setPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "iat_ids", string2);
                            }
                            IMFileOperations.setPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "timetoLive", Integer.toString(int1));
                            return;
                            continue Label_0113_Outer;
                        }
                    }
                    // iftrue(Label_0179:, int2 == 6000)
                    catch (Exception ex) {
                        IMLog.internal("IMAdTrackerSDK_V_2_5_1", ex.getMessage());
                        NetworkInterface.lastUploadStatus = false;
                        NetworkInterface.goalEventList.remove(0);
                        NetworkInterface.goalEventList.addGoal(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount(), WebViewLoader.mCurrentEvent.getRetryTime());
                        Utils.increaseRetryTime(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount());
                        IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Failed to upload goal: " + WebViewLoader.mCurrentEvent.getGoalName());
                        if ("download".equals(WebViewLoader.mCurrentEvent.getGoalName())) {
                            Utils.resetStatus();
                            return;
                        }
                        break;
                    }
                }
                if (int2 == 6001) {
                    final String string2 = null;
                    continue;
                }
                continue;
            }
        }
    }
    
    public static void deinit() {
        WebViewLoader.mWebview.stopLoading();
        WebViewLoader.mWebview.pauseTimers();
        WebViewLoader.mWebview = null;
    }
    
    @SuppressLint({ "SetJavaScriptEnabled" })
    public static boolean initializeWebview() {
        WebViewLoader.loadingWebview = new AtomicBoolean(false);
        (WebViewLoader.mWebview = new WebView(Utils.getAppContext())).setWebViewClient((WebViewClient)new MyWebViewClient());
        WebViewLoader.mWebview.getSettings().setJavaScriptEnabled(true);
        WebViewLoader.mWebview.getSettings().setCacheMode(2);
        WebViewLoader.mWebview.addJavascriptInterface((Object)new JSInterface(), "iatsdk");
        return true;
    }
    
    public static void loadWebview() {
        try {
            if (WebViewLoader.mWebview == null) {
                NetworkInterface.goalEventList.removeAllElements();
                NetworkInterface.goalEventList = null;
                deinit();
                synchronized (NetworkInterface.networkThread) {
                    NetworkInterface.networkThread.notify();
                    return;
                }
            }
        }
        catch (Exception ex) {
            IMLog.internal("IMAdTrackerSDK_V_2_5_1", ex.toString());
            return;
        }
        NetworkInterface.mainHandler.post((Runnable)new Runnable() {
            @Override
            public void run() {
                if (!ConfigConstants.TestMode) {
                    IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Sending goal: " + WebViewLoader.mCurrentEvent.getGoalName() + " , url: " + "https://d.appsdt.com/sdkdwnldbeacon.html");
                    WebViewLoader.mWebview.loadUrl("https://d.appsdt.com/sdkdwnldbeacon.html");
                    return;
                }
                IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Sending goal: " + WebViewLoader.mCurrentEvent.getGoalName() + " , url: " + ConfigConstants.testJsServerURL);
                WebViewLoader.mWebview.loadUrl(ConfigConstants.testJsServerURL);
            }
        });
    }
    
    public static void saveCurrentGoal(final String s, final int n, final long n2) {
        WebViewLoader.mCurrentEvent = new Goal(s, n, n2);
    }
    
    protected static class JSInterface
    {
        public String getParams() {
            return HTTPRequestResponseBuilder.getWebViewRequestParam();
        }
    }
    
    protected static class MyWebViewClient extends WebViewClient
    {
        public void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
            Label_0114: {
                if (!WebViewLoader.loadingWebview.compareAndSet(true, false)) {
                    break Label_0114;
                }
                NetworkInterface.lastUploadStatus = false;
                NetworkInterface.goalEventList.remove(0);
                NetworkInterface.goalEventList.addGoal(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount(), WebViewLoader.mCurrentEvent.getRetryTime());
                Utils.increaseRetryTime(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount());
                synchronized (NetworkInterface.networkThread) {
                    NetworkInterface.networkThread.notify();
                    // monitorexit(NetworkInterface.networkThread)
                    IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Failed to upload goal: " + WebViewLoader.mCurrentEvent.getGoalName());
                    IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Webview Received Error");
                    super.onReceivedError(webView, n, s, s2);
                }
            }
        }
        
        public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
            webView.loadUrl(s);
            if (!WebViewLoader.loadingWebview.compareAndSet(true, false)) {
                return true;
            }
            Label_0136: {
                if (s.contains("iat")) {
                    final a a = c(s.substring(7));
                    if (a != null) {
                        break Label_0136;
                    }
                    NetworkInterface.lastUploadStatus = false;
                    NetworkInterface.goalEventList.remove(0);
                    NetworkInterface.goalEventList.addGoal(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount(), WebViewLoader.mCurrentEvent.getRetryTime());
                    IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Failed to upload goal: " + WebViewLoader.mCurrentEvent.getGoalName());
                    Utils.increaseRetryTime(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount());
                }
            Block_7_Outer:
                while (true) {
                    synchronized (NetworkInterface.networkThread) {
                        NetworkInterface.networkThread.notify();
                        return true;
                        while (true) {
                            final a a;
                            Utils.sendBroadcastMessage(a.a);
                            continue Block_7_Outer;
                            Label_0275: {
                                d(a.b);
                            }
                            Label_0257: {
                                break Label_0257;
                                IMFileOperations.setPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "errcode", Integer.toString(a.a));
                                NetworkInterface.lastUploadStatus = false;
                                IMFileOperations.setPreferences(Utils.getAppContext(), "IMAdTrackerStatusUpload", "iat_ids", null);
                                NetworkInterface.goalEventList.remove(0);
                                NetworkInterface.goalEventList.addGoal(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount(), WebViewLoader.mCurrentEvent.getRetryTime());
                                Utils.increaseRetryTime(WebViewLoader.mCurrentEvent.getGoalName(), WebViewLoader.mCurrentEvent.getGoalCount());
                                IMLog.debug("IMAdTrackerSDK_V_2_5_1", "Failed to upload goal: " + WebViewLoader.mCurrentEvent.getGoalName());
                            }
                            continue;
                        }
                    }
                    // iftrue(Label_0275:, 5000 == a.a)
                    // iftrue(Label_0120:, !ConfigConstants.TestMode)
                }
            }
        }
    }
    
    private static class a
    {
        public int a;
        public String b;
        
        public a() {
            super();
            this.a = 0;
            this.b = null;
        }
    }
}
