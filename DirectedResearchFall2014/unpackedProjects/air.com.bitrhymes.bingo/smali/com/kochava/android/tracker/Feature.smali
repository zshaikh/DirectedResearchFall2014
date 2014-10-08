.class public Lcom/kochava/android/tracker/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/android/tracker/Feature$CURRENCIES;,
        Lcom/kochava/android/tracker/Feature$INPUTITEMS;,
        Lcom/kochava/android/tracker/Feature$PARAMS;,
        Lcom/kochava/android/tracker/Feature$TrackTask;
    }
.end annotation


# static fields
.field private static final ADD_ENDPOINT:Ljava/lang/String; = "http://bidder.kochava.com/adserver/request/"

.field private static final ADD_URL:Ljava/lang/String; = "http://bidder.kochava.com"

.field protected static final ADLOGTAG:Ljava/lang/String; = "KochavaAds"

.field private static final AD_CLICK_RESET_TIME:I = 0x9c4

.field private static final AD_UNAVAILABLE_CLICK_RESET_TIME:I = 0x9c4

.field private static final API_URL:Ljava/lang/String; = "https://control.kochava.com"

.field public static final ATTRIBUTION_DATA:Ljava/lang/String; = "attributionData"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field protected static final ATTRIBUTION_PREF_DATA:Ljava/lang/String; = "attributionData"

.field protected static final ATTRIBUTION_PREF_NAME:Ljava/lang/String; = "attributionPref"

.field private static final BULK_UPLOAD_LIMIT:I = 0x28

.field private static final DATA_EXPIRATION:I = 0x240c8400

.field private static final ENDPOINT_TRACK:Ljava/lang/String; = "https://control.kochava.com/track/kvTracker.php"

.field private static final FLUSH_RATE:I = 0xea60

.field private static final HTML_FORMAT:Ljava/lang/String; = "<html><body style=\"text-align: center; background-color: black; vertical-align: center;\"><img src = \"%s\" /></body></html>"

.field private static final INIT_ENDPOINT:Ljava/lang/String; = "https://control.kochava.com/track/kvinit"

.field private static final INIT_FORCE_TIME:I = 0x927c0

.field public static final LINKIDENTITYBOOL:Ljava/lang/String; = "linkIdentityBool"

.field protected static final LOGTAG:Ljava/lang/String; = "KochavaTracker"

.field private static final OPTIONS_ENDPOINT:Ljava/lang/String; = "https://control.kochava.com/track/kv_options.php"

.field protected static final PREF_APPDATA:Ljava/lang/String; = "kochavaappdata"

.field protected static final PREF_CUR:Ljava/lang/String; = "currency"

.field protected static final PREF_INIT:Ljava/lang/String; = "initBool"

.field protected static final PREF_INIT_DATA:Ljava/lang/String; = "initData"

.field protected static final PREF_LAT:Ljava/lang/String; = "mylat"

.field protected static final PREF_LONG:Ljava/lang/String; = "mylong"

.field protected static final PREF_NAME:Ljava/lang/String; = "initPrefs"

.field protected static final PREF_TIMESTOPPED:Ljava/lang/String; = "timeStampStopped"

.field protected static final REQLOGTAG:Ljava/lang/String; = "KochavaRequirements"

.field private static final SENDONSTART:Ljava/lang/String; = "sendonstart"

.field private static final STRING_FALSE:Ljava/lang/String; = "false"

.field private static final STRING_TRUE:Ljava/lang/String; = "true"

.field protected static appContext:Landroid/content/Context;

.field private static attributionDataHandler:Landroid/os/Handler;

.field private static first_run:I

.field private static linkIdentityHandler:Landroid/os/Handler;

.field private static paramRestrictions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static webStates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static webViews:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adTimer:Ljava/util/Timer;

.field private attributionDataPrefs:Landroid/content/SharedPreferences;

.field private badInit:Z

.field private canSendSession:Z

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private initHandler:Landroid/os/Handler;

.field private initTimer:Ljava/util/Timer;

.field private initTimerRepeat:Ljava/util/Timer;

.field private initialObject:Lorg/json/JSONObject;

.field private initialPropertiesObject:Lorg/json/JSONObject;

.field private kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;

.field protected kvinitdata:Lorg/json/JSONObject;

.field protected kvinitdataholder:Lorg/json/JSONObject;

.field protected kvinitorigdata:Lorg/json/JSONObject;

.field private lastCallTime:J

.field private mAndroidID:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAppPackageName:Ljava/lang/String;

.field private mAppVersionCode:Ljava/lang/String;

.field private mAppVersionName:Ljava/lang/String;

.field private mCarrier:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEnvDeviceID:Ljava/lang/String;

.field private mFbId:Ljava/lang/String;

.field private mIMEI:Ljava/lang/String;

.field private mIsStartOfLife:Z

.field private mKochDevIDStrategy:Ljava/lang/String;

.field private mMacAddr:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mOSVersion:Ljava/lang/String;

.field private mSuperProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestMode:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerSendOnBegin:Ljava/util/Timer;

