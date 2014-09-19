.class public Lcom/fusepowered/m2/m2l/AdViewController;
.super Ljava/lang/Object;
.source "AdViewController.java"


# static fields
.field static final DEFAULT_REFRESH_TIME_MILLISECONDS:I = 0xea60

.field static final MINIMUM_REFRESH_TIME_MILLISECONDS:I = 0x2710

.field private static final WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

.field private mAdFetcher:Lcom/fusepowered/m2/m2l/AdFetcher;

.field private mAutoRefreshEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mIsFacebookSupported:Z

.field private mIsLoading:Z

.field private mIsTesting:Z

.field private mKeywords:Ljava/lang/String;

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

.field private mLocationPrecision:I

.field private mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mUrl:Ljava/lang/String;

.field private final mUrlGenerator:Lcom/fusepowered/m2/m2l/AdUrlGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    const/16 v1, 0x11

    .line 64
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 63
    sput-object v0, Lcom/fusepowered/m2/m2l/AdViewController;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/MoPubView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocalExtras:Ljava/util/Map;

    .line 83
    iput-boolean v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAutoRefreshEnabled:Z

    .line 86
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    .line 87
    const/4 v0, 0x6

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocationPrecision:I

    .line 88
    iput-boolean v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsFacebookSupported:Z

    .line 100
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    .line 103
    new-instance v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mUrlGenerator:Lcom/fusepowered/m2/m2l/AdUrlGenerator;

    .line 104
    new-instance v0, Lcom/fusepowered/m2/m2l/AdConfiguration;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/m2/m2l/AdConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    .line 106
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;->create(Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdFetcher:Lcom/fusepowered/m2/m2l/AdFetcher;

    .line 108
    new-instance v0, Lcom/fusepowered/m2/m2l/AdViewController$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/m2l/AdViewController$1;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private cancelRefreshTimer()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method private getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6
    .parameter "view"

    .prologue
    .line 461
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v4}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getWidth()I

    move-result v3

    .line 462
    .local v3, width:I
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v4}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getHeight()I

    move-result v0

    .line 464
    .local v0, height:I
    invoke-static {p1}, Lcom/fusepowered/m2/m2l/AdViewController;->getShouldHonorServerDimensions(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 465
    int-to-float v4, v3

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/fusepowered/m2/m2l/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 466
    .local v2, scaledWidth:I
    int-to-float v4, v0

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/fusepowered/m2/m2l/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 468
    .local v1, scaledHeight:I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 470
    .end local v1           #scaledHeight:I
    .end local v2           #scaledWidth:I
    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/fusepowered/m2/m2l/AdViewController;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 18

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    move-object v14, v0

    sget-object v15, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    if-ne v14, v15, :cond_0

    .line 485
    const/4 v14, 0x0

    .line 532
    :goto_0
    return-object v14

    .line 488
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m2/m2l/AdViewController;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "location"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    .line 489
    .local v5, lm:Landroid/location/LocationManager;
    const/4 v2, 0x0

    .line 491
    .local v2, gpsLocation:Landroid/location/Location;
    :try_start_0
    const-string v14, "gps"

    invoke-virtual {v5, v14}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 498
    :goto_1
    const/4 v8, 0x0

    .line 500
    .local v8, networkLocation:Landroid/location/Location;
    :try_start_1
    const-string v14, "network"

    invoke-virtual {v5, v14}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 507
    :goto_2
    if-nez v2, :cond_1

    if-nez v8, :cond_1

    .line 508
    const/4 v14, 0x0

    goto :goto_0

    .line 492
    .end local v8           #networkLocation:Landroid/location/Location;
    :catch_0
    move-exception v14

    move-object v1, v14

    .line 493
    .local v1, e:Ljava/lang/SecurityException;
    const-string v14, "MoPub"

    const-string v15, "Failed to retrieve GPS location: access appears to be disabled."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v14

    move-object v1, v14

    .line 495
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v14, "MoPub"

    const-string v15, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 501
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v8       #networkLocation:Landroid/location/Location;
    :catch_2
    move-exception v14

    move-object v1, v14

    .line 502
    .local v1, e:Ljava/lang/SecurityException;
    const-string v14, "MoPub"

    const-string v15, "Failed to retrieve network location: access appears to be disabled."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 503
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v14

    move-object v1, v14

    .line 504
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v14, "MoPub"

    const-string v15, "Failed to retrieve network location: device has no network provider."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 510
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    if-eqz v2, :cond_4

    if-eqz v8, :cond_4

    .line 511
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    move-object v9, v2

    .line 518
    .local v9, result:Landroid/location/Location;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    move-object v14, v0

    sget-object v15, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    if-ne v14, v15, :cond_2

    .line 519
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 520
    .local v3, lat:D
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v14

    .line 521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocationPrecision:I

    move v15, v0

    const/16 v16, 0x5

    invoke-virtual/range {v14 .. v16}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    .line 522
    invoke-virtual {v14}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    .line 523
    .local v10, truncatedLat:D
    invoke-virtual {v9, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    .line 525
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 526
    .local v6, lon:D
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v14

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocationPrecision:I

    move v15, v0

    const/16 v16, 0x5

    invoke-virtual/range {v14 .. v16}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    .line 528
    invoke-virtual {v14}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    .line 529
    .local v12, truncatedLon:D
    invoke-virtual {v9, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    .end local v3           #lat:D
    .end local v6           #lon:D
    .end local v10           #truncatedLat:D
    .end local v12           #truncatedLon:D
    :cond_2
    move-object v14, v9

    .line 532
    goto/16 :goto_0

    .line 512
    .end local v9           #result:Landroid/location/Location;
    :cond_3
    move-object v9, v8

    .line 513
    .restart local v9       #result:Landroid/location/Location;
    goto :goto_3

    .line 514
    .end local v9           #result:Landroid/location/Location;
    :cond_4
    if-eqz v2, :cond_5

    move-object v9, v2

    .restart local v9       #result:Landroid/location/Location;
    goto :goto_3

    .line 515
    .end local v9           #result:Landroid/location/Location;
    :cond_5
    move-object v9, v8

    .restart local v9       #result:Landroid/location/Location;
    goto :goto_3
.end method

.method private getServerHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsTesting:Z

    if-eqz v0, :cond_0

    const-string v0, "testing.ads.mopub.com"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ads.mopub.com"

    goto :goto_0
.end method

.method private static getShouldHonorServerDimensions(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 96
    sget-object v0, Lcom/fusepowered/m2/m2l/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 433
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 434
    .local v2, result:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v3, v5

    .line 440
    :goto_0
    return v3

    .line 438
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 439
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 440
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 92
    sget-object v0, Lcom/fusepowered/m2/m2l/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method adDidFail(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 397
    const-string v0, "MoPub"

    const-string v1, "Ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->setNotLoading()V

    .line 399
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 400
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->getMoPubView()Lcom/fusepowered/m2/m2l/MoPubView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubView;->adFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 401
    return-void
.end method

.method cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->setAutorefreshEnabled(Z)V

    .line 303
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->cancelRefreshTimer()V

    .line 309
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdFetcher:Lcom/fusepowered/m2/m2l/AdFetcher;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdFetcher;->cleanup()V

    .line 310
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdFetcher:Lcom/fusepowered/m2/m2l/AdFetcher;

    .line 312
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->cleanup()V

    .line 314
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsDestroyed:Z

    goto :goto_0
.end method

.method configureUsingHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->addHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 322
    return-void
.end method

.method public customEventActionWillBegin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->registerClick()V

    .line 550
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 544
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 545
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->setNotLoading()V

    .line 538
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->trackImpression()V

    .line 539
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 540
    return-void
.end method

.method fetchAd(Ljava/lang/String;)V
    .locals 1
    .parameter "mUrl"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdFetcher:Lcom/fusepowered/m2/m2l/AdFetcher;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdFetcher:Lcom/fusepowered/m2/m2l/AdFetcher;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdFetcher;->fetchAdForUrl(Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method forceRefresh()V
    .locals 0

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->setNotLoading()V

    .line 384
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->loadAd()V

    .line 385
    return-void
.end method

.method generateAdUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mUrlGenerator:Lcom/fusepowered/m2/m2l/AdUrlGenerator;

    .line 389
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdUrlGenerator;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdUrlGenerator;

    move-result-object v0

    .line 391
    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsFacebookSupported:Z

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->withFacebookSupported(Z)Lcom/fusepowered/m2/m2l/AdUrlGenerator;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/fusepowered/m2/m2l/AdUrlGenerator;

    move-result-object v0

    .line 393
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->getServerHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    return-object v0
.end method

.method getAdConfiguration()Lcom/fusepowered/m2/m2l/AdConfiguration;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getHeight()I

    move-result v0

    return v0
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getWidth()I

    move-result v0

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAutoRefreshEnabled:Z

    return v0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method getLocalExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocalExtras:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocalExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 418
    :goto_0
    return-object v0

    .line 420
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method getLocationPrecision()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocationPrecision:I

    return v0
.end method

.method public getMoPubView()Lcom/fusepowered/m2/m2l/MoPubView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefreshTimeMilliseconds()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getRefreshTimeMilliseconds()I

    move-result v0

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getResponseString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsTesting:Z

    return v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsDestroyed:Z

    return v0
.end method

.method public isFacebookSupported()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsFacebookSupported:Z

    return v0
.end method

.method public loadAd()V
    .locals 3

    .prologue
    const-string v2, "MoPub"

    .line 122
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "MoPub"

    const-string v1, "Can\'t load an ad in this ad view because the ad unit ID is null. Did you forget to call setAdUnitId()?"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    const-string v1, "MoPub"

    const-string v1, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->scheduleRefreshTimerIfEnabled()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocation:Landroid/location/Location;

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->generateAdUrl()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, adUrl:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    const-string v2, "MoPub"

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsLoading:Z

    .line 169
    const-string v0, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoPubErrorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getFailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading failover url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getFailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getFailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    .line 178
    :goto_1
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_1
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->adDidFail(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_1
.end method

.method loadNonJavascript(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const-string v2, "MoPub"

    .line 144
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v0, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsLoading:Z

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already loading an ad for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wait to finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_2
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mUrl:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->setFailUrl(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsLoading:Z

    .line 158
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->fetchAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method registerClick()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/m2/m2l/AdViewController$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/AdViewController$3;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 162
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reload ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method scheduleRefreshTimerIfEnabled()V
    .locals 4

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->cancelRefreshTimer()V

    .line 405
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getRefreshTimeMilliseconds()I

    move-result v0

    if-lez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getRefreshTimeMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    :cond_0
    return-void
.end method

.method setAdContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/m2/m2l/AdViewController$4;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/m2/m2l/AdViewController$4;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .parameter "adUnitId"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->setAdUnitId(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAutoRefreshEnabled:Z

    .line 258
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic refresh for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAutoRefreshEnabled:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdViewController;->cancelRefreshTimer()V

    goto :goto_0
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "clickthroughUrl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->setClickthroughUrl(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setFacebookSupported(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsFacebookSupported:Z

    .line 202
    return-void
.end method

.method setFailUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "failUrl"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->setFailUrl(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter "keywords"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mKeywords:Ljava/lang/String;

    .line 194
    return-void
.end method

.method setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, localExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 412
    :goto_0
    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocalExtras:Ljava/util/Map;

    .line 415
    return-void

    .line 414
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocation:Landroid/location/Location;

    .line 210
    return-void
.end method

.method setLocationPrecision(I)V
    .locals 1
    .parameter "precision"

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mLocationPrecision:I

    .line 284
    return-void
.end method

.method setNotLoading()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsLoading:Z

    .line 186
    return-void
.end method

.method setRefreshTimeMilliseconds(I)V
    .locals 1
    .parameter "refreshTimeMilliseconds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdConfiguration;->setRefreshTimeMilliseconds(I)V

    .line 335
    return-void
.end method

.method public setTesting(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mIsTesting:Z

    .line 276
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdFetcher:Lcom/fusepowered/m2/m2l/AdFetcher;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController;->mAdFetcher:Lcom/fusepowered/m2/m2l/AdFetcher;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdFetcher;->setTimeout(I)V

    .line 224
    :cond_0
    return-void
.end method

.method trackImpression()V
    .locals 2

    .prologue
    .line 338
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/m2/m2l/AdViewController$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/AdViewController$2;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method
