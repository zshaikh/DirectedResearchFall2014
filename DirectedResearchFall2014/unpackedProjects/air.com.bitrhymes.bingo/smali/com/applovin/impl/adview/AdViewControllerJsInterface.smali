.class public Lcom/applovin/impl/adview/AdViewControllerJsInterface;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private adWebView:Lcom/applovin/impl/adview/v;

.field private currentAd:Lcom/applovin/sdk/AppLovinAd;

.field private volatile currentlyWaiting:Z

.field private volatile interruptNotify:Z

.field private lastKnownDuration:I

.field private lastParameters:Ljava/util/Map;

.field private logger:Lcom/applovin/sdk/AppLovinLogger;

.field private parentActivity:Landroid/app/Activity;

.field private parentView:Landroid/view/ViewGroup;

.field private sdk:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private videoFilename:Ljava/lang/String;

.field private videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

.field private final videoOverlayLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AdViewControllerJsInterface"

    sput-object v0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/impl/adview/v;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlayLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->interruptNotify:Z

    iput-boolean v2, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentlyWaiting:Z

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, v0

    iput-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->sdk:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    iput-object p3, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adWebView:Lcom/applovin/impl/adview/v;

    iput-object p4, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoFilename:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p5, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentAd:Lcom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v2, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    const-string v3, "New instance created."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentAd:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method static synthetic access$300(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/impl/adview/AppLovinVideoOverlay;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentlyWaiting:Z

    return v0
.end method

.method static synthetic access$502(Lcom/applovin/impl/adview/AdViewControllerJsInterface;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentlyWaiting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->interruptNotify:Z

    return v0
.end method

.method static synthetic access$602(Lcom/applovin/impl/adview/AdViewControllerJsInterface;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->interruptNotify:Z

    return p1
.end method

.method static synthetic access$700(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private calculateDimension(Ljava/lang/String;Lcom/applovin/impl/adview/r;)I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/adview/r;->a:Lcom/applovin/impl/adview/r;

    if-ne p2, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parsePercent(Ljava/lang/String;)F

    move-result v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/applovin/impl/adview/r;->b:Lcom/applovin/impl/adview/r;

    if-ne p2, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parsePercent(Ljava/lang/String;)F

    move-result v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private notifyOfNewTime()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/applovin/impl/adview/p;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/p;-><init>(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)V

    const-string v2, "JSNotificationThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private parsePercent(Ljava/lang/String;)F
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public debugMessage(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v1, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received JS debug message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "text"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroyVideoOverlay()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v1, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    const-string v2, "Asked to stop video if playing."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->interruptNotify:Z

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlayLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPlaybackState()Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->requestPause()V

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getVideoLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v2}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->stopUnderlyingMediaPlayer()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentAd:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/applovin/impl/adview/n;

    invoke-direct {v2, p0, v1}, Lcom/applovin/impl/adview/n;-><init>(Lcom/applovin/impl/adview/AdViewControllerJsInterface;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public executeJS(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adWebView:Lcom/applovin/impl/adview/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/v;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v1, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking JS on WebView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPercentViewed()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPercentViewed()I

    move-result v0

    goto :goto_0
.end method

.method public getPlaybackDuration()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastKnownDuration:I

    goto :goto_0
.end method

.method public getPlaybackTime()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPlaybackTime()I

    move-result v0

    goto :goto_0
.end method

.method public handleCommandInvocation(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v1, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to invoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v2, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to invoke method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyJavaScriptOfNewState(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V
    .locals 4

    const-string v0, ""

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v1, :cond_0

    const-string v0, "play"

    :cond_0
    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PAUSED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v1, :cond_1

    const-string v0, "pause"

    :cond_1
    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v1, :cond_2

    const-string v0, "stop"

    :cond_2
    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->FAILED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v1, :cond_3

    const-string v0, "fail"

    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPercentViewed()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    sget-object v2, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v2, :cond_4

    const/16 v2, 0x62

    if-ge v1, v2, :cond_4

    const/16 v1, 0x64

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaybackChanged(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\',\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->executeJS(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pauseVideo(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlayLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->requestPause()V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v2, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    const-string v3, "Template issue: pauseVideo called before renderVideo."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ping(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v1, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    const-string v2, "Received ping request, invoking JS function ping(...)"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ping(\'Android SDK \'5.1.1)"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->executeJS(Ljava/lang/String;)V

    return-void
.end method

.method public playVideo(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlayLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->requestPlay()V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastParameters:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastParameters:Ljava/util/Map;

    const-string v2, "autoplay"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastParameters:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->renderVideo(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v2, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    const-string v3, "Template issue: playVideo called before renderVideo."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public renderVideo(Ljava/util/Map;)V
    .locals 11

    const/4 v1, 0x0

    const-string v2, "x"

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastParameters:Ljava/util/Map;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastParameters:Ljava/util/Map;

    :cond_0
    iput-boolean v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->interruptNotify:Z

    const-string v0, "widthp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/adview/r;->a:Lcom/applovin/impl/adview/r;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->calculateDimension(Ljava/lang/String;Lcom/applovin/impl/adview/r;)I

    move-result v3

    const-string v0, "heightp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/adview/r;->b:Lcom/applovin/impl/adview/r;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->calculateDimension(Ljava/lang/String;Lcom/applovin/impl/adview/r;)I

    move-result v4

    const-string v0, "autoplay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    const-string v0, "x"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoFilename:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v10, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlayLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/applovin/impl/sdk/bc;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v5, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v6, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rending video from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " autoplay is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    new-instance v8, Lcom/applovin/impl/adview/o;

    invoke-direct {v8, p0}, Lcom/applovin/impl/adview/o;-><init>(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)V

    new-instance v0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;

    iget-object v5, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    invoke-direct/range {v0 .. v8}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;-><init>(IIIILandroid/app/Activity;Landroid/net/Uri;Lcom/applovin/sdk/AppLovinLogger;Lcom/applovin/impl/adview/AppLovinVideoCallback;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->parentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getVideoLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastKnownDuration:I

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->playVideo(Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v1, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    const-string v2, "renderVideo called before video filename was set"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method

.method public setCloseButtonHidden(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->logger:Lcom/applovin/sdk/AppLovinLogger;

    sget-object v1, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring a call to setCloseButtonHidden."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPercentViewed(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastParameters:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->renderVideo(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v0, p1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->setPercentViewed(I)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->notifyOfNewTime()V

    return-void
.end method

.method public setPlaybackPercent(Ljava/util/Map;)V
    .locals 1

    const-string v0, "percent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->setPercentViewed(I)V

    return-void
.end method

.method public setPlaybackTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->lastParameters:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->renderVideo(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    invoke-interface {v0, p1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->setPlaybackTime(I)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->notifyOfNewTime()V

    return-void
.end method

.method public setPlaybackTime(Ljava/util/Map;)V
    .locals 1

    const-string v0, "seconds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->setPlaybackTime(I)V

    return-void
.end method

.method public setVideoFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoFilename:Ljava/lang/String;

    return-void
.end method

.method public stopVideo(Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->pauseVideo(Ljava/util/Map;)V

    return-void
.end method
