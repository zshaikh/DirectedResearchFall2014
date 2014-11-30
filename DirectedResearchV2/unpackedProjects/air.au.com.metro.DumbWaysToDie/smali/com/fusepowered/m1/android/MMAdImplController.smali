.class Lcom/fusepowered/m1/android/MMAdImplController;
.super Ljava/lang/Object;
.source "MMAdImplController.java"

# interfaces
.implements Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/MMAdImplController$1;,
        Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;
    }
.end annotation


# static fields
.field static final NO_ID_RETURNED:J = -0x4L

.field private static final saveableControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/fusepowered/m1/android/MMAdImplController;",
            ">;"
        }
    .end annotation
.end field

.field private static final weakUnsaveableAdRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMAdImplController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field volatile adImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field

.field volatile linkedAdImplId:J

.field requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

.field volatile webView:Lcom/fusepowered/m1/android/MMWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 4
    .param p1, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "**************** creating new controller."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    .line 65
    iget-wide v0, p1, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/MMAdImplController;->linkForExpansion(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 68
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMAdImplController;->getWebViewFromExistingAdImpl(Lcom/fusepowered/m1/android/MMAdImpl;)Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    instance-of v0, p1, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    .line 76
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/MMWebView;->requiresPreAdSizeFix:Z

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    goto :goto_0
.end method

.method static declared-synchronized assignAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 7
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 102
    const-class v2, Lcom/fusepowered/m1/android/MMAdImplController;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v3, :cond_3

    .line 104
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Has a controller"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    :goto_1
    monitor-exit v2

    return-void

    .line 112
    :cond_2
    :try_start_1
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 118
    :cond_3
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*****************************************assignAdViewController for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 119
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImplController;

    .line 120
    .local v0, "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    if-nez v0, :cond_5

    .line 122
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 123
    .local v1, "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fusepowered/m1/android/MMAdImplController;>;"
    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    check-cast v0, Lcom/fusepowered/m1/android/MMAdImplController;

    .line 125
    .restart local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    :cond_4
    if-nez v0, :cond_5

    .line 127
    new-instance v0, Lcom/fusepowered/m1/android/MMAdImplController;

    .end local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/MMAdImplController;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 128
    .restart local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v1    # "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fusepowered/m1/android/MMAdImplController;>;"
    :cond_5
    :goto_2
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    .line 137
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    .line 139
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v3, :cond_1

    instance-of v3, p0, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;

    if-nez v3, :cond_1

    .line 141
    invoke-static {p0}, Lcom/fusepowered/m1/android/MMAdImplController;->setupWebView(Lcom/fusepowered/m1/android/MMAdImpl;)V

    goto/16 :goto_1

    .line 131
    .restart local v1    # "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fusepowered/m1/android/MMAdImplController;>;"
    :cond_6
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static declared-synchronized attachWebViewFromOverlay(Lcom/fusepowered/m1/android/MMAdImpl;)Z
    .locals 5
    .param p0, "overlayAdImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    const/4 v4, 0x0

    .line 170
    const-class v1, Lcom/fusepowered/m1/android/MMAdImplController;

    monitor-enter v1

    if-nez p0, :cond_0

    move v2, v4

    .line 189
    :goto_0
    monitor-exit v1

    return v2

    .line 172
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachWebViewFromOverlay with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->resetSpeechKit()V

    .line 175
    :cond_1
    iget-wide v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v2, v3}, Lcom/fusepowered/m1/android/MMAdImplController;->getAdImplWithId(J)Lcom/fusepowered/m1/android/MMAdImpl;

    move-result-object v0

    .line 176
    .local v0, "bannerAdImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v2, :cond_3

    .line 178
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-nez v2, :cond_2

    .line 180
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    iput-object v3, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    .line 181
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {p0, v2}, Lcom/fusepowered/m1/android/MMAdImpl;->removeView(Lcom/fusepowered/m1/android/MMWebView;)V

    .line 182
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    .line 185
    :cond_2
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->setMraidDefault()V

    .line 186
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getMMWebViewClient()Lcom/fusepowered/m1/android/MMWebViewClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m1/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 189
    goto :goto_0

    .line 170
    .end local v0    # "bannerAdImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method static controllersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SAVED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static destroyOtherInlineVideo(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 861
    sget-object v7, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 863
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/fusepowered/m1/android/MMAdImplController;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/m1/android/MMAdImplController;

    .line 864
    .local v3, "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    if-eqz v3, :cond_0

    .line 866
    iget-object v7, v3, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 867
    .local v2, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v2, :cond_0

    .line 869
    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMAdImpl;->getCallingAd()Lcom/fusepowered/m1/android/MMAd;

    move-result-object v1

    .line 870
    .local v1, "ad":Lcom/fusepowered/m1/android/MMAd;
    if-eqz v1, :cond_0

    instance-of v7, v1, Lcom/fusepowered/m1/android/MMLayout;

    if-eqz v7, :cond_0

    .line 872
    move-object v0, v1

    check-cast v0, Lcom/fusepowered/m1/android/MMLayout;

    move-object v6, v0

    .line 873
    .local v6, "layout":Lcom/fusepowered/m1/android/MMLayout;
    invoke-virtual {v6}, Lcom/fusepowered/m1/android/MMLayout;->removeVideo()V

    goto :goto_0

    .line 879
    .end local v1    # "ad":Lcom/fusepowered/m1/android/MMAd;
    .end local v2    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    .end local v3    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/fusepowered/m1/android/MMAdImplController;>;"
    .end local v6    # "layout":Lcom/fusepowered/m1/android/MMLayout;
    :cond_1
    return-void
