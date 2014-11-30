.class public Lcom/appsponsor/appsponsorsdk/PopupAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsponsor/appsponsorsdk/PopupAd$4;,
        Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;,
        Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;,
        Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;
    }
.end annotation


# static fields
.field public static final AD_WILL_DISAPPEAR_CODE:I = 0x2710

.field private static final DEFAULT_HEIGHT:I = 0xc8

.field private static final DEFAULT_WIDTH:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PopupAd"

.field public static adImageMap:Ljava/util/Map;
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

.field private static appInfoPairs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public static autoDisplay:Z

.field private static cachedResponse:Ljava/lang/String;

.field private static keywords:Ljava/lang/String;

.field public static popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

.field public static state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

.field private static final worker:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private context:Landroid/content/Context;

.field private customFrame:Ljava/lang/String;

.field private isTestMode:Z

.field private manager:Lcom/appsponsor/appsponsorsdk/AdManager;

.field private parentOrientation:I

.field private parentRotation:I

.field private zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateCreated:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->isTestMode:Z

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentOrientation:I

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentRotation:I

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->zoneId:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    const-string v0, ""

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->keywords:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->adImageMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->load()V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    const-string v1, "d017ec26-77b6-4546-a492-38f33e58ba2d"

    const-string v2, "f77d2e4e-261e-4eb7-8949-b509c8dd1f35"

    invoke-static {v0, v1, v2}, Lcom/voxel/sdk/VoxelSDK;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/appsponsor/appsponsorsdk/PopupAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsponsor/appsponsorsdk/PopupAd;->setImageCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/appsponsor/appsponsorsdk/PopupAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->makeRequest()V

    return-void
.end method

