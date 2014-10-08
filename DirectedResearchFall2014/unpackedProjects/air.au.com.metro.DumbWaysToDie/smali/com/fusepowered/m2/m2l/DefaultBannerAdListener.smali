.class public Lcom/fusepowered/m2/m2l/DefaultBannerAdListener;
.super Ljava/lang/Object;
.source "DefaultBannerAdListener.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/fusepowered/m2/m2l/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/fusepowered/m2/m2l/MoPubView;

    .prologue
    .line 40
    return-void
.end method

.method public onBannerCollapsed(Lcom/fusepowered/m2/m2l/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/fusepowered/m2/m2l/MoPubView;

    .prologue
    .line 42
    return-void
.end method

.method public onBannerExpanded(Lcom/fusepowered/m2/m2l/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/fusepowered/m2/m2l/MoPubView;

    .prologue
    .line 41
    return-void
.end method

.method public onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubView;Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 0
    .param p1, "banner"    # Lcom/fusepowered/m2/m2l/MoPubView;
    .param p2, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 39
    return-void
.end method

.method public onBannerLoaded(Lcom/fusepowered/m2/m2l/MoPubView;)V
    .locals 0
    .param p1, "banner"    # Lcom/fusepowered/m2/m2l/MoPubView;

    .prologue
    .line 38
    return-void
.end method
