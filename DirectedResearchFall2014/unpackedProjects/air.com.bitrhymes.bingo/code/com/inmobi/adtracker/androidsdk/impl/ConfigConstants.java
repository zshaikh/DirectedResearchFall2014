package com.inmobi.adtracker.androidsdk.impl;

public class ConfigConstants
{
    public static final String ADTRACKER_ERROR = "iatError";
    public static final String ANDROID = "and";
    public static final String APPVER = "appVer";
    public static final String APP_ID = "appId";
    public static final String BLANK = "";
    public static final String CONNECTIVITY_INTENT_ACTION = "android.net.conn.CONNECTIVITY_CHANGE";
    public static final String DEBUG_TAG = "IMAdTrackerSDK_V_2_5_1";
    public static final String ERROR = "err";
    public static final String ERRORCODE = "errcode";
    public static final String ERRORMSG = "errmsg";
    public static final String GOALCOUNT = "goalCount";
    public static final String GOALNAME = "goalName";
    public static final String GOAL_DOWNLOAD = "download";
    public static final String IAT = "iat";
    public static final int IATLENGTH = 7;
    public static final String IATNAMESPACE = "iatsdk";
    public static final String IAT_BUILD_VERSION = "2.5.1";
    public static final String IMAdTracker_DOWNLOAD_INSERT_STATUS = "insertStatus";
    public static final String IMAdTracker_DOWNLOAD_STATUS = "uploadStatus";
    public static final String IMCOMMONS_RELEASE_VERSION = "3.6.1";
    public static final String IMLOG_FILE = "eventlog";
    public static final String IMPREF_FILE = "IMAdTrackerStatusUpload";
    public static final String INMOBI_SDK_RELEASE_VERSION = "2.5.1";
    public static final long MAX_RETRYCOUNT = 100L;
    public static final long MAX_WAIT = 10800000L;
    public static final String MSG_APP_CONTEXT_NULL = "context cannot be null";
    public static final String MSG_APP_ID_EMPTY = "appId cannot be blank";
    public static final String MSG_APP_ID_NULL = "appId cannot be null";
    public static final String MSG_INITIALIZATION_INCOMPLETE = "Please call init() with valid context and app id";
    public static final String MSG_INVALID_CUSTOM_GOAL = "Download Goal should be reported using reportAppDownloadGoal()..";
    public static final String MSG_INVALID_GOAL = "Please pass a valid GoalName";
    public static final String MSG_PERMISSION_MISSING = "Add android.permission.INTERNET and android.permission.ACCESS_NETWORK_STATE permission in Android manifest";
    public static final String MSG_RELEASE_VERSION_MISMATCH = "SDK Bundle mismatch. Ad Tracker SDK version : 2.5.1, IMCommons SDK version : 3.6.1.Please add Ad Tracker SDK and IMCommons SDK jars from the latest bundle";
    public static final String RESPONSE = "res";
    public static final String SDKREL_VER = "sdkRelVer";
    public static final String SDKVER = "sdkVer";
    public static final int SERVER_BADREQUEST = 6002;
    public static final int SERVER_INVALIDAPPID = 6003;
    public static final int SERVER_NOERROR = 6000;
    public static final int SERVER_RELOAD_WEBVIEW = 6001;
    public static final String SOURCE = "src";
    public static final String TESTMODE_INTENT = "action.inmobi.ADTRACKER";
    public static final int TIMEOUT = 300000;
    public static final String TIMESTAMP = "timeStamp";
    public static final String TIMETOLIVE = "timetoLive";
    public static boolean TestMode = false;
    public static final String UDID = "udid";
    public static final String UIDKEY = "u-id-key";
    public static final String UIDMAP = "u-id-map";
    public static final String UKEYVER = "u-key-ver";
    public static final String VALIDIDS = "iat_ids";
    public static final int WEBVIEW_INVALIDJSON = 5005;
    public static final int WEBVIEW_INVALIDPARAM = 5001;
    public static final int WEBVIEW_NOERROR = 5000;
    public static final int WEBVIEW_SERVERERROR = 5004;
    public static final int WEBVIEW_TIMEOUT = 5003;
    public static final int WEBVIEW_XMLHTTPSUPPORT = 5002;
    public static final String downloadServerURL = "https://d.appsdt.com/download/tracker/?";
    public static final String jsServerURL = "https://d.appsdt.com/sdkdwnldbeacon.html";
    public static String testDownloadServerURL;
    public static String testJsServerURL;
    
    static {
        ConfigConstants.TestMode = false;
        ConfigConstants.testDownloadServerURL = "http://sdt1.corp.inmobi.com:8080/download/tracker?";
        ConfigConstants.testJsServerURL = "http://sdt1.corp.inmobi.com:8080/sdkdwnldbeacon.html";
    }
    
    public enum StatusCode
    {
        APP_ANALYTICS_PREVIOUSLY_UPLOADED("APP_ANALYTICS_PREVIOUSLY_UPLOADED", 2), 
        APP_ANALYTICS_UPLOAD_FAILURE("APP_ANALYTICS_UPLOAD_FAILURE", 4), 
        APP_ANALYTICS_UPLOAD_SUCCESS("APP_ANALYTICS_UPLOAD_SUCCESS", 0), 
        APP_CONTEXT_NULL("APP_CONTEXT_NULL", 1), 
        APP_NOT_CONNECTED("APP_NOT_CONNECTED", 5), 
        ODIN1_NULL("ODIN1_NULL", 3), 
        RELOAD_WEBVIEW_ERROR("RELOAD_WEBVIEW_ERROR", 6);
        
        static {
            a = new StatusCode[] { StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS, StatusCode.APP_CONTEXT_NULL, StatusCode.APP_ANALYTICS_PREVIOUSLY_UPLOADED, StatusCode.ODIN1_NULL, StatusCode.APP_ANALYTICS_UPLOAD_FAILURE, StatusCode.APP_NOT_CONNECTED, StatusCode.RELOAD_WEBVIEW_ERROR };
        }
    }
}
