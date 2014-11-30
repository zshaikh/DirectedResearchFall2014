.class public Lcom/adobe/air/AdobeAIR;
.super Landroid/app/Activity;
.source "AdobeAIR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;
    }
.end annotation


# static fields
.field private static ACCESS_KEY:Ljava/lang/String; = null

.field private static final ADOBE_GAME_SHOWCASE:Ljava/lang/String; = "gaming.adobe.com"

.field public static final ADOBE_HOST:Ljava/lang/String; = "www.adobe.com"

.field private static APPLICATION_ARN:Ljava/lang/String; = null

.field public static final CLOUDFRONT_HOST:Ljava/lang/String; = "dh8vjmvwgc27o.cloudfront.net"

.field private static final CUSTOM_USER_DATA:Ljava/lang/String; = "CustomUserData"

.field public static final DYNAMIC_URL_CLOUDFRONT:Ljava/lang/String; = "http://www.adobe.com/airgames2/"

.field private static final ENABLED:Ljava/lang/String; = "Enabled"

.field public static final GAMESPACE_HOST:Ljava/lang/String; = "gamespace.adobe.com"

.field private static final GOOGLE_PLAY_HOST:Ljava/lang/String; = "play.google.com"

.field private static final MAX_RETRIES:I = 0xa

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PROPERTY_ENDPOINT_ARN:Ljava/lang/String; = "endpointArn"

.field private static final PROPERTY_INITIAL_LAUNCH:Ljava/lang/String; = "initialLaunch"

.field public static RATE_LIMIT:J = 0x0L

.field private static final RETRY_TIME:I = 0x493e0

.field private static SECRET_KEY:Ljava/lang/String; = null

.field private static SENDER_ID:Ljava/lang/String; = null

.field private static final STATIC_URL:Ljava/lang/String; = "file:///android_res/raw/startga.html"

.field private static final TAG:Ljava/lang/String; = "Adobe AIR"

.field private static final TEST_ACCESS_KEY:Ljava/lang/String; = "AKIAI5AWXTYSXJGU55QA"

.field private static final TEST_APPLICATION_ARN:Ljava/lang/String; = "arn:aws:sns:us-west-2:413177889857:app/GCM/airruntimetestapp"

.field private static final TEST_SECRET_KEY:Ljava/lang/String; = "8DSumtc3WxSjf3LUsjzoZ9fU8qyYyKlLp2sKWE2X"

.field private static final TEST_SENDER_ID:Ljava/lang/String; = "1078258869814"

.field private static final TOKEN:Ljava/lang/String; = "Token"


# instance fields
.field public DYNAMIC_URL:Ljava/lang/String;

.field private mAuxWebView:Landroid/webkit/WebView;

.field private mClient:Lcom/amazonaws/services/sns/AmazonSNS;

.field private mCtx:Landroid/content/Context;

.field private mEndpointArn:Ljava/lang/String;

.field private mFirstLoad:Z

.field private mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private mOffline:Z

.field private mRegId:Ljava/lang/String;

.field private mRetryCount:I

.field private mTestEnv:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 624
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/adobe/air/AdobeAIR;->RATE_LIMIT:J

    .line 629
    const-string v0, "532338767332"

    sput-object v0, Lcom/adobe/air/AdobeAIR;->SENDER_ID:Ljava/lang/String;

    .line 630
    const-string v0, "arn:aws:sns:us-west-2:502492504188:app/GCM/TestGCM"

    sput-object v0, Lcom/adobe/air/AdobeAIR;->APPLICATION_ARN:Ljava/lang/String;

    .line 631
    const-string v0, "AKIAI2RE4NKJI7CKZF7Q"

    sput-object v0, Lcom/adobe/air/AdobeAIR;->ACCESS_KEY:Ljava/lang/String;

    .line 632
    const-string v0, "uDT622RSh14edgNqmeRI831cBQDh79DiX0tpcBIr"

    sput-object v0, Lcom/adobe/air/AdobeAIR;->SECRET_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 603
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    .line 604
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    .line 605
    iput-boolean v2, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z

    .line 607
    const-string v0, "http://www.adobe.com/airgames/"

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    .line 639
    iput-boolean v2, p0, Lcom/adobe/air/AdobeAIR;->mTestEnv:Z

    .line 640
    iput v2, p0, Lcom/adobe/air/AdobeAIR;->mRetryCount:I

    .line 641
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mRegId:Ljava/lang/String;

    .line 642
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mEndpointArn:Ljava/lang/String;

    .line 643
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    .line 644
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    .line 645
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AdobeAIR;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AdobeAIR;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->sendRegistrationIdToAws()V

    return-void
