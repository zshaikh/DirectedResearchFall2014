.class public Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;
.super Ljava/lang/Object;
.source "CustomEventInterstitialAdapter.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERSTITIAL_TIMEOUT_DELAY:I = 0x7530


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

.field private mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

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

.field private final mMoPubInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

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

.field private final mTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "moPubInterstitial"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "jsonParams"    # Ljava/lang/String;

    .prologue
    const-string v4, "MoPub"

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mServerExtras:Ljava/util/Map;

    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    .line 67
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mContext:Landroid/content/Context;

    .line 68
    new-instance v2, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$1;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$1;-><init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;)V

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mTimeout:Ljava/lang/Runnable;

    .line 77
    const-string v2, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to invoke custom event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_0
    invoke-static {p2}, Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialFactory;->create(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p3}, Lcom/fusepowered/m2/m2l/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mServerExtras:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :goto_1
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getLocalExtras()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v3, "location"

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getMoPubInterstitialView()Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->getAdViewController()Lcom/fusepowered/m2/m2l/AdViewController;

    move-result-object v0

    .line 98
    .local v0, "adViewController":Lcom/fusepowered/m2/m2l/AdViewController;
    if-eqz v0, :cond_2

    .line 99
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v3, "Ad-Configuration"

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdConfiguration()Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_2
    return-void

    .line 80
    .end local v0    # "adViewController":Lcom/fusepowered/m2/m2l/AdViewController;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 81
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t locate or instantiate custom event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    sget-object v3, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0

    .line 88
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 89
    .restart local v1    # "exception":Ljava/lang/Exception;
    const-string v2, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create Map from JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private cancelTimeout()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method private getTimeoutDelayMilliseconds()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 146
    :cond_0
    const/16 v0, 0x7530

    .line 149
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getAdTimeoutDelay()Ljava/lang/Integer;

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

    .line 121
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial;->onInvalidate()V

    .line 122
    :cond_0
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    .line 123
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mContext:Landroid/content/Context;

    .line 124
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mServerExtras:Ljava/util/Map;

    .line 125
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    .line 126
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mInvalidated:Z

    .line 128
    return-void
.end method

.method isInvalidated()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mInvalidated:Z

    return v0
.end method

.method loadInterstitial()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 109
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->getTimeoutDelayMilliseconds()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->getTimeoutDelayMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onInterstitialClicked()V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialClicked()V

    goto :goto_0
.end method

.method public onInterstitialDismissed()V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialDismissed()V

    goto :goto_0
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 182
    if-nez p1, :cond_2

    .line 183
    sget-object p1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->cancelTimeout()V

    .line 186
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInterstitialLoaded()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->cancelTimeout()V

    .line 171
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialLoaded()V

    goto :goto_0
.end method

.method public onInterstitialShown()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialShown()V

    goto :goto_0
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->onInterstitialClicked()V

    .line 215
    return-void
.end method

.method setAdapterListener(Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    .line 136
    return-void
.end method

.method setCustomEventInterstitial(Lcom/fusepowered/m2/m2l/CustomEventInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitial;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    .line 227
    return-void
.end method

.method showInterstitial()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/fusepowered/m2/m2l/CustomEventInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial;->showInterstitial()V

    goto :goto_0
.end method
