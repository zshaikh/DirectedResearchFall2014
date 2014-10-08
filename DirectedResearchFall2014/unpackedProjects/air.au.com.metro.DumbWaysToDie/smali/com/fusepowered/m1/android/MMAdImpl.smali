.class abstract Lcom/fusepowered/m1/android/MMAdImpl;
.super Ljava/lang/Object;
.source "MMAdImpl.java"

# interfaces
.implements Lcom/fusepowered/m1/android/MMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;,
        Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;
    }
.end annotation


# static fields
.field static final BANNER:Ljava/lang/String; = "b"

.field static final INTERSTITIAL:Ljava/lang/String; = "i"

.field private static nextAdViewId:J


# instance fields
.field adProperties:Lcom/fusepowered/m1/android/AdProperties;

.field adType:Ljava/lang/String;

.field apid:Ljava/lang/String;

.field contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field controller:Lcom/fusepowered/m1/android/MMAdImplController;

.field ignoreDensityScaling:Z

.field internalId:J

.field isFinishing:Z

.field lastAdRequest:J

.field linkForExpansionId:J

.field protected mmRequest:Lcom/fusepowered/m1/android/MMRequest;

.field mmWebViewClient:Lcom/fusepowered/m1/android/MMWebViewClient;

.field mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

.field obj:Lorg/json/JSONObject;

.field requestListener:Lcom/fusepowered/m1/android/RequestListener;

.field userData:Ljava/lang/String;

.field xmlLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/fusepowered/m1/android/MMAdImpl;->nextAdViewId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->ignoreDensityScaling:Z

    .line 25
    const-string v0, "28911"

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->apid:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->xmlLayout:Z

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    .line 85
    new-instance v0, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/MMAdImpl$BasicWebViewClientListener;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

    .line 87
    const-class v0, Lcom/fusepowered/m1/android/MMAdImpl;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-wide v1, Lcom/fusepowered/m1/android/MMAdImpl;->nextAdViewId:J

    iput-wide v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    .line 90
    sget-wide v1, Lcom/fusepowered/m1/android/MMAdImpl;->nextAdViewId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/fusepowered/m1/android/MMAdImpl;->nextAdViewId:J

    .line 91
    const-string v1, "Assigning MMAdImpl internal id: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getAdTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "i"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method addView(Lcom/fusepowered/m1/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .param p1, "webView"    # Lcom/fusepowered/m1/android/MMWebView;
    .param p2, "webLayoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 313
    return-void
.end method

.method animateTransition()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method getAdProperties()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adProperties:Lcom/fusepowered/m1/android/AdProperties;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adProperties:Lcom/fusepowered/m1/android/AdProperties;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdProperties;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->apid:Ljava/lang/String;

    return-object v0
.end method

.method getCachedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->apid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract getCallingAd()Lcom/fusepowered/m1/android/MMAd;
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/MMAdImpl;
    check-cast p0, Landroid/content/Context;

    move-object v0, p0

    .line 221
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/fusepowered/m1/android/MMAdImpl;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, -0x1

    return v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->ignoreDensityScaling:Z

    return v0
.end method

.method public getListener()Lcom/fusepowered/m1/android/RequestListener;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    return-object v0
.end method

.method public getMMRequest()Lcom/fusepowered/m1/android/MMRequest;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    return-object v0
.end method

.method getMMWebViewClient()Lcom/fusepowered/m1/android/MMWebViewClient;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning a client for user: DefaultWebViewClient, adimpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/fusepowered/m1/android/BannerWebViewClient;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m1/android/BannerWebViewClient;-><init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V

    return-object v0
.end method

.method getReqType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, "fetch"

    return-object v0
.end method

.method getRequestCompletedAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    return-object v0
.end method

.method getRequestFailedAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, "millennialmedia.action.ACTION_FETCH_FAILED"

    return-object v0
.end method