.method static synthetic access$300(Lcom/appsponsor/appsponsorsdk/PopupAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->unlockOrientation()V

    return-void
.end method

.method static synthetic access$400(Lcom/appsponsor/appsponsorsdk/PopupAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->showAd()V

    return-void
.end method

.method private getImageCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, ""

    const-string v0, ""

    const-string v0, ""

    if-eq p1, v1, :cond_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->adImageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->adImageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_SDK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method private makeRequest()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x1

    const-string v7, "orient"

    const-string v6, "PopupAd"

    const-string v5, ""

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentOrientation:I

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "orient"

    const-string v3, "l"

    invoke-direct {v2, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentRotation:I

    new-instance v0, Lcom/appsponsor/appsponsorsdk/AdManager;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/appsponsor/appsponsorsdk/AdManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->manager:Lcom/appsponsor/appsponsorsdk/AdManager;

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->manager:Lcom/appsponsor/appsponsorsdk/AdManager;

    iget-boolean v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->isTestMode:Z

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/AdManager;->setTestMode(Z)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->manager:Lcom/appsponsor/appsponsorsdk/AdManager;

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/AdManager;->setAppInfoPairs(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->manager:Lcom/appsponsor/appsponsorsdk/AdManager;

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/AdManager;->setKeywords(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->manager:Lcom/appsponsor/appsponsorsdk/AdManager;

    invoke-virtual {v0, v4}, Lcom/appsponsor/appsponsorsdk/AdManager;->setInterstitialView(Z)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->manager:Lcom/appsponsor/appsponsorsdk/AdManager;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/AdManager;->serverRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->cachedResponse:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateLoaded:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sget-boolean v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->showAd()V

    :cond_1
    const-string v0, "PopupAd"

    const-string v0, "makeRequest: Using cached content"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "orient"

    const-string v3, "p"

    invoke-direct {v2, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v0, "PopupAd"

    const-string v0, "makeRequest: NOT Using cached content"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_5

    const-string v0, "http.keepAlive"

    const-string v2, "false"

    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/appsponsor/appsponsorsdk/utils/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v1, :cond_2

    const-string v0, ""

    if-eq v1, v5, :cond_2

    sput-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->cachedResponse:Ljava/lang/String;

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    invoke-interface {v0}, Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;->didCacheInterstitial()V

    :cond_6
    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sget-object v2, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStatePreLoading:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    if-ne v0, v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAd;->cacheAdImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_7
    :goto_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "custom_frame"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->customFrame:Ljava/lang/String;

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->customFrame:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->customFrame:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;

    new-instance v1, Lcom/appsponsor/appsponsorsdk/PopupAd$1;

    invoke-direct {v1, p0}, Lcom/appsponsor/appsponsorsdk/PopupAd$1;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAd;)V

    invoke-direct {v0, v1}, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;-><init>(Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->customFrame:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "PopupAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse response as json. Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/appsponsor/appsponsorsdk/PopupAd;->cachedResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    :try_start_3
    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateLoaded:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sget-boolean v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->showAd()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private setImageCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->adImageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->adImageMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private showAd()V
    .locals 15

    const/4 v13, 0x0

    const/16 v7, 0xc8

    const/4 v12, 0x1

    const/4 v1, 0x0

    const-string v11, ""

    sput-boolean v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    const-string v0, ""

    const-string v0, "both"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    :try_start_0
    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->cachedResponse:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/appsponsor/appsponsorsdk/PopupAd;->cachedResponse:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "html"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    const-string v4, "width"

    const/16 v5, 0xc8

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :try_start_2
    const-string v5, "height"

    const/16 v6, 0xc8

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    :try_start_3
    const-string v6, "orientation"

    const-string v7, "both"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "win_url"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    :try_start_4
    const-string v8, "external_args"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v8

    :try_start_5
    const-string v9, "click_url"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    :try_start_6
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const-string v10, "landscape"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v6, 0x0

    iput v6, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentOrientation:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v0, v1

    :goto_0
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "VXLClientConnectionOptionCampaignId"

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v9, "VXLInterstitialEnabled"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v6, :cond_0

    if-lez v1, :cond_0

    int-to-long v9, v6

    invoke-static {v9, v10}, Lcom/voxel/sdk/VoxelSDK;->prepareCampaign(J)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_0
    move-object v1, v8

    move-object v6, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v7

    move v14, v4

    move v4, v5

    move v5, v14

    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    sget-object v7, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateDisplayed:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v7, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    const-string v7, "<html>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html<head><style type=\"text/css\">* {-webkit-tap-highlight-color: transparent;}</style><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\" /></head><body style=\"margin:0px;\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</body><html>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    const-class v9, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "html"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "width"

    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "height"

    invoke-virtual {v7, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "orientation"

    iget v5, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentOrientation:I

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "rotation"

    iget v5, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentRotation:I

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "force_rotate"

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "win_url"

    invoke-virtual {v7, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "external_args"

    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "click_url"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "custom_frame"

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->customFrame:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-object v13, Lcom/appsponsor/appsponsorsdk/PopupAd;->cachedResponse:Ljava/lang/String;

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    invoke-interface {v0}, Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;->willAppear()V

    :cond_2
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->manager:Lcom/appsponsor/appsponsorsdk/AdManager;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/AdManager;->increaseSessionDepthCount(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x2710

    invoke-virtual {v0, v7, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/appsponsor/appsponsorsdk/PopupAd$2;

    invoke-direct {v0, p0}, Lcom/appsponsor/appsponsorsdk/PopupAd$2;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAd;)V

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_8
    const-string v10, "portrait"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eq v9, v12, :cond_5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v6, 0x1

    iput v6, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->parentOrientation:I

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v11

    move-object v3, v11

    move-object v4, v1

    move v5, v7

    move v6, v7

    move-object v1, v11

    move-object v7, v11

    :goto_4
    sget-object v8, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    if-eqz v8, :cond_6

    sget-object v8, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    invoke-interface {v8, v0}, Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;->didFailToLoad(Ljava/lang/Exception;)V

    :cond_6
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateCreated:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v13, Lcom/appsponsor/appsponsorsdk/PopupAd;->cachedResponse:Ljava/lang/String;

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "HTML Content Empty. Can not display Ad."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;->didFailToLoad(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v11

    move-object v4, v1

    move v5, v7

    move v6, v7

    move-object v1, v11

    move-object v7, v3

    move-object v3, v11

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v11

    move v5, v7

    move v6, v4

    move-object v4, v1

    move-object v7, v3

    move-object v3, v11

    move-object v1, v11

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v11

    move v6, v4

    move-object v7, v3

    move-object v4, v1

    move-object v3, v11

    move-object v1, v11

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v11

    move v6, v4

    move-object v4, v1

    move-object v1, v11

    move-object v14, v7

    move-object v7, v3

    move-object v3, v14

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v8

    move v6, v4

    move-object v4, v1

    move-object v1, v11

    move-object v14, v7

    move-object v7, v3

    move-object v3, v14

    goto :goto_4

    :catch_6
    move-exception v0

    move v6, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v8

    move-object v14, v7

    move-object v7, v3

    move-object v3, v14

    goto :goto_4

    :catch_7
    move-exception v1

    move v6, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v8

    move-object v14, v7

    move-object v7, v3

    move-object v3, v14

    goto :goto_4

    :cond_9
    move-object v0, v11

    move-object v2, v11

    move-object v3, v1

    move v4, v7

    move v5, v7

    move-object v6, v11

    move-object v1, v11

    goto/16 :goto_1
.end method

.method private unlockOrientation()V
    .locals 1

    iget-object p0, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->context:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method


# virtual methods
.method public cacheAdImage(Ljava/lang/String;)V
    .locals 4

    const-string v3, ""

    const-string v0, ""

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "html"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<img[^>]+src\\s*=\\s*[\'\"]([^\'\"]+)[\'\"][^>]*>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;

    new-instance v2, Lcom/appsponsor/appsponsorsdk/PopupAd$3;

    invoke-direct {v2, p0}, Lcom/appsponsor/appsponsorsdk/PopupAd$3;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAd;)V

    invoke-direct {v1, v2}, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;-><init>(Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateLoaded:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateCreated:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "PopupAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pre_cache  JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateLoaded:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateCreated:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sget-object v2, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateLoaded:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateCreated:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    :cond_1
    throw v0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public getPopupAdListener()Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;
    .locals 1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    return-object v0
.end method

.method public load()V
    .locals 2

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStatePreLoading:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    new-instance v0, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAd;Lcom/appsponsor/appsponsorsdk/PopupAd$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public presentAd()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$4;->$SwitchMap$com$appsponsor$appsponsorsdk$PopupAd$AdState:[I

    sget-object v1, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    invoke-virtual {v1}, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sput-boolean v2, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateLoading:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    new-instance v0, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAd;Lcom/appsponsor/appsponsorsdk/PopupAd$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAd$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_1
    sput-boolean v2, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    goto :goto_0

    :pswitch_2
    sput-boolean v2, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->showAd()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAd;->showAd()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resetState()V
    .locals 1

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateCreated:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "city"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "country"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "gender"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/appsponsor/appsponsorsdk/PopupAd;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setMetro(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "metro"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPopupAdListener(Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;)V
    .locals 0

    sput-object p1, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "region"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUCity(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u_city"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUCountry(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u_country"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUZip(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u_zip"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setYob(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "yob"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "zip"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public testMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAd;->isTestMode:Z

    return-void
.end method