.end method

.method static declared-synchronized getAdImplWithId(J)Lcom/fusepowered/m1/android/MMAdImpl;
    .locals 6
    .param p0, "internalId"    # J

    .prologue
    const/4 v5, 0x0

    .line 207
    const-class v2, Lcom/fusepowered/m1/android/MMAdImplController;

    monitor-enter v2

    const-wide/16 v3, -0x4

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    move-object v3, v5

    .line 218
    .end local p0    # "internalId":J
    :goto_0
    monitor-exit v2

    return-object v3

    .line 209
    .restart local p0    # "internalId":J
    :cond_0
    :try_start_0
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImplController;

    .line 210
    .local v0, "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    if-nez v0, :cond_1

    .line 212
    sget-object v3, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 213
    .local v1, "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fusepowered/m1/android/MMAdImplController;>;"
    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    check-cast v0, Lcom/fusepowered/m1/android/MMAdImplController;

    .line 216
    .end local v1    # "controllerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fusepowered/m1/android/MMAdImplController;>;"
    .restart local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    :cond_1
    if-eqz v0, :cond_2

    .line 217
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "internalId":J
    check-cast p0, Lcom/fusepowered/m1/android/MMAdImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p0

    goto :goto_0

    .restart local p0    # "internalId":J
    :cond_2
    move-object v3, v5

    .line 218
    goto :goto_0

    .line 207
    .end local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    .end local p0    # "internalId":J
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method static declared-synchronized getWebViewFromExistingAdImpl(Lcom/fusepowered/m1/android/MMAdImpl;)Lcom/fusepowered/m1/android/MMWebView;
    .locals 6
    .param p0, "requestorAdImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 194
    const-class v2, Lcom/fusepowered/m1/android/MMAdImplController;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWebViewFromExistingLayout("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " taking from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "mmWebView":Lcom/fusepowered/m1/android/MMWebView;
    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v3, v4}, Lcom/fusepowered/m1/android/MMAdImplController;->getAdImplWithId(J)Lcom/fusepowered/m1/android/MMAdImpl;

    move-result-object v0

    .line 197
    .local v0, "holderAdImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v3, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    .line 200
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit v2

    return-object v1

    .line 194
    .end local v0    # "holderAdImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    .end local v1    # "mmWebView":Lcom/fusepowered/m1/android/MMWebView;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private declared-synchronized isDownloadingCachedAd(Lcom/fusepowered/m1/android/MMAdImpl;)Z
    .locals 5
    .param p1, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    const/4 v4, 0x1

    .line 338
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 340
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v2

    iget-object v3, p1, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m1/android/HandShake;->isAdTypeDownloading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string v2, "There is a download in progress. Defering call for new ad"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 343
    new-instance v2, Lcom/fusepowered/m1/android/MMException;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {p1, v2}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 365
    :goto_0
    monitor-exit p0

    return v2

    .line 348
    :cond_0
    :try_start_1
    const-string v2, "No download in progress."

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/m1/android/AdCache;->loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v1

    .line 353
    .local v1, "incompleteAd":Lcom/fusepowered/m1/android/CachedAd;
    if-eqz v1, :cond_1

    .line 356
    const-string v2, "Last ad wasn\'t fully downloaded. Download again."

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 357
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK$Event;->fetchStartedCaching(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 358
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, p0}, Lcom/fusepowered/m1/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/CachedAd;Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;)Z

    move v2, v4

    .line 359
    goto :goto_0

    .line 363
    :cond_1
    const-string v2, "No incomplete downloads."

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    const/4 v2, 0x0

    goto :goto_0

    .line 338
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "incompleteAd":Lcom/fusepowered/m1/android/CachedAd;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static declared-synchronized removeAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 6
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 229
    const-class v1, Lcom/fusepowered/m1/android/MMAdImplController;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 231
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    sget-object v2, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v2, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 235
    sget-object v2, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****************RemoveAdviewcontroller - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 243
    iget-boolean v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->isFinishing:Z

    if-eqz v2, :cond_3

    .line 245
    sget-object v2, Lcom/fusepowered/m1/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v2, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    .line 250
    .local v0, "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****************RemoveAdviewcontroller - controllers "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fusepowered/m1/android/MMAdImplController;->controllersToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 254
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v2, :cond_0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****************RemoveAdviewcontroller - controller!=null, expanding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    iget-boolean v3, v3, Lcom/fusepowered/m1/android/MMWebView;->isExpanding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 257
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {p0, v2}, Lcom/fusepowered/m1/android/MMAdImpl;->removeView(Lcom/fusepowered/m1/android/MMWebView;)V

    .line 258
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/fusepowered/m1/android/MMWebView;->isExpanding:Z

    .line 259
    iget-boolean v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->isFinishing:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 261
    iget-object v2, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->destroy()V

    .line 262
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 229
    .end local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 238
    :cond_4
    :try_start_2
    sget-object v2, Lcom/fusepowered/m1/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private requestAdInternal(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 3
    .param p1, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 312
    iget-object v1, p1, Lcom/fusepowered/m1/android/MMAdImpl;->apid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 314
    new-instance v0, Lcom/fusepowered/m1/android/MMException;

    const-string v1, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    .line 315
    .local v0, "error":Lcom/fusepowered/m1/android/MMException;
    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 316
    invoke-static {p1, v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    .line 334
    .end local v0    # "error":Lcom/fusepowered/m1/android/MMException;
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->isBanner()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdImplController;->isDownloadingCachedAd(Lcom/fusepowered/m1/android/MMAdImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    :cond_2
    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    if-eqz v1, :cond_3

    .line 327
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 328
    new-instance v1, Lcom/fusepowered/m1/android/MMException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {p1, v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    .line 329
    monitor-exit p0

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 331
    :cond_3
    :try_start_1
    new-instance v1, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/fusepowered/m1/android/MMAdImplController;Lcom/fusepowered/m1/android/MMAdImplController$1;)V

    iput-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    .line 332
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    invoke-static {v1}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 333
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized setupWebView(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 6
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 147
    const-class v2, Lcom/fusepowered/m1/android/MMAdImplController;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    .line 148
    .local v0, "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getMMWebViewClient()Lcom/fusepowered/m1/android/MMWebViewClient;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fusepowered/m1/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 149
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/m1/android/MMWebView;->isCurrentParent(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->isBanner()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/MMWebView;->isMraidResized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v3, p0}, Lcom/fusepowered/m1/android/MMWebView;->unresizeToDefault(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 162
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/MMWebView;->removeFromParent()V

    .line 163
    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {p0, v3, v1}, Lcom/fusepowered/m1/android/MMAdImpl;->addView(Lcom/fusepowered/m1/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    monitor-exit v2

    return-void

    .line 160
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 147
    .end local v0    # "controller":Lcom/fusepowered/m1/android/MMAdImplController;
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method checkReason(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/CachedAd;)I
    .locals 6
    .param p1, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;
    .param p2, "ad"    # Lcom/fusepowered/m1/android/CachedAd;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 393
    invoke-virtual {p2}, Lcom/fusepowered/m1/android/CachedAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "%s is expired."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    const/16 v0, 0x15

    .line 408
    :goto_0
    return v0

    .line 398
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fusepowered/m1/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    const-string v0, "%s is not on disk."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    const/16 v0, 0x16

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v0

    iget-object v1, p1, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    iget-wide v2, p2, Lcom/fusepowered/m1/android/CachedAd;->deferredViewStart:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    const-string v0, "%s cannot be shown at this time."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    const/16 v0, 0x18

    goto :goto_0

    .line 408
    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method

.method display(Lcom/fusepowered/m1/android/MMAdImpl;)I
    .locals 4
    .param p1, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v0

    .line 431
    .local v0, "ad":Lcom/fusepowered/m1/android/CachedAd;
    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/fusepowered/m1/android/CachedAd;->canShow(Landroid/content/Context;Lcom/fusepowered/m1/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK$Event;->displayStarted(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 436
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fusepowered/m1/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/CachedAd;->show(Landroid/content/Context;J)V

    .line 438
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m1/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x0

    .line 446
    :goto_0
    return v1

    .line 443
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m1/android/MMAdImplController;->checkReason(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/CachedAd;)I

    move-result v1

    goto :goto_0

    .line 446
    :cond_1
    const/16 v1, 0x14

    goto :goto_0
.end method

.method public downloadCompleted(Lcom/fusepowered/m1/android/CachedAd;Z)V
    .locals 4
    .param p1, "ad"    # Lcom/fusepowered/m1/android/CachedAd;
    .param p2, "success"    # Z

    .prologue
    .line 377
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 378
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-nez v0, :cond_0

    .line 380
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 383
    :cond_0
    if-eqz p2, :cond_1

    .line 384
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fusepowered/m1/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_1
    if-eqz p2, :cond_2

    .line 386
    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestCompleted(Lcom/fusepowered/m1/android/MMAdImpl;)V

    goto :goto_0

    .line 388
    :cond_2
    new-instance v1, Lcom/fusepowered/m1/android/MMException;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    goto :goto_0
.end method

.method public downloadStart(Lcom/fusepowered/m1/android/CachedAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/fusepowered/m1/android/CachedAd;

    .prologue
    .line 840
    return-void
.end method

.method public getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 796
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastHeaders()Lcom/fusepowered/m1/android/HttpMMHeaders;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-nez v0, :cond_0

    .line 790
    const/4 v0, 0x0

    .line 791
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getLastHeaders()Lcom/fusepowered/m1/android/HttpMMHeaders;

    move-result-object v0

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 801
    const/4 v2, 0x0

    .line 802
    .local v2, "userAgent":Ljava/lang/String;
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 803
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 806
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMAdImplController;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 811
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 815
    :cond_1
    return-object v2
.end method

.method isAdAvailable(Lcom/fusepowered/m1/android/MMAdImpl;)I
    .locals 3
    .param p1, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v0

    .line 414
    .local v0, "ad":Lcom/fusepowered/m1/android/CachedAd;
    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/fusepowered/m1/android/CachedAd;->canShow(Landroid/content/Context;Lcom/fusepowered/m1/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const/4 v1, 0x0

    .line 425
    :goto_0
    return v1

    .line 419
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m1/android/MMAdImplController;->checkReason(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/CachedAd;)I

    move-result v1

    goto :goto_0

    .line 423
    :cond_1
    const-string v1, "No next ad."

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 425
    const/16 v1, 0x14

    goto :goto_0
.end method

.method linkForExpansion(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 4
    .param p1, "expansionAdImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 87
    iget-wide v1, p1, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMAdImplController;->getAdImplWithId(J)Lcom/fusepowered/m1/android/MMAdImpl;

    move-result-object v0

    .line 88
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 90
    iget-wide v1, p1, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    iput-wide v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->linkedAdImplId:J

    .line 91
    iget-object v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-wide v2, p1, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    iput-wide v2, v1, Lcom/fusepowered/m1/android/MMAdImplController;->linkedAdImplId:J

    .line 92
    iget-wide v1, p1, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    iput-wide v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    .line 94
    :cond_0
    return-void
.end method

.method loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method loadWebContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "adUrl"    # Ljava/lang/String;

    .prologue
    .line 852
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 853
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fusepowered/m1/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 857
    :cond_0
    return-void
.end method

.method requestAd()V
    .locals 6

    .prologue
    const/16 v5, 0x19

    const/16 v4, 0x10

    const/4 v3, 0x3

    .line 269
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 271
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-nez v0, :cond_0

    .line 273
    invoke-static {v5}, Lcom/fusepowered/m1/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 274
    new-instance v2, Lcom/fusepowered/m1/android/MMException;

    invoke-direct {v2, v5}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    .line 307
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->isRefreshable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    new-instance v2, Lcom/fusepowered/m1/android/MMException;

    invoke-direct {v2, v4}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->isUiThread()Z

    move-result v2

    if-nez v2, :cond_2

    .line 286
    invoke-static {v3}, Lcom/fusepowered/m1/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 287
    new-instance v2, Lcom/fusepowered/m1/android/MMException;

    invoke-direct {v2, v3}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v2

    iget-boolean v2, v2, Lcom/fusepowered/m1/android/HandShake;->kill:Z

    if-eqz v2, :cond_3

    .line 293
    const-string v2, "The server is no longer allowing ads."

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 294
    new-instance v2, Lcom/fusepowered/m1/android/MMException;

    invoke-direct {v2, v4}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    goto :goto_0

    .line 299
    :cond_3
    :try_start_0
    const-string v2, "adLayout - requestAd"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdInternal(Lcom/fusepowered/m1/android/MMAdImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "There was an exception with the ad request. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setLastHeaders(Lcom/fusepowered/m1/android/HttpMMHeaders;)V
    .locals 1
    .param p1, "lastHeaders"    # Lcom/fusepowered/m1/android/HttpMMHeaders;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMWebView;->setLastHeaders(Lcom/fusepowered/m1/android/HttpMMHeaders;)V

    .line 785
    :cond_0
    return-void
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "webContent"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/MMAdImplController;
    check-cast p0, Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1, p2, p0}, Lcom/fusepowered/m1/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 779
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 826
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 827
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-LinkInC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImplController;->linkedAdImplId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method unresizeToDefault()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/MMAdImplController;
    check-cast p0, Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m1/android/MMWebView;->unresizeToDefault(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 848
    :cond_0
    return-void
.end method
