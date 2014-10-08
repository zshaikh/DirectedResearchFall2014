.class public Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;


# static fields
.field public static final DEFAULT_BANNER_TIMEOUT_DELAY:I = 0x2710


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomEventBanner:Lcom/fusepowered/m2/m2l/CustomEventBanner;

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidated:Z

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

.field private mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

.field private mServerExtras:Ljava/util/Map;
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

.field private mStoredAutorefresh:Z

.field private final mTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "moPubView"    # Lcom/fusepowered/m2/m2l/MoPubView;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "classData"    # Ljava/lang/String;

    .prologue
    const-string v3, "MoPub"

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    .line 66
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 69
    new-instance v1, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter$1;-><init>(Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;)V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    .line 78
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to invoke custom event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :try_start_0
    invoke-static {p2}, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;->create(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBanner;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/fusepowered/m2/m2l/CustomEventBanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    invoke-static {p3}, Lcom/fusepowered/m2/m2l/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubView;->getLocalExtras()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 95
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v2, "location"

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubView;->getAdViewController()Lcom/fusepowered/m2/m2l/AdViewController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v2, "Ad-Configuration"

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/MoPubView;->getAdViewController()Lcom/fusepowered/m2/m2l/AdViewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdConfiguration()Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 82
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t locate or instantiate custom event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/MoPubView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_1

    .line 90
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 91
    .restart local v0    # "exception":Ljava/lang/Exception;
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create Map from JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelTimeout()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method private getTimeoutDelayMilliseconds()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 135
    :cond_0
    const/16 v0, 0x2710

    .line 138
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method


# virtual methods
.method invalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/fusepowered/m2/m2l/CustomEventBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/fusepowered/m2/m2l/CustomEventBanner;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner;->onInvalidate()V

    .line 116
    :cond_0
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 117
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/fusepowered/m2/m2l/CustomEventBanner;

    .line 118
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 119
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mInvalidated:Z

    .line 121
    return-void
.end method

.method isInvalidated()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mInvalidated:Z

    return v0
.end method

.method loadAd()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/fusepowered/m2/m2l/CustomEventBanner;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/fusepowered/m2/m2l/CustomEventBanner;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/fusepowered/m2/m2l/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 109
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->getTimeoutDelayMilliseconds()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->getTimeoutDelayMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onBannerClicked()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->registerClick()V

    goto :goto_0
.end method

.method public onBannerCollapsed()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mStoredAutorefresh:Z

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MoPubView;->setAutorefreshEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->adClosed()V

    goto :goto_0
.end method

.method public onBannerExpanded()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->getAutorefreshEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mStoredAutorefresh:Z

    .line 176
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MoPubView;->setAutorefreshEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->adPresentedOverlay()V

    goto :goto_0
.end method

.method public onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    if-eqz v0, :cond_0

    .line 163
    if-nez p1, :cond_2

    .line 164
    sget-object p1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->cancelTimeout()V

    .line 167
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 1
    .param p1, "bannerView"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->cancelTimeout()V

    .line 150
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->nativeAdLoaded()V

    .line 151
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 152
    instance-of v0, p1, Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->mMoPubView:Lcom/fusepowered/m2/m2l/MoPubView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->trackNativeImpression()V

    goto :goto_0
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->onBannerClicked()V

    .line 198
    return-void
.end method
