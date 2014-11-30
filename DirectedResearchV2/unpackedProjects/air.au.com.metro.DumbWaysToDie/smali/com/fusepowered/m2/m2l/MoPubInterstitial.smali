.class public Lcom/fusepowered/m2/m2l/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;,
        Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;,
        Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;,
        Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdUnitId:Ljava/lang/String;

.field private mCurrentInterstitialState:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

.field private mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

.field private mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

.field private mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

.field private mIsDestroyed:Z

.field private mListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState()[I
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->$SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->values()[Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->CUSTOM_EVENT_AD_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->$SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    .line 85
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    .line 88
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setAdUnitId(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method private resetCurrentInterstitial()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    .line 107
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->invalidate()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mIsDestroyed:Z

    .line 113
    return-void
.end method

.method private showCustomEventInterstitial()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->showInterstitial()V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public customEventActionWillBegin()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 352
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 347
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 342
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mIsDestroyed:Z

    .line 173
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->invalidate()V

    .line 175
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setBannerAdListener(Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;)V

    .line 179
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->destroy()V

    .line 180
    return-void
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->resetCurrentInterstitial()V

    .line 101
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->forceRefresh()V

    .line 102
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialAdListener()Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method public getLocalExtras()Ljava/util/Map;
    .locals 1
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
    .line 219
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAwareness()Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->getLocationAwareness()Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    move-result-object v0

    return-object v0
.end method

.method public getLocationPrecision()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->getLocationPrecision()I

    move-result v0

    return v0
.end method

.method getMoPubInterstitialView()Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->getTesting()Z

    move-result v0

    return v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mIsDestroyed:Z

    return v0
.end method

.method public isFacebookSupported()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->isFacebookSupported()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->isReady()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->resetCurrentInterstitial()V

    .line 96
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    .line 97
    return-void
.end method

.method public onCustomEventInterstitialClicked()V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 264
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialDismissed()V
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    .line 275
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    .line 244
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onCustomEventInterstitialLoaded()V
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mIsDestroyed:Z

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->CUSTOM_EVENT_AD_READY:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    .line 232
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialLoaded()V

    goto :goto_0
.end method

.method public onCustomEventInterstitialShown()V
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 253
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    goto :goto_0
.end method

.method public setFacebookSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setFacebookSupported(Z)V

    .line 156
    return-void
.end method

.method public setInterstitialAdListener(Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    .line 184
    return-void
.end method

.method setInterstitialView(Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;)V
    .locals 0
    .param p1, "interstitialView"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    .line 327
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setKeywords(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setListener(Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialListener;

    .line 332
    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
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
    .line 215
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setLocalExtras(Ljava/util/Map;)V

    .line 216
    return-void
.end method

.method public setLocationAwareness(Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;)V
    .locals 1
    .param p1, "awareness"    # Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setLocationAwareness(Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;)V

    .line 192
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 1
    .param p1, "precision"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setLocationPrecision(I)V

    .line 200
    return-void
.end method

.method public setTesting(Z)V
    .locals 1
    .param p1, "testing"    # Z

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialView:Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setTesting(Z)V

    .line 208
    return-void
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->$SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCurrentInterstitialState:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->showCustomEventInterstitial()V

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
