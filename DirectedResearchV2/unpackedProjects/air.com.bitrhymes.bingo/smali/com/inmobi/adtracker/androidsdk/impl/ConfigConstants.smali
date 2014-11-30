.class public Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;
    }
.end annotation


# static fields
.field public static final ADTRACKER_ERROR:Ljava/lang/String; = "iatError"

.field public static final ANDROID:Ljava/lang/String; = "and"

.field public static final APPVER:Ljava/lang/String; = "appVer"

.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final BLANK:Ljava/lang/String; = ""

.field public static final CONNECTIVITY_INTENT_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final DEBUG_TAG:Ljava/lang/String; = "IMAdTrackerSDK_V_2_5_1"

.field public static final ERROR:Ljava/lang/String; = "err"

.field public static final ERRORCODE:Ljava/lang/String; = "errcode"

.field public static final ERRORMSG:Ljava/lang/String; = "errmsg"

.field public static final GOALCOUNT:Ljava/lang/String; = "goalCount"

.field public static final GOALNAME:Ljava/lang/String; = "goalName"

.field public static final GOAL_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final IAT:Ljava/lang/String; = "iat"

.field public static final IATLENGTH:I = 0x7

.field public static final IATNAMESPACE:Ljava/lang/String; = "iatsdk"

.field public static final IAT_BUILD_VERSION:Ljava/lang/String; = "2.5.1"

.field public static final IMAdTracker_DOWNLOAD_INSERT_STATUS:Ljava/lang/String; = "insertStatus"

.field public static final IMAdTracker_DOWNLOAD_STATUS:Ljava/lang/String; = "uploadStatus"

.field public static final IMCOMMONS_RELEASE_VERSION:Ljava/lang/String; = "3.6.1"

.field public static final IMLOG_FILE:Ljava/lang/String; = "eventlog"

.field public static final IMPREF_FILE:Ljava/lang/String; = "IMAdTrackerStatusUpload"

.field public static final INMOBI_SDK_RELEASE_VERSION:Ljava/lang/String; = "2.5.1"

.field public static final MAX_RETRYCOUNT:J = 0x64L

.field public static final MAX_WAIT:J = 0xa4cb80L

.field public static final MSG_APP_CONTEXT_NULL:Ljava/lang/String; = "context cannot be null"

.field public static final MSG_APP_ID_EMPTY:Ljava/lang/String; = "appId cannot be blank"

.field public static final MSG_APP_ID_NULL:Ljava/lang/String; = "appId cannot be null"

.field public static final MSG_INITIALIZATION_INCOMPLETE:Ljava/lang/String; = "Please call init() with valid context and app id"

.field public static final MSG_INVALID_CUSTOM_GOAL:Ljava/lang/String; = "Download Goal should be reported using reportAppDownloadGoal().."

.field public static final MSG_INVALID_GOAL:Ljava/lang/String; = "Please pass a valid GoalName"

.field public static final MSG_PERMISSION_MISSING:Ljava/lang/String; = "Add android.permission.INTERNET and android.permission.ACCESS_NETWORK_STATE permission in Android manifest"

.field public static final MSG_RELEASE_VERSION_MISMATCH:Ljava/lang/String; = "SDK Bundle mismatch. Ad Tracker SDK version : 2.5.1, IMCommons SDK version : 3.6.1.Please add Ad Tracker SDK and IMCommons SDK jars from the latest bundle"

.field public static final RESPONSE:Ljava/lang/String; = "res"

.field public static final SDKREL_VER:Ljava/lang/String; = "sdkRelVer"

.field public static final SDKVER:Ljava/lang/String; = "sdkVer"

.field public static final SERVER_BADREQUEST:I = 0x1772

.field public static final SERVER_INVALIDAPPID:I = 0x1773

.field public static final SERVER_NOERROR:I = 0x1770

.field public static final SERVER_RELOAD_WEBVIEW:I = 0x1771

.field public static final SOURCE:Ljava/lang/String; = "src"

.field public static final TESTMODE_INTENT:Ljava/lang/String; = "action.inmobi.ADTRACKER"

.field public static final TIMEOUT:I = 0x493e0

.field public static final TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field public static final TIMETOLIVE:Ljava/lang/String; = "timetoLive"

.field public static TestMode:Z = false

.field public static final UDID:Ljava/lang/String; = "udid"

.field public static final UIDKEY:Ljava/lang/String; = "u-id-key"

.field public static final UIDMAP:Ljava/lang/String; = "u-id-map"

.field public static final UKEYVER:Ljava/lang/String; = "u-key-ver"

.field public static final VALIDIDS:Ljava/lang/String; = "iat_ids"

.field public static final WEBVIEW_INVALIDJSON:I = 0x138d

.field public static final WEBVIEW_INVALIDPARAM:I = 0x1389

.field public static final WEBVIEW_NOERROR:I = 0x1388

.field public static final WEBVIEW_SERVERERROR:I = 0x138c

.field public static final WEBVIEW_TIMEOUT:I = 0x138b

.field public static final WEBVIEW_XMLHTTPSUPPORT:I = 0x138a

.field public static final downloadServerURL:Ljava/lang/String; = "https://d.appsdt.com/download/tracker/?"

.field public static final jsServerURL:Ljava/lang/String; = "https://d.appsdt.com/sdkdwnldbeacon.html"

.field public static testDownloadServerURL:Ljava/lang/String;

.field public static testJsServerURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;->TestMode:Z

    .line 73
    const-string v0, "http://sdt1.corp.inmobi.com:8080/download/tracker?"

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;->testDownloadServerURL:Ljava/lang/String;

    .line 74
    const-string v0, "http://sdt1.corp.inmobi.com:8080/sdkdwnldbeacon.html"

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants;->testJsServerURL:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
