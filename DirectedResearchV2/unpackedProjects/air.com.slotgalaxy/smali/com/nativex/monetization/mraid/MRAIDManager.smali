.class public Lcom/nativex/monetization/mraid/MRAIDManager;
.super Ljava/lang/Object;
.source "MRAIDManager.java"


# static fields
.field public static final MSG_EXPIRE_CONTAINER:I = 0x3eb

.field public static final MSG_EXPIRE_CONTAINER_DELAY:J = 0x7530L

.field public static final MSG_RELEASE_AD:I = 0x3ea

.field public static final MSG_RELEASE_AD_DELAY:J = 0x7d0L

.field public static final PARAM_CACHED_OFFERS:Ljava/lang/String; = "CachedOffers"

.field public static final PARAM_PLACEMENT_ID:Ljava/lang/String; = "placement"

.field public static final PARAM_PLACEMENT_TYPE:Ljava/lang/String; = "placementtype"

.field public static final PARAM_RESPONSE_TYPE:Ljava/lang/String; = "responseType"

.field public static final PARAM_SESSION_ID:Ljava/lang/String; = "SessionId"

.field public static final PARAM_THEME_ID:Ljava/lang/String; = "ThemeId"

.field public static final PARAM_UNIT_ID:Ljava/lang/String; = "AdUnitId"

.field private static containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

.field private static final handler:Landroid/os/Handler;

.field private static mraidFolder:Ljava/lang/String;

.field private static runningOnUnity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nativex/monetization/mraid/MRAIDManager;->runningOnUnity:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    .line 517
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDManager$2;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/MRAIDManager$2;-><init>()V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->expireContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    return-void
.end method

