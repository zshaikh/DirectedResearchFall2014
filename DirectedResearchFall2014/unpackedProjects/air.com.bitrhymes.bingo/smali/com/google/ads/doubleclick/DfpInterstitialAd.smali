.class public Lcom/google/ads/doubleclick/DfpInterstitialAd;
.super Lcom/google/ads/InterstitialAd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "adUnitId"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "activity"
    .parameter "adUnitId"
    .parameter "shortTimeout"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public setAppEventListener(Lcom/google/ads/AppEventListener;)V
    .locals 0
    .parameter "appEventListener"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/ads/InterstitialAd;->setAppEventListener(Lcom/google/ads/AppEventListener;)V

    .line 45
    return-void
.end method
