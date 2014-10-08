.class abstract Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/fuseapi/FuseAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MopubCheckAdCallback"
.end annotation


# instance fields
.field public didReturn:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->didReturn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/fuseapi/FuseAPI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/fuseapi/FuseAPI$1;

    .prologue
    .line 1549
    invoke-direct {p0}, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkAdAvailableReturnFailed()V
.end method

.method public abstract checkAdAvailableReturnSucess()V
.end method

.method public onInterstitialClicked(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 0
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 1557
    return-void
.end method

.method public onInterstitialDismissed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 0
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 1563
    return-void
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 1
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;
    .param p2, "arg1"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 1569
    iget-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->didReturn:Z

    if-nez v0, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->checkAdAvailableReturnFailed()V

    .line 1571
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->didReturn:Z

    .line 1572
    return-void
.end method

.method public onInterstitialLoaded(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 1
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 1577
    iget-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->didReturn:Z

    if-nez v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->checkAdAvailableReturnSucess()V

    .line 1579
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->didReturn:Z

    .line 1580
    return-void
.end method

.method public onInterstitialShown(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 1584
    const-string v0, "MOPUB ERROR"

    const-string v1, "|||||||||||||||||| SHOULD NEVER SHOW AN AD WITH THIS CALL BACK  ||||||||||||||||||"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    return-void
.end method