.method public static final cacheAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Lcom/nativex/monetization/listeners/OnAdEvent;Landroid/graphics/Rect;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p3, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;
    .param p4, "position"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    .line 105
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p3

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/nativex/monetization/mraid/MRAIDManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final cacheBanner(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/listeners/OnAdEvent;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 81
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, p1, v0, p3, p2}, Lcom/nativex/monetization/mraid/MRAIDManager;->cacheAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Lcom/nativex/monetization/listeners/OnAdEvent;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static final cacheInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 96
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/nativex/monetization/mraid/MRAIDManager;->cacheAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Lcom/nativex/monetization/listeners/OnAdEvent;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private static final createContainer(Landroid/app/Activity;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;Z)Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "adPosition"    # Lcom/nativex/monetization/enums/BannerPosition;
    .param p5, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;
    .param p6, "cache"    # Z

    .prologue
    .line 299
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "sessionId":Ljava/lang/String;
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;-><init>(Landroid/app/Activity;)V

    .line 301
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-virtual {v0, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setAdName(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setPlacementType(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 303
    if-eqz p3, :cond_0

    .line 304
    invoke-virtual {v0, p3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setAdPosition(Landroid/graphics/Rect;)V

    .line 306
    :cond_0
    invoke-virtual {v0, p4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBannerPosition(Lcom/nativex/monetization/enums/BannerPosition;)V

    .line 307
    invoke-virtual {v0, p5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setOnRichMediaEventListener(Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 308
    invoke-virtual {v0, p6}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setAdCached(Z)V

    .line 309
    invoke-static {v1, p2, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->getUrl(Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->loadAdUrl(Ljava/lang/String;)V

    .line 310
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, v0, p6}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->putContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;Z)V

    .line 311
    invoke-virtual {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->attachToActivity(Landroid/app/Activity;)V

    .line 312
    const-string v2, "Ad Created"

    invoke-static {v0, v2}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 313
    return-object v0
.end method

.method private static final expireContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 3
    .param p0, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    const-string v1, "The ad has expired"

    .line 271
    if-eqz p0, :cond_0

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v1

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v1, v2, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getState()Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    move-result-object v1

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$States;->EXPANDED:Lcom/nativex/monetization/mraid/MRAIDUtils$States;

    if-ne v1, v2, :cond_1

    .line 276
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setAdExpired(Z)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->EXPIRED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "The ad has expired"

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 279
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to release expired container"

    invoke-static {p0, v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->EXPIRED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "The ad has expired"

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 283
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static final expireContainerDelayed(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 4
    .param p0, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 262
    if-eqz p0, :cond_0

    .line 263
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 264
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 266
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static final fireListener(Lcom/nativex/monetization/listeners/OnAdEvent;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 3
    .param p0, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;
    .param p1, "event"    # Lcom/nativex/monetization/enums/AdEvent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 344
    :try_start_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/nativex/monetization/mraid/MRAIDManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDManager$1;-><init>(Lcom/nativex/monetization/listeners/OnAdEvent;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to provide callback"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static fireListener(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 2
    .param p0, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p1, "event"    # Lcom/nativex/monetization/enums/AdEvent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 363
    if-eqz p0, :cond_0

    .line 364
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to provide callback"

    invoke-static {p0, v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final getUrl(Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)Ljava/lang/String;
    .locals 10
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 408
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Folder url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 409
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 411
    .local v7, "url":Ljava/lang/String;
    const-string v8, "SessionId"

    invoke-interface {v6, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v8, "responseType"

    const-string v9, "json"

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nativex/monetization/manager/CacheDBManager;->getOffersCachedList()Ljava/util/List;

    move-result-object v5

    .line 415
    .local v5, "offerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v0, "cachedOffersString":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 418
    .local v3, "offerCount":I
    const/4 v2, 0x1

    .line 419
    .local v2, "loopCount":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 420
    .local v4, "offerId":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    if-ge v2, v3, :cond_0

    .line 422
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v4    # "offerId":Ljava/lang/Long;
    :cond_1
    const-string v8, "CachedOffers"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v0    # "cachedOffersString":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "loopCount":I
    .end local v3    # "offerCount":I
    :cond_2
    sget-object v8, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 430
    sget-object v8, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v9, "file:///android_asset/mraid_test/mraid_test_video_page.html"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v9, "http://internal.teamfreeze.com/internal.mobile.com/Richmedia/Preview/RichmediaTemplatePreview.aspx"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v9, "http://internal2.teamfreeze.com/internal.mobile.com/Richmedia/Preview/RichmediaTemplatePreview.aspx"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v9, "file:///android_asset/mraid_test/mraid_test_custom_scheme_response_time_page.html"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v9, "https://dl.dropboxusercontent.com/u/15676262/AdSimulator/template.html"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    const-string v9, "https://dl.dropboxusercontent.com/s/uushlgxxnf77zml/mraid_test_video_page.html?token_hash=AAF2-x1x1estOcg9hbncFPpJ4Q0MMkK47QbtOtFV0_5esQ&dl=1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 431
    :cond_3
    sget-object v7, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    .line 443
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 444
    return-object v7

    .line 433
    :cond_4
    sget-object v8, Lcom/nativex/monetization/mraid/MRAIDManager;->mraidFolder:Ljava/lang/String;

    invoke-static {v8}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 436
    :cond_5
    invoke-static {p1}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 437
    const-string v8, "placement"

    invoke-interface {v6, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_6
    const-string v8, "placementtype"

    invoke-virtual {p2}, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v8, "Richmedia/"

    invoke-static {v8}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/nativex/common/Utilities;->appendParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z
    .locals 3
    .param p0, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 582
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v1, :cond_2

    .line 583
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    move-result-object v0

    .line 584
    .local v0, "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 586
    .end local v0    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :goto_0
    return v1

    .restart local v0    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_1
    move v1, v2

    .line 584
    goto :goto_0

    .end local v0    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :cond_2
    move v1, v2

    .line 586
    goto :goto_0
.end method

.method public static hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z
    .locals 3
    .param p0, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cached"    # Z
    .param p3, "fireListener"    # Z

    .prologue
    .line 594
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v1, :cond_4

    .line 596
    if-eqz p2, :cond_1

    .line 597
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getCachedContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 601
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :goto_0
    if-eqz v0, :cond_4

    .line 602
    if-eqz p3, :cond_0

    .line 603
    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 604
    if-eqz p2, :cond_2

    .line 605
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Ad is already fetched and ready to display"

    invoke-static {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 613
    :cond_0
    :goto_1
    const/4 v1, 0x1

    .line 616
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :goto_2
    return v1

    .line 599
    :cond_1
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .restart local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    goto :goto_0

    .line 607
    :cond_2
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_SHOWN:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Ad is already shown. Dismiss it in order to show another one"

    invoke-static {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 610
    :cond_3
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->DOWNLOADING:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Ad is being downloaded at the moment"

    invoke-static {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 616
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static final hasBanner(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 548
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0, v1, v1}, Lcom/nativex/monetization/mraid/MRAIDManager;->hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasBanner(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shouldFireListener"    # Z

    .prologue
    .line 559
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasCachedBanner(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 570
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasCachedBanner(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shouldFireListener"    # Z

    .prologue
    .line 576
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasCachedInterstitial(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 553
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasCachedInterstitial(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shouldFireListener"    # Z

    .prologue
    .line 565
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasInterstitial(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 537
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0, v1, v1}, Lcom/nativex/monetization/mraid/MRAIDManager;->hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final hasInterstitial(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shouldFireListener"    # Z

    .prologue
    .line 543
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->hasAd(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static isAdLoaded(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z
    .locals 3
    .param p0, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 669
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v1, :cond_1

    .line 670
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-static {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getContainerName(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 671
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result v1

    .line 680
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :goto_0
    return v1

    .line 674
    .restart local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getCachedContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result v1

    goto :goto_0

    .line 680
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBannerLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 658
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->isAdLoaded(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInterstitialLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 663
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->isAdLoaded(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final isRunningOnUnity()Z
    .locals 1

    .prologue
    .line 689
    sget-boolean v0, Lcom/nativex/monetization/mraid/MRAIDManager;->runningOnUnity:Z

    return v0
.end method

.method public static release()V
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->release()V

    .line 399
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    .line 401
    :cond_0
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    return-void
.end method

.method public static final releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 3
    .param p0, "mraidContainer"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 475
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatusToReady()I

    .line 477
    if-nez p0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 481
    :cond_0
    :try_start_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 482
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "The ad failed to dismiss."

    invoke-static {p0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 495
    const-string v1, "Unable to release ad"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 486
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v1, :cond_2

    .line 487
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->releaseContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static final releaseAd(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 461
    :try_start_0
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 462
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p1, p0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 463
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 464
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to release ad"

    invoke-static {v2, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static releaseAdCancel(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 2
    .param p0, "mraidContainer"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 501
    if-eqz p0, :cond_0

    .line 503
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 505
    :cond_0
    return-void
.end method

.method public static releaseAdDelayed(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 4
    .param p0, "mraidContainer"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 509
    if-nez p0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 514
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static final releaseBanner(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 454
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 455
    return-void
.end method

.method public static final releaseInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 449
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 450
    return-void
.end method

.method public static final reloadAd(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 385
    :try_start_0
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 386
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p1, p0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 387
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->reload()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception caught while reloading ad"

    invoke-static {v2, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final reloadBanner(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->reloadAd(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 379
    return-void
.end method

.method public static final reloadInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 373
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->reloadAd(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;)V

    .line 374
    return-void
.end method

.method public static final setAdPosition(Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;)V
    .locals 4
    .param p0, "adName"    # Ljava/lang/String;
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "adPosition"    # Lcom/nativex/monetization/enums/BannerPosition;

    .prologue
    .line 321
    :try_start_0
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 322
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-virtual {v2, v3, p0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getContainer(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 323
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_2

    .line 324
    if-eqz p2, :cond_1

    .line 325
    invoke-virtual {v0, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBannerPosition(Lcom/nativex/monetization/enums/BannerPosition;)V

    .line 337
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 327
    .restart local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setAdPosition(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error setting ad position"

    invoke-static {v2, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_2
    :try_start_1
    const-string v2, "Error setting ad position: Invalid Id"

    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static final setRunningOnUnity(Z)V
    .locals 0
    .param p0, "isUnity"    # Z

    .prologue
    .line 685
    sput-boolean p0, Lcom/nativex/monetization/mraid/MRAIDManager;->runningOnUnity:Z

    .line 686
    return-void
.end method

.method public static setViewTimeOut(Lcom/nativex/monetization/mraid/MRAIDContainer;J)V
    .locals 2
    .param p0, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p1, "timeout"    # J

    .prologue
    .line 240
    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isAdCached()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-static {p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDManager;->updateExpirationTime(Lcom/nativex/monetization/mraid/MRAIDContainer;J)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne v0, v1, :cond_0

    .line 246
    invoke-static {p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDManager;->updateExpirationTime(Lcom/nativex/monetization/mraid/MRAIDContainer;J)V

    goto :goto_0
.end method

.method public static final showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;ZZ)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "adPosition"    # Lcom/nativex/monetization/enums/BannerPosition;
    .param p5, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;
    .param p6, "cache"    # Z
    .param p7, "userCall"    # Z

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :try_start_0
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v1, :cond_15

    .line 120
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v1, p2, p1}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getMapDataHolder(Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v7, v0

    .line 122
    .end local v0    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .local v7, "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :goto_0
    if-eqz v7, :cond_11

    .line 124
    if-eqz p6, :cond_4

    .line 125
    :try_start_1
    iget-object p7, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .end local p7    # "userCall":Z
    if-eqz p7, :cond_2

    .line 127
    if-eqz p5, :cond_0

    .line 128
    iget-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, p5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setOnRichMediaEventListener(Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 130
    :cond_0
    iget-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isAdLoaded()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 131
    const-string p0, "Ad already fetched"

    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 132
    iget-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object p1, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_FETCHED:Lcom/nativex/monetization/enums/AdEvent;

    .end local p1    # "name":Ljava/lang/String;
    const-string p2, "Ad is already fetched and ready to display"

    .end local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    invoke-static {p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 133
    const/4 p0, 0x1

    .line 233
    .end local v7    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .end local p3    # "position":Landroid/graphics/Rect;
    .end local p4    # "adPosition":Lcom/nativex/monetization/enums/BannerPosition;
    .end local p6    # "cache":Z
    :goto_1
    return p0

    .line 135
    .restart local v7    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .restart local p3    # "position":Landroid/graphics/Rect;
    .restart local p4    # "adPosition":Lcom/nativex/monetization/enums/BannerPosition;
    .restart local p6    # "cache":Z
    :cond_1
    const-string p0, "Ad is fetching"

    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 136
    iget-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object p1, Lcom/nativex/monetization/enums/AdEvent;->DOWNLOADING:Lcom/nativex/monetization/enums/AdEvent;

    .end local p1    # "name":Ljava/lang/String;
    const-string p2, "Ad is being downloaded at the moment"

    .end local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    invoke-static {p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 137
    const/4 p0, 0x1

    goto :goto_1

    .line 140
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    :cond_2
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result p7

    if-eqz p7, :cond_3

    .line 142
    const-string p7, "Caching ad"

    invoke-static {p7}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 143
    invoke-static/range {v0 .. v6}, Lcom/nativex/monetization/mraid/MRAIDManager;->createContainer(Landroid/app/Activity;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;Z)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object p0

    .end local p0    # "activity":Landroid/app/Activity;
    iput-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 144
    iget-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->expireContainerDelayed(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 145
    const/4 p0, 0x1

    goto :goto_1

    .line 147
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_3
    sget-object p0, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    .end local p0    # "activity":Landroid/app/Activity;
    const-string p1, "No session. Unable to fetch an ad."

    .end local p1    # "name":Ljava/lang/String;
    invoke-static {p5, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/listeners/OnAdEvent;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 148
    const/4 p0, 0x0

    goto :goto_1

    .line 152
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p7    # "userCall":Z
    :cond_4
    iget-object v0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_8

    .line 155
    if-eqz p5, :cond_5

    .line 156
    iget-object p1, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .end local p1    # "name":Ljava/lang/String;
    invoke-virtual {p1, p5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setOnRichMediaEventListener(Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 158
    :cond_5
    if-eqz p4, :cond_7

    .line 159
    iget-object p1, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p1, p4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBannerPosition(Lcom/nativex/monetization/enums/BannerPosition;)V

    .line 163
    :goto_2
    iget-object p1, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p1, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->attachToActivity(Landroid/app/Activity;)V

    .line 164
    if-eqz p7, :cond_6

    .line 165
    iget-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .end local p0    # "activity":Landroid/app/Activity;
    sget-object p1, Lcom/nativex/monetization/enums/AdEvent;->ALREADY_SHOWN:Lcom/nativex/monetization/enums/AdEvent;

    const-string p2, "Ad is already shown. Dismiss it in order to show another one"

    .end local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    invoke-static {p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 167
    :cond_6
    const-string p0, "Updating existing ad"

    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 168
    const/4 p0, 0x1

    goto :goto_1

    .line 161
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    :cond_7
    iget-object p1, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p1, p3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setAdPosition(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 230
    .end local p0    # "activity":Landroid/app/Activity;
    .end local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .end local p3    # "position":Landroid/graphics/Rect;
    .end local p4    # "adPosition":Lcom/nativex/monetization/enums/BannerPosition;
    .end local p6    # "cache":Z
    .end local p7    # "userCall":Z
    :catch_0
    move-exception p0

    move-object p1, v7

    .line 231
    .end local v7    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .local p0, "e":Ljava/lang/Exception;
    .local p1, "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    :goto_3
    sget-object p1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    .end local p1    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    const-string p2, "Error while creating/updating the ad"

    invoke-static {p5, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/listeners/OnAdEvent;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 232
    const-string p1, "Exception caught while handling ad request"

    invoke-static {p1, p0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    const/4 p0, 0x0

    goto :goto_1

    .line 171
    .restart local v7    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .local p0, "activity":Landroid/app/Activity;
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .restart local p3    # "position":Landroid/graphics/Rect;
    .restart local p4    # "adPosition":Lcom/nativex/monetization/enums/BannerPosition;
    .restart local p6    # "cache":Z
    .restart local p7    # "userCall":Z
    :cond_8
    :try_start_2
    iget-object p7, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .end local p7    # "userCall":Z
    if-eqz p7, :cond_e

    .line 173
    iget-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .end local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    iput-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 174
    const/4 p2, 0x0

    iput-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->cached:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 175
    if-eqz p5, :cond_9

    .line 176
    iget-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p2, p5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setOnRichMediaEventListener(Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 178
    :cond_9
    iget-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    const/4 p6, 0x0

    invoke-virtual {p2, p6}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setAdCached(Z)V

    .line 179
    .end local p6    # "cache":Z
    if-eqz p4, :cond_c

    .line 180
    iget-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p2, p4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setBannerPosition(Lcom/nativex/monetization/enums/BannerPosition;)V

    .line 186
    :goto_4
    iget-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object p2

    sget-object p3, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .end local p3    # "position":Landroid/graphics/Rect;
    if-ne p2, p3, :cond_a

    .line 187
    sget-object p2, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    const/16 p3, 0x3eb

    iget-object p4, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .end local p4    # "adPosition":Lcom/nativex/monetization/enums/BannerPosition;
    invoke-virtual {p2, p3, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 190
    :cond_a
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDManager;->isRunningOnUnity()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getPlacementType()Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    move-result-object p2

    sget-object p3, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-eq p2, p3, :cond_d

    .line 191
    :cond_b
    iget-object p1, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .end local p1    # "name":Ljava/lang/String;
    invoke-virtual {p1, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->attachToActivity(Landroid/app/Activity;)V

    .line 195
    :goto_5
    const-string p0, "Showing fetched ad"

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 196
    const/4 p0, 0x1

    goto/16 :goto_1

    .line 182
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p3    # "position":Landroid/graphics/Rect;
    .restart local p4    # "adPosition":Lcom/nativex/monetization/enums/BannerPosition;
    :cond_c
    iget-object p2, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {p2, p3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setAdPosition(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 193
    .end local p3    # "position":Landroid/graphics/Rect;
    .end local p4    # "adPosition":Lcom/nativex/monetization/enums/BannerPosition;
    :cond_d
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/nativex/monetization/manager/ActivityManager;->startMRAIDInterstitial(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_5

    .line 199
    .restart local p2    # "type":Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;
    .restart local p3    # "position":Landroid/graphics/Rect;
    .restart local p4    # "adPosition":Lcom/nativex/monetization/enums/BannerPosition;
    .restart local p6    # "cache":Z
    :cond_e
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result p7

    if-eqz p7, :cond_10

    .line 200
    const-string p7, "Creating ad to show"

    invoke-static {p7}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 201
    invoke-static/range {v0 .. v6}, Lcom/nativex/monetization/mraid/MRAIDManager;->createContainer(Landroid/app/Activity;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;Z)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object p0

    .end local p0    # "activity":Landroid/app/Activity;
    iput-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 202
    sget-object p0, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    if-ne p2, p0, :cond_f

    .line 203
    iget-object p0, v7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->expireContainerDelayed(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 205
    :cond_f
    const/4 p0, 0x1

    goto/16 :goto_1

    .line 207
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_10
    const-string p0, "Could not create ad. No session"

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 208
    sget-object p0, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string p1, "No session. Unable to fetch an ad."

    .end local p1    # "name":Ljava/lang/String;
    invoke-static {p5, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/listeners/OnAdEvent;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 209
    const/4 p0, 0x0

    goto/16 :goto_1

    .line 216
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p7    # "userCall":Z
    :cond_11
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result p7

    .end local p7    # "userCall":Z
    if-eqz p7, :cond_14

    .line 217
    const-string p7, "No ads create container and ad"

    invoke-static {p7}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 218
    new-instance p7, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-direct {p7}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;-><init>()V

    sput-object p7, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 219
    invoke-static/range {v0 .. v6}, Lcom/nativex/monetization/mraid/MRAIDManager;->createContainer(Landroid/app/Activity;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;Z)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object p0

    .line 220
    .local p0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    if-nez p6, :cond_12

    sget-object p1, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    .end local p1    # "name":Ljava/lang/String;
    if-ne p2, p1, :cond_13

    .line 221
    :cond_12
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->expireContainerDelayed(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 223
    :cond_13
    const/4 p0, 0x1

    goto/16 :goto_1

    .line 225
    .local p0, "activity":Landroid/app/Activity;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_14
    const-string p0, "Could not create ad. No session"

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 226
    sget-object p0, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string p1, "No session. Unable to fetch an ad."

    .end local p1    # "name":Ljava/lang/String;
    invoke-static {p5, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/listeners/OnAdEvent;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    const/4 p0, 0x0

    goto/16 :goto_1

    .line 230
    .end local v7    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .restart local v0    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .restart local p0    # "activity":Landroid/app/Activity;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p7    # "userCall":Z
    :catch_1
    move-exception p0

    move-object p1, v0

    .end local v0    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .local p1, "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    goto/16 :goto_3

    .restart local v0    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .local p1, "name":Ljava/lang/String;
    :cond_15
    move-object v7, v0

    .end local v0    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .restart local v7    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    goto/16 :goto_0
.end method

.method public static final showBanner(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;Z)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "adPosition"    # Lcom/nativex/monetization/enums/BannerPosition;
    .param p4, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;
    .param p5, "userCall"    # Z

    .prologue
    .line 73
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/nativex/monetization/mraid/MRAIDManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;ZZ)Z

    move-result v0

    return v0
.end method

.method public static final showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;Z)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;
    .param p3, "userCall"    # Z

    .prologue
    const/4 v3, 0x0

    .line 89
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/nativex/monetization/mraid/MRAIDManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDUtils$PlacementType;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;ZZ)Z

    move-result v0

    return v0
.end method

.method public static trackVideoProgress(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 3
    .param p0, "containerName"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 623
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v2, :cond_0

    .line 625
    :try_start_0
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v2, p0}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->getContainer(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    .line 626
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->trackVideo(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 630
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to track video progress"

    invoke-static {v2, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static update(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 637
    if-nez p0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    :try_start_0
    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    if-eqz v4, :cond_0

    .line 642
    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDManager;->containers:Lcom/nativex/monetization/mraid/MRAIDContainerHolder;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/MRAIDContainerHolder;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;

    .line 643
    .local v2, "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    iget-object v4, v2, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eq v4, p0, :cond_2

    .line 644
    iget-object v4, v2, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivityClassName()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "activityName":Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 646
    iget-object v4, v2, Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->shown:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->attachToActivity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 651
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v2    # "holder":Lcom/nativex/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Failed to update ads"

    invoke-static {v4, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updateExpirationTime(Lcom/nativex/monetization/mraid/MRAIDContainer;J)V
    .locals 3
    .param p0, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p1, "timeout"    # J

    .prologue
    const/16 v2, 0x3eb

    .line 254
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "ViewTimeout updated"

    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 257
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 258
    return-void
.end method