.method public hasCachedVideoSupport()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method insertUrlAdMetaValues(Ljava/util/Map;)V
    .locals 7
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
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "video"

    const-string v5, "false"

    const-string v4, "b"

    const-string v3, "at"

    .line 270
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 272
    .local v0, "context":Landroid/content/Context;
    const-string v1, "ar"

    const-string v2, "manual"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v1, "sdkapid"

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->apid:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "do"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "olock"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->getOrientationLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->hasCachedVideoSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const-string v1, "cachedvideo"

    const-string v2, "false"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    const-string v1, "reqtype"

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getReqType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    invoke-virtual {v1, p1}, Lcom/fusepowered/m1/android/MMRequest;->getUrlParams(Ljava/util/Map;)V

    .line 283
    :cond_1
    invoke-static {v0}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/fusepowered/m1/android/HandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    const-string v1, "video"

    const-string v1, "true"

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    const-string v2, "b"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    :cond_2
    const-string v1, "at"

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :goto_1
    return-void

    .line 286
    :cond_3
    const-string v1, "video"

    const-string v1, "false"

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") **********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_5
    const-string v1, "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 302
    const-string v1, "at"

    const-string v1, "b"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public isBanner()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method isExpandingToUrl()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method isLifecycleObservable()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method isRefreshable()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 184
    sget-boolean v5, Lcom/fusepowered/m1/android/MMSDK;->disableAdMinRefresh:Z

    if-eqz v5, :cond_0

    .line 186
    const-string v5, "Minimum adrefresh time ignored"

    invoke-static {v5}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move v5, v9

    .line 199
    :goto_0
    return v5

    .line 189
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 190
    .local v2, "currentTime":J
    iget-wide v5, p0, Lcom/fusepowered/m1/android/MMAdImpl;->lastAdRequest:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v4, v5

    .line 191
    .local v4, "lastRequestSecs":I
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v5

    iget-wide v0, v5, Lcom/fusepowered/m1/android/HandShake;->adRefreshSecs:J

    .line 192
    .local v0, "adRefreshSecs":J
    int-to-long v5, v4

    cmp-long v5, v5, v0

    if-ltz v5, :cond_1

    .line 194
    iput-wide v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->lastAdRequest:J

    move v5, v9

    .line 195
    goto :goto_0

    .line 198
    :cond_1
    const-string v5, "Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    int-to-long v7, v4

    sub-long v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v10

    .line 199
    goto :goto_0
.end method

.method isTransitionAnimated()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method isUpdatingMraid()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/MMWebView;->isExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepareTransition(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 210
    return-void
.end method

.method removeProgressBar()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method removeView(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 0
    .param p1, "mmWebView"    # Lcom/fusepowered/m1/android/MMWebView;

    .prologue
    .line 309
    return-void
.end method

.method requestAd()V
    .locals 1

    .prologue
    .line 175
    invoke-static {p0}, Lcom/fusepowered/m1/android/MMAdImplController;->assignAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 176
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImplController;->requestAd()V

    .line 180
    :cond_0
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 2
    .param p1, "apid"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lcom/fusepowered/m1/android/HandShake;->apid:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/m1/android/HandShake;->apid:Ljava/lang/String;

    const-string v1, "28911"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->apid:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/m1/android/HandShake;->apid:Ljava/lang/String;

    .line 105
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->apid:Ljava/lang/String;

    .line 106
    return-void
.end method

.method setClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 317
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 0
    .param p1, "ignoresDensityScaling"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->ignoreDensityScaling:Z

    .line 144
    return-void
.end method

.method public setListener(Lcom/fusepowered/m1/android/RequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m1/android/RequestListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    .line 123
    return-void
.end method

.method public setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/fusepowered/m1/android/MMRequest;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdType[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") InternalId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") LinkedId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") isFinishing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->isFinishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unresizeToDefault()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImplController;->unresizeToDefault()V

    .line 414
    :cond_0
    return-void
.end method
