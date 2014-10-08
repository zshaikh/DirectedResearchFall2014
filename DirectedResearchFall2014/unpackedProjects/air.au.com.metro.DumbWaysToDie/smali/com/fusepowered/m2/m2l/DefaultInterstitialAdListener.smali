.class public Lcom/fusepowered/m2/m2l/DefaultInterstitialAdListener;
.super Ljava/lang/Object;
.source "DefaultInterstitialAdListener.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 41
    return-void
.end method

.method public onInterstitialDismissed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 42
    return-void
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;
    .param p2, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 39
    return-void
.end method

.method public onInterstitialLoaded(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 38
    return-void
.end method

.method public onInterstitialShown(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 40
    return-void
.end method