.field private mUserAgent:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private requestAttributionData:Z

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput v0, Lcom/kochava/android/tracker/Feature;->first_run:I

    .line 207
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 206
    sput-object v0, Lcom/kochava/android/tracker/Feature;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 211
    new-instance v0, Lcom/kochava/android/tracker/Feature$1;

    invoke-direct {v0}, Lcom/kochava/android/tracker/Feature$1;-><init>()V

    sput-object v0, Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kochavaAppID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide v3, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    .line 172
    iput-wide v3, p0, Lcom/kochava/android/tracker/Feature;->startTime:J

    .line 183
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    .line 184
    iput-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z

    .line 188
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    .line 190
    iput-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    .line 192
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    .line 200
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->executor:Ljava/util/concurrent/ExecutorService;

    .line 872
    new-instance v1, Lcom/kochava/android/tracker/Feature$2;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2;-><init>(Lcom/kochava/android/tracker/Feature;)V

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v0, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "kochava_app_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/kochava/android/tracker/Feature;->init(Landroid/content/Context;ZLjava/util/HashMap;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kochavaAppID"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide v3, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    .line 172
    iput-wide v3, p0, Lcom/kochava/android/tracker/Feature;->startTime:J

    .line 183
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    .line 184
    iput-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z

    .line 188
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    .line 190
    iput-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    .line 192
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    .line 200
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->executor:Ljava/util/concurrent/ExecutorService;

    .line 872
    new-instance v1, Lcom/kochava/android/tracker/Feature$2;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2;-><init>(Lcom/kochava/android/tracker/Feature;)V

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v0, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "kochava_app_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const-string v1, "currency"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_1
    invoke-direct {p0, p1, v2, v0}, Lcom/kochava/android/tracker/Feature;->init(Landroid/content/Context;ZLjava/util/HashMap;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kochavaAppID"    # Ljava/lang/String;
    .param p3, "sendOnStart"    # Z

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide v3, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    .line 172
    iput-wide v3, p0, Lcom/kochava/android/tracker/Feature;->startTime:J

    .line 183
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    .line 184
    iput-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z

    .line 188
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    .line 190
    iput-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    .line 192
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    .line 200
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->executor:Ljava/util/concurrent/ExecutorService;

    .line 872
    new-instance v1, Lcom/kochava/android/tracker/Feature$2;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2;-><init>(Lcom/kochava/android/tracker/Feature;)V

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v0, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "kochava_app_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    invoke-direct {p0, p1, p3, v0}, Lcom/kochava/android/tracker/Feature;->init(Landroid/content/Context;ZLjava/util/HashMap;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kochavaAppID"    # Ljava/lang/String;
    .param p3, "sendOnStart"    # Z
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide v3, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    .line 172
    iput-wide v3, p0, Lcom/kochava/android/tracker/Feature;->startTime:J

    .line 183
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    .line 184
    iput-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z

    .line 188
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    .line 190
    iput-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    .line 192
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    .line 200
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->executor:Ljava/util/concurrent/ExecutorService;

    .line 872
    new-instance v1, Lcom/kochava/android/tracker/Feature$2;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2;-><init>(Lcom/kochava/android/tracker/Feature;)V

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v0, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string v1, "kochava_app_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    const-string v1, "currency"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Lcom/kochava/android/tracker/Feature;->init(Landroid/content/Context;ZLjava/util/HashMap;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide v2, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    .line 172
    iput-wide v2, p0, Lcom/kochava/android/tracker/Feature;->startTime:J

    .line 183
    iput-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    .line 184
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z

    .line 188
    iput-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    .line 190
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    .line 192
    iput-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    .line 200
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/android/tracker/Feature;->executor:Ljava/util/concurrent/ExecutorService;

    .line 872
    new-instance v0, Lcom/kochava/android/tracker/Feature$2;

    invoke-direct {v0, p0}, Lcom/kochava/android/tracker/Feature$2;-><init>(Lcom/kochava/android/tracker/Feature;)V

    iput-object v0, p0, Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;

    .line 279
    invoke-direct {p0, p1, v1, p2}, Lcom/kochava/android/tracker/Feature;->init(Landroid/content/Context;ZLjava/util/HashMap;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/HashMap;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sendOnStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide v2, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    .line 172
    iput-wide v2, p0, Lcom/kochava/android/tracker/Feature;->startTime:J

    .line 183
    iput-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    .line 184
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z

    .line 188
    iput-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    .line 190
    iput-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    .line 192
    iput-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    .line 200
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/android/tracker/Feature;->executor:Ljava/util/concurrent/ExecutorService;

    .line 872
    new-instance v0, Lcom/kochava/android/tracker/Feature$2;

    invoke-direct {v0, p0}, Lcom/kochava/android/tracker/Feature$2;-><init>(Lcom/kochava/android/tracker/Feature;)V

    iput-object v0, p0, Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;

    .line 273
    invoke-direct {p0, p1, p2, p3}, Lcom/kochava/android/tracker/Feature;->init(Landroid/content/Context;ZLjava/util/HashMap;)V

    .line 274
    return-void
.end method

.method static synthetic access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mAppVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mAppVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kochava/android/tracker/Feature;I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/kochava/android/tracker/Feature;->mDisplayHeight:I

    return-void
.end method

.method static synthetic access$13(Lcom/kochava/android/tracker/Feature;I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/kochava/android/tracker/Feature;->mDisplayWidth:I

    return-void
.end method

.method static synthetic access$14(Lcom/kochava/android/tracker/Feature;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/kochava/android/tracker/Feature;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$15(Lcom/kochava/android/tracker/Feature;)I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/kochava/android/tracker/Feature;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$16(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mAndroidID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1648
    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$2(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1583
    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$21(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;

    return-object v0
.end method

.method static synthetic access$22(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->createAppData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23(I)V
    .locals 0

    .prologue
    .line 147
    sput p0, Lcom/kochava/android/tracker/Feature;->first_run:I

    return-void
.end method

.method static synthetic access$24(Lcom/kochava/android/tracker/Feature;Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z

    return-void
.end method

.method static synthetic access$25(Lcom/kochava/android/tracker/Feature;)Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z

    return v0
.end method

.method static synthetic access$26(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1439
    invoke-direct {p0, p1, p2}, Lcom/kochava/android/tracker/Feature;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$27(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$28(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$29(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->initTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$3(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mCarrier:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$30(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->initTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$31(Lcom/kochava/android/tracker/Feature;Z)V
    .locals 0

    .prologue
    .line 1884
    invoke-direct {p0, p1}, Lcom/kochava/android/tracker/Feature;->queInitial(Z)V

    return-void
.end method

.method static synthetic access$32(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mTimerSendOnBegin:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$33(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mTimerSendOnBegin:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$34(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1748
    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->postEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$35(Lcom/kochava/android/tracker/Feature;Z)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 2250
    invoke-direct {p0, p1}, Lcom/kochava/android/tracker/Feature;->createHttpClient(Z)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$37(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->attributionDataPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$38()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/kochava/android/tracker/Feature;->attributionDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$39(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mAppId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1591
    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$40(Lcom/kochava/android/tracker/Feature;Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    return-void
.end method

.method static synthetic access$41(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0, p1}, Lcom/kochava/android/tracker/Feature;->setCurrency(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$42()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$43(Lcom/kochava/android/tracker/Feature;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->initHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$44(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$45(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1624
    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$46(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1707
    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getOdin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mModel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mAppName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mAppVersionCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mAppVersionName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method private addGlobalProperties(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "map"    # Lorg/json/JSONObject;

    .prologue
    const-string v1, "updelta"

    const-string v1, "mylat"

    const-string v1, ""

    .line 1118
    if-eqz p1, :cond_0

    .line 1123
    :try_start_0
    const-string v1, "usertime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1126
    const-string v1, "uptime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-wide v5, p0, Lcom/kochava/android/tracker/Feature;->startTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1129
    iget-wide v1, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1130
    const-string v1, "updelta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-wide v5, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1134
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/kochava/android/tracker/Feature;->lastCallTime:J

    .line 1137
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    const-string v2, "initPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    .line 1140
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "mylat"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1142
    const-string v1, "geo_lat"

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "mylat"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1143
    const-string v1, "geo_lon"

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "mylong"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1154
    :cond_0
    :goto_1
    return-object p1

    .line 1132
    :cond_1
    const-string v1, "updelta"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1150
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KochavaTracker"

    const-string v2, "Error adding time properties to a JSON object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createAppData()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ":::"

    .line 1104
    const-string v0, ""

    .line 1105
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    return-object v0
.end method

.method private createHttpClient(Z)Lorg/apache/http/client/HttpClient;
    .locals 7
    .param p1, "setTimeOut"    # Z

    .prologue
    .line 2252
    sget-boolean v3, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KochavaTracker"

    const-string v4, "Creating https client."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2254
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 2255
    const-string v3, "ISO-8859-1"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 2256
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 2258
    if-eqz p1, :cond_1

    .line 2259
    const/16 v3, 0x2710

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2261
    :cond_1
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2262
    .local v2, "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2263
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2264
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 2266
    .local v0, "conMgr":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method

.method public static enableDebug(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 2271
    sput-boolean p0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    .line 2272
    return-void
.end method

.method private eventSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1419
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1420
    const-string v1, "KochavaTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1424
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const-string v1, "session"

    invoke-direct {p0, v1, v0}, Lcom/kochava/android/tracker/Feature;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1428
    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p1, "eventAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "android_id"

    const-string v7, ""

    const-string v7, "fb_attribution_id"

    const-string v11, "KochavaTracker"

    .line 1441
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "KochavaTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FIRE EVENT*** action:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_0
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "KochavaTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FIRE EVENT*** properties:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1446
    .local v1, "dataObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "kochava_app_id"

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1447
    const-string v7, "kochava_device_id"

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1448
    const-string v7, "action"

    invoke-virtual {v1, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1449
    const-string v7, "dev_id_strategy"

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mKochDevIDStrategy:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1450
    const-string v7, "last_post_time"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1451
    iget-object v7, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    const-string v8, "initPrefs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    .line 1452
    const-string v7, "currency"

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "currency"

    const-string v10, "USD"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1453
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v7}, Lcom/kochava/android/tracker/Feature;->addGlobalProperties(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1455
    .local v5, "propertiesObj":Lorg/json/JSONObject;
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "KochavaTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fireEvent with properties: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_2
    const-string v7, "initial"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1459
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "KochavaTracker"

    const-string v8, "Event is initial, or initial did not get que\'d on first load"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1463
    :cond_3
    :try_start_1
    const-string v7, "sdk_version"

    const-string v8, "Android20130808"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1465
    const-string v7, "first_run"

    new-instance v8, Ljava/lang/StringBuilder;

    sget v9, Lcom/kochava/android/tracker/Feature;->first_run:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1466
    const-string v7, "device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getModel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getCarrier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1467
    sget-object v7, Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;

    const-string v8, "imei"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "imei"

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getIMEI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1468
    :cond_4
    const-string v7, "disp_h"

    iget v8, p0, Lcom/kochava/android/tracker/Feature;->mDisplayHeight:I

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1469
    const-string v7, "disp_w"

    iget v8, p0, Lcom/kochava/android/tracker/Feature;->mDisplayWidth:I

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1470
    const-string v7, "package_name"

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getAppPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1471
    const-string v7, "app_version"

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1472
    iget-object v7, p0, Lcom/kochava/android/tracker/Feature;->mAppVersionName:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "app_short_string"

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mAppVersionName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1473
    :cond_5
    sget-object v7, Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;

    const-string v8, "android_id"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "android_id"

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mAndroidID:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1474
    :cond_6
    const-string v7, "env_hash"

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mEnvDeviceID:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1475
    const-string v7, "os_version"

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getOSVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1476
    sget-object v7, Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;

    const-string v8, "odin"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "odin"

    invoke-direct {p0}, Lcom/kochava/android/tracker/Feature;->getOdin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1477
    :cond_7
    sget-object v7, Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;

    const-string v8, "mac"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "mac"

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1478
    :cond_8
    sget-object v7, Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;

    const-string v8, "open_udid"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "open_udid"

    invoke-virtual {p0}, Lcom/kochava/android/tracker/Feature;->getOpenUDID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1480
    :cond_9
    sget-object v7, Lcom/kochava/android/tracker/Feature;->paramRestrictions:Ljava/util/HashMap;

    const-string v8, "fb_attribution_id"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1482
    iget-object v7, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/kochava/android/tracker/Feature;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kochava/android/tracker/Feature;->mFbId:Ljava/lang/String;

    .line 1483
    iget-object v7, p0, Lcom/kochava/android/tracker/Feature;->mFbId:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 1484
    const-string v7, "fb_attribution_id"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1489
    :cond_a
    :goto_0
    iget-object v7, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1490
    .local v6, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1491
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1493
    iput-object v5, p0, Lcom/kochava/android/tracker/Feature;->initialPropertiesObject:Lorg/json/JSONObject;

    .line 1494
    iput-object v1, p0, Lcom/kochava/android/tracker/Feature;->initialObject:Lorg/json/JSONObject;

    .line 1496
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "KochavaTracker"

    const-string v8, "Initial Event, saving until next event. "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "propertiesObj":Lorg/json/JSONObject;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_b
    :goto_1
    return-void

    .line 1486
    .restart local v5    # "propertiesObj":Lorg/json/JSONObject;
    :cond_c
    const-string v7, "fb_attribution_id"

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mFbId:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1500
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1502
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1503
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "KochavaTracker"

    const-string v8, "event"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1531
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "propertiesObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 1533
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1534
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "KochavaTracker"

    const-string v7, "event"

    invoke-static {v11, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1508
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v5    # "propertiesObj":Lorg/json/JSONObject;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 1510
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v7, :cond_d

    const-string v7, "KochavaTracker"

    const-string v8, "Error during fireEvent - Please review stack trace"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1514
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_2
    iget-object v7, p0, Lcom/kochava/android/tracker/Feature;->mSuperProperties:Ljava/util/Map;

    if-eqz v7, :cond_f

    .line 1516
    iget-object v7, p0, Lcom/kochava/android/tracker/Feature;->mSuperProperties:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_13

    .line 1522
    :cond_f
    if-eqz p2, :cond_10

    .line 1524
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_14

    .line 1529
    :cond_10
    const-string v7, "data"

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1539
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/kochava/android/tracker/Feature;->queInitial(Z)V

    .line 1542
    iget-object v7, p0, Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;

    invoke-virtual {v7, v1}, Lcom/kochava/android/tracker/KochavaDbAdapter;->addEvent(Lorg/json/JSONObject;)I

    move-result v0

    .line 1544
    .local v0, "count":I
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_11

    .line 1545
    const-string v7, "KochavaTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "@@@@@ mTestMode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_11
    iget-boolean v7, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    if-nez v7, :cond_12

    const/16 v7, 0x28

    if-lt v0, v7, :cond_b

    .line 1548
    :cond_12
    invoke-virtual {p0}, Lcom/kochava/android/tracker/Feature;->flush()V

    goto/16 :goto_1

    .line 1516
    .end local v0    # "count":I
    :cond_13
    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1518
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 1524
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1526
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 1507
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v7

    goto/16 :goto_2

    .line 1506
    :catch_4
    move-exception v7

    goto/16 :goto_2
.end method

.method private getAd(Landroid/webkit/WebView;Landroid/app/Activity;II)V
    .locals 9
    .param p1, "adWebview"    # Landroid/webkit/WebView;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .prologue
    const-string v2, "KochavaTracker"

    const-string v3, "KochavaRequirements"

    .line 1972
    iget-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v1, :cond_1

    .line 1974
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v1, :cond_0

    const-string v1, "KochavaTracker"

    const-string v1, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 1978
    :cond_1
    new-instance v7, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kochava/android/tracker/KochavaWebAdView;

    invoke-direct {v7, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1981
    .local v7, "cn":Landroid/content/ComponentName;
    :try_start_0
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1982
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KochavaTracker"

    const-string v2, "Ad activity registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_1
    new-instance v0, Lcom/kochava/android/tracker/Feature$5;

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/kochava/android/tracker/Feature$5;-><init>(Lcom/kochava/android/tracker/Feature;Landroid/app/Activity;IILandroid/webkit/WebView;)V

    .line 2245
    .local v0, "getResponse":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1984
    .end local v0    # "getResponse":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 1987
    .local v8, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v1, :cond_3

    const-string v1, "KochavaRequirements"

    const-string v1, "KOCHAVAWEBADVIEW ACTIVITY REGISTRATION MISSING: com.kochava.android.tracker.KochavaWebAdView"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_3
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v1, :cond_2

    const-string v1, "KochavaRequirements"

    const-string v1, "**NOTICE** It appears you are trying to use Kochava ads but have not registered our ad view activity. Please refer to the Kochava documentation for instructions on how to do this."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mAppPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mAppPackageName:Ljava/lang/String;

    .line 1630
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x0

    const-string v0, "aid"

    .line 2310
    const/4 v6, 0x0

    .line 2313
    .local v6, "attributionId":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 2314
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/kochava/android/tracker/Feature;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2315
    const/4 v5, 0x0

    move-object v0, p0

    .line 2314
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2316
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v9

    .line 2326
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 2319
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-object v0, v6

    .line 2326
    goto :goto_0

    .line 2321
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 2323
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Problem getting FB attribution ID "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1584
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, ""

    const-string v4, ":"

    .line 1651
    iget-object v4, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v4, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1655
    const-string v4, "1"

    iput-object v4, p0, Lcom/kochava/android/tracker/Feature;->mKochDevIDStrategy:Ljava/lang/String;

    .line 1662
    :try_start_0
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    .line 1664
    .local v1, "mMacAddrHashed":Ljava/lang/String;
    const-string v4, ":"

    const-string v5, "k"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1665
    const-string v4, ":"

    const-string v5, "o"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1666
    const-string v4, ":"

    const-string v5, "c"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1667
    const-string v4, ":"

    const-string v5, "h"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1668
    const-string v4, ":"

    const-string v5, "a"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1672
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1673
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 1674
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 1675
    new-instance v0, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1676
    .local v0, "hash":Ljava/math/BigInteger;
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1678
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    .line 1682
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KV"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1702
    .end local v0    # "hash":Ljava/math/BigInteger;
    .end local v1    # "mMacAddrHashed":Ljava/lang/String;
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :goto_1
    return-object v4

    .line 1679
    .restart local v0    # "hash":Ljava/math/BigInteger;
    .restart local v1    # "mMacAddrHashed":Ljava/lang/String;
    .restart local v2    # "md5":Ljava/security/MessageDigest;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1684
    .end local v0    # "hash":Ljava/math/BigInteger;
    .end local v1    # "mMacAddrHashed":Ljava/lang/String;
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1686
    .local v3, "nsae":Ljava/security/NoSuchAlgorithmException;
    iget-object v4, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    goto :goto_1

    .line 1691
    .end local v3    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    iget-object v4, p0, Lcom/kochava/android/tracker/Feature;->mIMEI:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, ""

    iget-object v4, p0, Lcom/kochava/android/tracker/Feature;->mIMEI:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1693
    const-string v4, "2"

    iput-object v4, p0, Lcom/kochava/android/tracker/Feature;->mKochDevIDStrategy:Ljava/lang/String;

    .line 1694
    const-string v4, "000000000000000"

    iget-object v5, p0, Lcom/kochava/android/tracker/Feature;->mIMEI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1696
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kochava/android/tracker/Feature;->mIMEI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1698
    :cond_2
    iget-object v4, p0, Lcom/kochava/android/tracker/Feature;->mIMEI:Ljava/lang/String;

    goto :goto_1

    .line 1701
    :cond_3
    const-string v4, "3"

    iput-object v4, p0, Lcom/kochava/android/tracker/Feature;->mKochDevIDStrategy:Ljava/lang/String;

    .line 1702
    iget-object v4, p0, Lcom/kochava/android/tracker/Feature;->mEnvDeviceID:Ljava/lang/String;

    goto :goto_1
.end method

.method private getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method private getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1593
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOdin()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v9, ""

    .line 1709
    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    if-eqz v8, :cond_2

    const-string v8, ""

    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1711
    const-string v4, ""

    .line 1715
    .local v4, "odin":Ljava/lang/String;
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1716
    .local v3, "md":Ljava/security/MessageDigest;
    const/16 v8, 0x28

    new-array v5, v8, [B

    .line 1717
    .local v5, "sha1hash":[B
    iget-object v8, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    const-string v9, "iso-8859-1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v8, v9, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 1718
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 1722
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1723
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v5

    if-lt v2, v8, :cond_0

    .line 1738
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 1744
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "odin":Ljava/lang/String;
    .end local v5    # "sha1hash":[B
    :goto_1
    return-object v8

    .line 1725
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "odin":Ljava/lang/String;
    .restart local v5    # "sha1hash":[B
    :cond_0
    aget-byte v8, v5, v2

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v1, v8, 0xf

    .line 1726
    .local v1, "halfbyte":I
    const/4 v6, 0x0

    .local v6, "two_halfs":I
    move v7, v6

    .line 1729
    .end local v6    # "two_halfs":I
    .local v7, "two_halfs":I
    :goto_2
    if-ltz v1, :cond_1

    const/16 v8, 0x9

    if-gt v1, v8, :cond_1

    .line 1730
    add-int/lit8 v8, v1, 0x30

    int-to-char v8, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1734
    :goto_3
    aget-byte v8, v5, v2

    and-int/lit8 v1, v8, 0xf

    .line 1735
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "two_halfs":I
    .restart local v6    # "two_halfs":I
    const/4 v8, 0x1

    if-lt v7, v8, :cond_3

    .line 1723
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1732
    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    :cond_1
    const/16 v8, 0xa

    sub-int v8, v1, v8

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1744
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "halfbyte":I
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "odin":Ljava/lang/String;
    .end local v5    # "sha1hash":[B
    .end local v7    # "two_halfs":I
    :cond_2
    const-string v8, ""

    move-object v8, v9

    goto :goto_1

    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "halfbyte":I
    .restart local v2    # "i":I
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "odin":Ljava/lang/String;
    .restart local v5    # "sha1hash":[B
    .restart local v6    # "two_halfs":I
    :cond_3
    move v7, v6

    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    goto :goto_2
.end method

.method private haveAttributionData()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1607
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->attributionDataPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->attributionDataPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1612
    :goto_0
    return v0

    .line 1609
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1612
    goto :goto_0
.end method

.method private init(Landroid/content/Context;ZLjava/util/HashMap;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sendOnStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p3, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v18, :cond_0

    const-string v18, "KochavaTracker"

    const-string v19, "Feature initialization"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    if-eqz p1, :cond_7

    .line 288
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    .line 301
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/kochava/android/tracker/Feature;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mFbId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 310
    :goto_0
    new-instance v18, Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/kochava/android/tracker/KochavaDbAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;

    .line 314
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mAppPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 318
    :goto_1
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    .line 319
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    .line 320
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->kvinitorigdata:Lorg/json/JSONObject;

    .line 322
    const-string v18, "partner_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 323
    .local v14, "partner_id":Ljava/lang/String;
    const-string v18, "partner_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 324
    .local v15, "partner_name":Ljava/lang/String;
    const-string v18, "kochava_app_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 325
    .local v4, "app_id":Ljava/lang/String;
    const-string v18, "currency"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 326
    .local v7, "currency":Ljava/lang/String;
    const-string v18, "request_attribution"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 328
    .local v5, "attributionBool":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_1

    .line 329
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/kochava/android/tracker/Feature;->setCurrency(Ljava/lang/String;)V

    .line 331
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "initPrefs"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    .line 333
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 335
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kochava/android/tracker/Feature;->setRequestAttributionData(Z)V

    .line 338
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "attributionPref"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->attributionDataPrefs:Landroid/content/SharedPreferences;

    .line 343
    if-eqz v14, :cond_3

    :try_start_2
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_17

    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_17

    .line 348
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_8

    .line 352
    :cond_5
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v18, :cond_6

    const-string v18, "KochavaTracker"

    const-string v19, "Kochava requires that you pass either a kochava app id, or a partner id and a partner name into the datamap during initialization."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 790
    .end local v4    # "app_id":Ljava/lang/String;
    .end local v5    # "attributionBool":Ljava/lang/String;
    .end local v7    # "currency":Ljava/lang/String;
    .end local v14    # "partner_id":Ljava/lang/String;
    .end local v15    # "partner_name":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 291
    :cond_7
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v18, :cond_6

    const-string v18, "KochavaTracker"

    const-string v19, "Context you passed was null, cannot initialize."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 357
    .restart local v4    # "app_id":Ljava/lang/String;
    .restart local v5    # "attributionBool":Ljava/lang/String;
    .restart local v7    # "currency":Ljava/lang/String;
    .restart local v14    # "partner_id":Ljava/lang/String;
    .restart local v15    # "partner_name":Ljava/lang/String;
    :cond_8
    :try_start_3
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mAppId:Ljava/lang/String;

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "kochava_app_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitorigdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "kochava_app_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "kochavaappdata"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "kochavaappdata"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "package"

    invoke-direct/range {p0 .. p0}, Lcom/kochava/android/tracker/Feature;->getAppPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "platform"

    const-string v20, "android"

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "session_tracking"

    const-string v20, "full"

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "currency"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "currency"

    const-string v22, "USD"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v18, :cond_a

    const-string v18, "KochavaTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Do we have attribution data? "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/kochava/android/tracker/Feature;->haveAttributionData()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_a
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v18, :cond_b

    const-string v18, "KochavaTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Did we request attribution data? "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/kochava/android/tracker/Feature;->haveAttributionData()Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 414
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v18, :cond_c

    const-string v18, "KochavaTracker"

    const-string v19, "Requesting attribution data..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "request_attribution"

    const-string v20, "true"

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitorigdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "currency"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "currency"

    const-string v22, "USD"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitorigdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "session_tracking"

    const-string v20, "full"

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitorigdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "currency"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "currency"

    const-string v22, "USD"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "sdk_version"

    const-string v20, "Android20130808"

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "sdk_protocol"

    const-string v20, "3"

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "data_orig"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitorigdata:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 440
    :cond_e
    :goto_4
    sget-object v18, Lcom/kochava/android/tracker/Feature;->appContext:Landroid/content/Context;

    if-nez v18, :cond_f

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    sput-object v18, Lcom/kochava/android/tracker/Feature;->appContext:Landroid/content/Context;

    .line 443
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/kochava/android/tracker/Feature;->startTime:J

    .line 447
    const/4 v12, 0x0

    .line 448
    .local v12, "missing":Z
    const-string v13, ""

    .line 450
    .local v13, "missingItems":Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-class v19, Lcom/kochava/android/tracker/ReferralCapture;

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    .local v6, "cn":Landroid/content/ComponentName;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 454
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v18, :cond_10

    const-string v18, "KochavaTracker"

    const-string v19, "Receiver registered."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 463
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    if-gez v18, :cond_11

    .line 465
    const/4 v12, 0x1

    .line 466
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n    PERMMISION MISSING: android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 470
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "android.permission.INTERNET"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    if-gez v18, :cond_12

    .line 472
    const/4 v12, 0x1

    .line 473
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n    PERMMISION MISSING: android.permission.INTERNET"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 477
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    if-gez v18, :cond_13

    .line 479
    const/4 v12, 0x1

    .line 480
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n    PERMMISION MISSING: android.permission.ACCESS_WIFI_STATET"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 484
    :cond_13
    if-eqz v12, :cond_15

    .line 486
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v18, :cond_14

    const-string v18, "KochavaRequirements"

    const-string v19, "**NOTICE** The following items may not have been implemented correctly. Please refer to the Kochava SDK documentation to resolve these issues:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_14
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v18, :cond_15

    const-string v18, "KochavaRequirements"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 495
    .local v16, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mIMEI:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 511
    .end local v16    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_16
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 512
    .local v17, "wimanager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mMacAddr:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 515
    .end local v17    # "wimanager":Landroid/net/wifi/WifiManager;
    :goto_7
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "35"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    sget-object v19, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 517
    sget-object v19, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 518
    sget-object v19, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 519
    sget-object v19, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 520
    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 521
    sget-object v19, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 522
    sget-object v19, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    rem-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 515
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mEnvDeviceID:Ljava/lang/String;

    .line 529
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "kochava_device_id"

    invoke-direct/range {p0 .. p0}, Lcom/kochava/android/tracker/Feature;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 536
    :goto_8
    new-instance v11, Lcom/kochava/android/tracker/Feature$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/kochava/android/tracker/Feature$3;-><init>(Lcom/kochava/android/tracker/Feature;Z)V

    .line 788
    .local v11, "getKVinit":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 370
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v11    # "getKVinit":Ljava/lang/Thread;
    .end local v12    # "missing":Z
    .end local v13    # "missingItems":Ljava/lang/String;
    :cond_17
    if-eqz v14, :cond_18

    :try_start_8
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_18

    if-eqz v15, :cond_18

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_19

    .line 373
    :cond_18
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v18, :cond_6

    const-string v18, "KochavaTracker"

    const-string v19, "Please make sure that you have passed both a partner id and a partner name."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 433
    :catch_0
    move-exception v18

    move-object/from16 v8, v18

    .line 435
    .local v8, "e":Lorg/json/JSONException;
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v18, :cond_e

    .line 436
    const-string v18, "KochavaTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Error building KVinit json object: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 379
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_19
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "partner_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "partner_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "kochavaappdata"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "kochavaappdata"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_1b

    .line 393
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mAppId:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitdataholder:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "kochava_app_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kvinitorigdata:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "kochava_app_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 399
    :cond_1b
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "_p:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kochava/android/tracker/Feature;->mAppId:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    .line 456
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v12    # "missing":Z
    .restart local v13    # "missingItems":Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v9, v18

    .line 458
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v12, 0x1

    .line 459
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n    BROADCAST RECEIVER REGISTRATION MISSING: com.android.kochava.tracker.ReferralCapture"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 504
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v18

    move-object/from16 v10, v18

    .line 506
    .local v10, "exc":Ljava/lang/Exception;
    sget-boolean v18, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v18, :cond_16

    const-string v18, "KochavaTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Couldn\'t gather IMEI: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 531
    .end local v10    # "exc":Ljava/lang/Exception;
    :catch_3
    move-exception v18

    move-object/from16 v9, v18

    .line 533
    .local v9, "e1":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    .line 513
    .end local v9    # "e1":Lorg/json/JSONException;
    :catch_4
    move-exception v18

    goto/16 :goto_7

    .line 316
    .end local v4    # "app_id":Ljava/lang/String;
    .end local v5    # "attributionBool":Ljava/lang/String;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v7    # "currency":Ljava/lang/String;
    .end local v12    # "missing":Z
    .end local v13    # "missingItems":Ljava/lang/String;
    .end local v14    # "partner_id":Ljava/lang/String;
    .end local v15    # "partner_name":Ljava/lang/String;
    :catch_5
    move-exception v18

    goto/16 :goto_1

    .line 303
    :catch_6
    move-exception v18

    goto/16 :goto_0
.end method

.method private postEvent()Ljava/lang/String;
    .locals 23

    .prologue
    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/kochava/android/tracker/KochavaDbAdapter;->generateDataString()Ljava/lang/String;

    move-result-object v4

    .line 1752
    .local v4, "data":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1755
    const-string v20, ""

    .line 1878
    :goto_0
    return-object v20

    .line 1757
    :cond_0
    new-instance v19, Ljava/util/StringTokenizer;

    const-string v20, "="

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    .local v19, "tok":Ljava/util/StringTokenizer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 1760
    .local v17, "timestamp":J
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1763
    const-string v20, "["

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1765
    const/16 v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1767
    :cond_1
    const-string v20, "]"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1769
    const/16 v20, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object v0, v4

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1775
    :cond_2
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_3

    .line 1776
    const-string v20, "KochavaTracker"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Post The Data 3>>>>>>"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_3
    const/4 v11, 0x0

    .line 1780
    .local v11, "isInitial":Z
    const-string v20, "\"action\":\"initial\""

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1782
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_4

    const-string v20, "KochavaTracker"

    const-string v21, "Post Data: Event is initial, look at response"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_4
    const/4 v11, 0x1

    .line 1786
    :cond_5
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/kochava/android/tracker/Feature;->createHttpClient(Z)Lorg/apache/http/client/HttpClient;

    move-result-object v7

    .line 1791
    .local v7, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->mUserAgent:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1793
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    const-string v20, "https://control.kochava.com/track/kvTracker.php"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v8, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v10, 0x0

    .line 1801
    .local v10, "isIdentityLink":Z
    :try_start_0
    const-string v20, "identityLink"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1802
    const/4 v10, 0x1

    .line 1804
    :cond_6
    new-instance v16, Lorg/apache/http/entity/StringEntity;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    .local v16, "sentity":Lorg/apache/http/entity/StringEntity;
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v20, "Content-Type"

    const-string v21, "application/xml"

    move-object v0, v3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    .local v3, "basicHeader":Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v20

    const-string v21, "http.protocol.expect-continue"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1807
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 1808
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1809
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_7

    const-string v20, "KochavaTracker"

    const-string v21, "Trying to post an event."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_7
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 1811
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 1812
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    if-nez v6, :cond_8

    .line 1813
    const-string v20, ""

    goto/16 :goto_0

    .line 1817
    :cond_8
    :try_start_1
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_9

    const-string v20, "KochavaTracker"

    const-string v21, "Grabbing Result..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_9
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kochava/android/util/StringUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 1819
    .local v15, "result":Ljava/lang/String;
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_a

    const-string v20, "KochavaTracker"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Result: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_a
    if-eqz v11, :cond_e

    .line 1824
    const-string v20, "\"success\":\"1\""

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1827
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_b

    const-string v20, "KochavaTracker"

    const-string v21, "Got success response, cleaning database."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/kochava/android/tracker/KochavaDbAdapter;->cleanupEvents(J)V

    .line 1839
    :cond_c
    :goto_1
    if-eqz v10, :cond_d

    .line 1842
    const-string v20, "\"success\":\"1\""

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 1844
    .local v9, "identityLinkResult":Z
    sget-object v20, Lcom/kochava/android/tracker/Feature;->linkIdentityHandler:Landroid/os/Handler;

    if-eqz v20, :cond_d

    .line 1846
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 1847
    .local v12, "message":Landroid/os/Message;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1848
    .local v13, "messageData":Landroid/os/Bundle;
    const-string v20, "linkIdentityBool"

    move-object v0, v13

    move-object/from16 v1, v20

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1849
    invoke-virtual {v12, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1850
    sget-object v20, Lcom/kochava/android/tracker/Feature;->linkIdentityHandler:Landroid/os/Handler;

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v9    # "identityLinkResult":Z
    .end local v12    # "message":Landroid/os/Message;
    .end local v13    # "messageData":Landroid/os/Bundle;
    :cond_d
    move-object/from16 v20, v15

    .line 1854
    goto/16 :goto_0

    .line 1836
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/kochava/android/tracker/KochavaDbAdapter;->cleanupEvents(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1857
    .end local v15    # "result":Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .line 1859
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_f

    const-string v20, "KochavaTracker"

    const-string v21, "TrackTask"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1860
    :cond_f
    const-string v20, ""

    goto/16 :goto_0

    .line 1862
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 1864
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_10

    const-string v20, "KochavaTracker"

    const-string v21, "TrackTask"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1865
    :cond_10
    const-string v20, ""

    goto/16 :goto_0

    .line 1869
    .end local v3    # "basicHeader":Lorg/apache/http/message/BasicHeader;
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "sentity":Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v20

    move-object/from16 v5, v20

    .line 1871
    .local v5, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_11

    const-string v20, "KochavaTracker"

    const-string v21, "TrackTask"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1872
    :cond_11
    const-string v20, ""

    goto/16 :goto_0

    .line 1874
    .end local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v20

    move-object/from16 v5, v20

    .line 1877
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v20, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v20, :cond_12

    const-string v20, "KochavaTracker"

    const-string v21, "TrackTask"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1878
    :cond_12
    const-string v20, ""

    goto/16 :goto_0
.end method

.method private queInitial(Z)V
    .locals 7
    .param p1, "cancelTimer"    # Z

    .prologue
    const-string v1, "noData"

    const-string v4, "initBool"

    const-string v1, "initData"

    const-string v3, ""

    const-string v6, "KochavaTracker"

    .line 1886
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "initBool"

    const-string v2, ""

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->initialPropertiesObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->initialObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 1890
    :try_start_0
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KochavaTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initial properties: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kochava/android/tracker/Feature;->initialPropertiesObject:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_0
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KochavaTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initital Oject: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kochava/android/tracker/Feature;->initialObject:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_1
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "initData"

    const-string v3, "noData"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "noData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1894
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->initialPropertiesObject:Lorg/json/JSONObject;

    const-string v2, "conversion_type"

    const-string v3, "gplay"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1895
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->initialPropertiesObject:Lorg/json/JSONObject;

    const-string v2, "conversion_data"

    iget-object v3, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "initData"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1896
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KochavaTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got referral, attaching: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "initData"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->initialObject:Lorg/json/JSONObject;

    const-string v2, "data"

    iget-object v3, p0, Lcom/kochava/android/tracker/Feature;->initialPropertiesObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1903
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature;->initialObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/kochava/android/tracker/KochavaDbAdapter;->addEvent(Lorg/json/JSONObject;)I

    .line 1904
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "KochavaTracker"

    const-string v2, "Sending Initial"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_3
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "initBool"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1906
    if-eqz p1, :cond_4

    .line 1907
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->initTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1917
    :cond_4
    :goto_1
    return-void

    .line 1900
    :cond_5
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KochavaTracker"

    const-string v2, "Did not get referral data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1909
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1911
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "KochavaTracker"

    const-string v1, "An error occured during que initial."

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setAttributionHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0, "delegate"    # Landroid/os/Handler;

    .prologue
    .line 1317
    sput-object p0, Lcom/kochava/android/tracker/Feature;->attributionDataHandler:Landroid/os/Handler;

    .line 1318
    return-void
.end method

.method private setCurrency(Ljava/lang/String;)V
    .locals 3
    .param p1, "cur"    # Ljava/lang/String;

    .prologue
    .line 1202
    if-eqz p1, :cond_1

    sget-object v0, Lcom/kochava/android/tracker/Global;->CURRENCYLIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    const-string v1, "initPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    .line 1206
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currency"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to set currency, but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid currency."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setErrorDebug(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 2276
    sput-boolean p0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    .line 2277
    return-void
.end method


# virtual methods
.method public clearSuperProperties()V
    .locals 2

    .prologue
    const-string v1, "KochavaTracker"

    .line 1191
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v0, :cond_1

    .line 1193
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    const-string v0, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KochavaTracker"

    const-string v0, "clearSuperProperties"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/android/tracker/Feature;->mSuperProperties:Ljava/util/Map;

    goto :goto_0
.end method

.method public enableTestMode()V
    .locals 2

    .prologue
    const-string v1, "KochavaTracker"

    .line 1570
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v0, :cond_1

    .line 1572
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    const-string v0, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KochavaTracker"

    const-string v0, "enableTestMode"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->mTestMode:Z

    goto :goto_0
.end method

.method public endSession()V
    .locals 2

    .prologue
    const-string v1, "KochavaTracker"

    .line 1262
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v0, :cond_1

    .line 1264
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    const-string v0, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KochavaTracker"

    const-string v0, "Called End"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_2
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    if-eqz v0, :cond_3

    .line 1279
    const-string v0, "exit"

    invoke-direct {p0, v0}, Lcom/kochava/android/tracker/Feature;->eventSession(Ljava/lang/String;)V

    goto :goto_0

    .line 1283
    :cond_3
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    const-string v0, "Session events disabled by server."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public event(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;

    .prologue
    const-string v5, "KochavaTracker"

    .line 1355
    iget-boolean v2, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v2, :cond_1

    .line 1357
    sget-boolean v2, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v2, :cond_0

    const-string v2, "KochavaTracker"

    const-string v2, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    :try_start_0
    sget-boolean v2, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1365
    const-string v2, "KochavaTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1369
    .local v1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "event_name"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    const-string v2, "event_data"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    const-string v2, "event"

    invoke-direct {p0, v2, v1}, Lcom/kochava/android/tracker/Feature;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1374
    .end local v1    # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1377
    const-string v2, "KochavaTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in event call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public eventSpatial(Ljava/lang/String;DDDLjava/lang/String;)V
    .locals 7
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "x"    # D
    .param p4, "y"    # D
    .param p6, "z"    # D
    .param p8, "eventData"    # Ljava/lang/String;

    .prologue
    const-string v6, "KochavaTracker"

    .line 1385
    iget-boolean v3, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v3, :cond_1

    .line 1387
    sget-boolean v3, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v3, :cond_0

    const-string v3, "KochavaTracker"

    const-string v3, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    :try_start_0
    sget-boolean v3, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1394
    const-string v3, "KochavaTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1398
    .local v1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "event_name"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1401
    .local v2, "twoDForm":Ljava/text/DecimalFormat;
    const-string v3, "x"

    invoke-virtual {v2, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    const-string v3, "y"

    invoke-virtual {v2, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    const-string v3, "z"

    invoke-virtual {v2, p6, p7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    const-string v3, "event_data"

    invoke-virtual {v1, v3, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const-string v3, "spatial"

    invoke-direct {p0, v3, v1}, Lcom/kochava/android/tracker/Feature;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1408
    .end local v1    # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "twoDForm":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1410
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1411
    const-string v3, "KochavaTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in event call: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    const-string v1, "KochavaTracker"

    .line 1553
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v0, :cond_0

    .line 1555
    const-string v0, "KochavaTracker"

    const-string v0, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :goto_0
    return-void

    .line 1558
    :cond_0
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "KochavaTracker"

    const-string v0, "flush"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_1
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kochava/android/tracker/Feature$TrackTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kochava/android/tracker/Feature$TrackTask;-><init>(Lcom/kochava/android/tracker/Feature;Lcom/kochava/android/tracker/Feature$TrackTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public getAttributionData()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    .line 1089
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->attributionDataPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->attributionDataPrefs:Landroid/content/SharedPreferences;

    const-string v1, "attributionData"

    const-string v2, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    move-object v0, v3

    goto :goto_0
.end method

.method protected getOpenUDID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1958
    const-string v0, ""

    .line 1959
    .local v0, "openudid":Ljava/lang/String;
    invoke-static {}, Lcom/kochava/android/util/OpenUDID;->getOpenUDIDInContext()Ljava/lang/String;

    move-result-object v0

    .line 1961
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1964
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "error"

    goto :goto_0
.end method

.method public linkIdentity(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "identityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "KochavaTracker"

    .line 1322
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v0, :cond_1

    .line 1324
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    const-string v0, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1329
    const-string v0, "KochavaTracker"

    const-string v0, "Mapping identity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_2
    const-string v0, "identityLink"

    invoke-direct {p0, v0, p1}, Lcom/kochava/android/tracker/Feature;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public linkIdentity(Ljava/util/Map;Landroid/os/Handler;)V
    .locals 2
    .param p2, "delegate"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "identityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "KochavaTracker"

    .line 1299
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v0, :cond_1

    .line 1301
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    const-string v0, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1306
    const-string v0, "KochavaTracker"

    const-string v0, "Mapping identity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_2
    const-string v0, "identityLink"

    invoke-direct {p0, v0, p1}, Lcom/kochava/android/tracker/Feature;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1311
    sput-object p2, Lcom/kochava/android/tracker/Feature;->linkIdentityHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public registerSuperProperties(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "superProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "KochavaTracker"

    .line 1167
    iget-boolean v1, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v1, :cond_1

    .line 1169
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v1, :cond_0

    const-string v1, "KochavaTracker"

    const-string v1, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    sget-boolean v1, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KochavaTracker"

    const-string v1, "registerSuperProperties"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_2
    iget-object v1, p0, Lcom/kochava/android/tracker/Feature;->mSuperProperties:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 1176
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mSuperProperties:Ljava/util/Map;

    goto :goto_0

    .line 1178
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/kochava/android/tracker/Feature;->mSuperProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setAppLimitTracking(Z)V
    .locals 1
    .param p1, "shouldLimit"    # Z

    .prologue
    .line 795
    new-instance v0, Lcom/kochava/android/tracker/Feature$4;

    invoke-direct {v0, p0, p1}, Lcom/kochava/android/tracker/Feature$4;-><init>(Lcom/kochava/android/tracker/Feature;Z)V

    .line 868
    .local v0, "changeAppLimitTracking":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 869
    return-void
.end method

.method public setLatlong(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lon"    # Ljava/lang/String;

    .prologue
    .line 1216
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1218
    :cond_0
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_1

    const-string v0, "KochavaTracker"

    const-string v1, "Trying to set lat/long, but one/both of the parameters where null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_1
    :goto_0
    return-void

    .line 1221
    :cond_2
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;

    const-string v1, "initPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    .line 1222
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mylat"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1223
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mylong"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setRequestAttributionData(Z)V
    .locals 0
    .param p1, "receive"    # Z

    .prologue
    .line 1229
    iput-boolean p1, p0, Lcom/kochava/android/tracker/Feature;->requestAttributionData:Z

    .line 1230
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature;->mAppVersionName:Ljava/lang/String;

    .line 1618
    return-void
.end method

.method public startSession()V
    .locals 5

    .prologue
    const-string v4, "KochavaTracker"

    .line 1234
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->badInit:Z

    if-eqz v0, :cond_1

    .line 1236
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    const-string v0, "Kochava library was not initialized properly (Unexpected parameters). Until it is, this method cannot be used."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KochavaTracker"

    const-string v0, "Called Start"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kochava/android/tracker/Feature;->startTime:J

    .line 1246
    iget-boolean v0, p0, Lcom/kochava/android/tracker/Feature;->canSendSession:Z

    if-eqz v0, :cond_3

    .line 1248
    const-string v0, "launch"

    invoke-direct {p0, v0}, Lcom/kochava/android/tracker/Feature;->eventSession(Ljava/lang/String;)V

    goto :goto_0

    .line 1252
    :cond_3
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KochavaTracker"

    const-string v0, "Session events disabled by server."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
