.class Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;
.super Lcom/fusepowered/m1/android/MMAdImpl;
.source "MMInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMInterstitialAdImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMInterstitial;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/MMInterstitial;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;->this$0:Lcom/fusepowered/m1/android/MMInterstitial;

    .line 178
    invoke-direct {p0, p2}, Lcom/fusepowered/m1/android/MMAdImpl;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v0, Lcom/fusepowered/m1/android/AdProperties;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/android/AdProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;->adProperties:Lcom/fusepowered/m1/android/AdProperties;

    .line 180
    return-void
.end method


# virtual methods
.method bridge synthetic getCallingAd()Lcom/fusepowered/m1/android/MMAd;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;->getCallingAd()Lcom/fusepowered/m1/android/MMInterstitial;

    move-result-object v0

    return-object v0
.end method

.method getCallingAd()Lcom/fusepowered/m1/android/MMInterstitial;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;->this$0:Lcom/fusepowered/m1/android/MMInterstitial;

    return-object v0
.end method