.end method

.method static synthetic access$102(Lcom/adobe/air/AdobeAIR;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/air/AdobeAIR;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/air/AdobeAIR;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method static synthetic access$502(Lcom/adobe/air/AdobeAIR;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object p1
.end method

.method static synthetic access$600(Lcom/adobe/air/AdobeAIR;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/AdobeAIR;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mRegId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/air/AdobeAIR;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR;->mRegId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/adobe/air/AdobeAIR;->SENDER_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/air/AdobeAIR;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/adobe/air/AdobeAIR;->registerInBackground(I)V

    return-void
.end method

.method private checkPlayServices()Z
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 320
    if-eqz v0, :cond_1

    .line 322
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/16 v1, 0x2328

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 330
    :cond_0
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private configureTestEnv()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 578
    if-nez v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    const-string v1, "testEnv"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/air/AdobeAIR;->mTestEnv:Z

    .line 582
    iget-boolean v1, p0, Lcom/adobe/air/AdobeAIR;->mTestEnv:Z

    if-eqz v1, :cond_0

    .line 584
    const-string v1, "1078258869814"

    sput-object v1, Lcom/adobe/air/AdobeAIR;->SENDER_ID:Ljava/lang/String;

    .line 585
    const-string v1, "arn:aws:sns:us-west-2:413177889857:app/GCM/airruntimetestapp"

    sput-object v1, Lcom/adobe/air/AdobeAIR;->APPLICATION_ARN:Ljava/lang/String;

    .line 586
    const-string v1, "AKIAI5AWXTYSXJGU55QA"

    sput-object v1, Lcom/adobe/air/AdobeAIR;->ACCESS_KEY:Ljava/lang/String;

    .line 587
    const-string v1, "8DSumtc3WxSjf3LUsjzoZ9fU8qyYyKlLp2sKWE2X"

    sput-object v1, Lcom/adobe/air/AdobeAIR;->SECRET_KEY:Ljava/lang/String;

    .line 589
    const-string v1, "rateLimit"

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 590
    if-eq v0, v3, :cond_0

    .line 592
    int-to-long v0, v0

    sput-wide v0, Lcom/adobe/air/AdobeAIR;->RATE_LIMIT:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createWebView()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "/databases/"

    .line 114
    new-instance v0, Lcom/adobe/air/AdobeAIR$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AdobeAIR$1;-><init>(Lcom/adobe/air/AdobeAIR;)V

    .line 208
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    .line 209
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 210
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 211
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 213
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 218
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    .line 219
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private getAppVersion()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 404
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return v0

    .line 406
    :catch_0
    move-exception v0

    move v0, v3

    .line 409
    goto :goto_0
.end method

.method private getCustomData()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v0, "network"

    const-string v0, "&"

    .line 502
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 503
    const-string v0, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 506
    const-string v1, "airVersion"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/adobe/air/SystemCapabilities;->GetScreenHRes(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/adobe/air/SystemCapabilities;->GetScreenVRes(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/adobe/air/SystemCapabilities;->GetScreenDPI(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    const-string v1, "deviceInfo"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 515
    const-string v1, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 521
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 523
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 526
    if-eqz v1, :cond_0

    .line 528
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 529
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 530
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 532
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 535
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 544
    :goto_0
    :try_start_2
    const-string v1, "geo"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 547
    const-string v1, "timestamp"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 554
    :goto_1
    return-object v0

    .line 540
    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    .line 551
    :catch_1
    move-exception v0

    .line 554
    const-string v0, ""

    goto :goto_1

    :cond_0
    move-object v0, v7

    goto :goto_0
.end method

.method private isAppRegistered()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    .line 337
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/adobe/air/AdobeAIR;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    const-string v1, "appVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 343
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->getAppVersion()I

    move-result v1

    .line 344
    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v3

    .line 349
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInitialLaunch()Z
    .locals 3

    .prologue
    .line 98
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/AdobeAIR;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    const-string v1, "initialLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private registerForNotifications()V
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->isAppRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->configureTestEnv()V

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AdobeAIR;->registerInBackground(I)V

    goto :goto_0
.end method

.method private registerInBackground(I)V
    .locals 4

    .prologue
    .line 355
    iget v0, p0, Lcom/adobe/air/AdobeAIR;->mRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 357
    if-eqz p1, :cond_0

    .line 358
    iget v0, p0, Lcom/adobe/air/AdobeAIR;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/air/AdobeAIR;->mRetryCount:I

    .line 360
    :cond_0
    new-instance v0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;-><init>(Lcom/adobe/air/AdobeAIR;Lcom/adobe/air/AdobeAIR$1;)V

    .line 361
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 363
    :cond_1
    return-void
.end method

.method private sendRegistrationIdToAws()V
    .locals 3

    .prologue
    .line 419
    :try_start_0
    new-instance v0, Lcom/amazonaws/auth/BasicAWSCredentials;

    sget-object v1, Lcom/adobe/air/AdobeAIR;->ACCESS_KEY:Ljava/lang/String;

    sget-object v2, Lcom/adobe/air/AdobeAIR;->SECRET_KEY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/BasicAWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v1, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    invoke-static {v1}, Lcom/amazonaws/regions/Region;->getRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object v1

    .line 422
    new-instance v2, Lcom/amazonaws/services/sns/AmazonSNSClient;

    invoke-direct {v2, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v2, p0, Lcom/adobe/air/AdobeAIR;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    .line 423
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNS;->setRegion(Lcom/amazonaws/regions/Region;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    :try_start_1
    new-instance v0, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;-><init>()V

    .line 428
    sget-object v1, Lcom/adobe/air/AdobeAIR;->APPLICATION_ARN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setPlatformApplicationArn(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mRegId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setToken(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->getCustomData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setCustomUserData(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/sns/AmazonSNS;->createPlatformEndpoint(Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)Lcom/amazonaws/services/sns/model/CreatePlatformEndpointResult;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointResult;->getEndpointArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointResult;->getEndpointArn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mEndpointArn:Ljava/lang/String;

    .line 436
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mTestEnv:Z

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "Adobe AIR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndpointArn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AdobeAIR;->mEndpointArn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->updateSharedPref()V
    :try_end_1
    .catch Lcom/amazonaws/services/sns/model/InternalErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazonaws/services/sns/model/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 446
    const v0, 0x493e0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/adobe/air/AdobeAIR;->registerInBackground(I)V

    goto :goto_0

    .line 462
    :catch_1
    move-exception v0

    goto :goto_0

    .line 448
    :catch_2
    move-exception v0

    .line 451
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->updateEndpointAttributes()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 457
    :catch_3
    move-exception v0

    goto :goto_0

    .line 453
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private updateEndpointAttributes()V
    .locals 4

    .prologue
    .line 473
    :try_start_0
    new-instance v0, Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;-><init>()V

    .line 474
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mEndpointArn:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 477
    const-string v2, "endpointArn"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mEndpointArn:Ljava/lang/String;

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mEndpointArn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;->setEndpointArn(Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 481
    const-string v2, "CustomUserData"

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->getCustomData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v2, "Enabled"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v2, "Token"

    iget-object v3, p0, Lcom/adobe/air/AdobeAIR;->mRegId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;->setAttributes(Ljava/util/Map;)V

    .line 485
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/sns/AmazonSNS;->setEndpointAttributes(Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;)V

    .line 486
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->updateSharedPref()V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    goto :goto_0

    .line 488
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateSharedPref()V
    .locals 3

    .prologue
    .line 560
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/AdobeAIR;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->getAppVersion()I

    move-result v1

    .line 565
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 566
    const-string v2, "appVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 567
    const-string v1, "endpointArn"

    iget-object v2, p0, Lcom/adobe/air/AdobeAIR;->mEndpointArn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    return-void
.end method

.method private updateSharedPrefForInitialLaunch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adobe/air/AdobeAIR;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    const-string v1, "initialLaunch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 254
    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 259
    if-lez v1, :cond_1

    .line 261
    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x0

    .line 270
    :goto_0
    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 277
    :goto_1
    return-void

    .line 276
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iput-object p0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->isInitialLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "http://www.adobe.com/airgames2/"

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->updateSharedPrefForInitialLaunch()V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->createWebView()V

    .line 90
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIR;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->registerForNotifications()V

    .line 94
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const-string v2, "gameUrl"

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 285
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_1

    const-string v1, "gameUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const-string v1, "gameUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->createWebView()V

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 299
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    .line 243
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method
