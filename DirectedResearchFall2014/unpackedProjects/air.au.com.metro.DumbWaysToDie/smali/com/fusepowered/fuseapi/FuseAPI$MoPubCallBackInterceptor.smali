.class abstract Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;
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
    name = "MoPubCallBackInterceptor"
.end annotation


# instance fields
.field private adCallback:Lcom/fusepowered/util/FuseAdCallback;

.field private isWaitingForAd:Z


# direct methods
.method public constructor <init>(Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 1
    .parameter "adCallback"

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->isWaitingForAd:Z

    .line 895
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->adCallback:Lcom/fusepowered/util/FuseAdCallback;

    .line 896
    return-void
.end method


# virtual methods
.method public getIsWaitingForAd()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->isWaitingForAd:Z

    return v0
.end method

.method public onInterstitialClicked(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->adCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, p1}, Lcom/fusepowered/util/FuseAdCallback;->onInterstitialClicked(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    .line 939
    return-void
.end method

.method public onInterstitialDismissed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 933
    const-string v0, "MOPUB_AD"

    const-string v1, "!!!!!!! AD WAS DISMISSED !!!!!!! "

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->adCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, p1}, Lcom/fusepowered/util/FuseAdCallback;->onInterstitialDismissed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    .line 935
    return-void
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 920
    const-string v0, "MOPUB_AD"

    const-string v1, "!!!!!!! AD FAILED TO LOAD !!!!!!! "

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->adCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/util/FuseAdCallback;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 922
    iget-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->isWaitingForAd:Z

    if-eqz v0, :cond_0

    .line 923
    iput-boolean v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->isWaitingForAd:Z

    .line 924
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingMopubAd:Z

    .line 925
    invoke-virtual {p0}, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->tryNextAdProvider()V

    .line 928
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 1
    .parameter "interstitial"

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->isWaitingForAd:Z

    if-eqz v0, :cond_0

    .line 911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->isWaitingForAd:Z

    .line 912
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingMopubAd:Z

    .line 913
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->show()Z

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->adCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, p1}, Lcom/fusepowered/util/FuseAdCallback;->onInterstitialLoaded(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    .line 917
    return-void
.end method

.method public onInterstitialShown(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->adCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, p1}, Lcom/fusepowered/util/FuseAdCallback;->onInterstitialShown(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    .line 907
    return-void
.end method

.method public setIsWaitingForAd(Z)V
    .locals 0
    .parameter "isWaitingForAd"

    .prologue
    .line 899
    iput-boolean p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->isWaitingForAd:Z

    .line 900
    return-void
.end method

.method public abstract tryNextAdProvider()V
.end method
