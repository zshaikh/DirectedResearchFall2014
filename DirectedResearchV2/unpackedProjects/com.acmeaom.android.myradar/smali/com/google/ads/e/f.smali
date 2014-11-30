.class public Lcom/google/ads/e/f;
.super Lcom/google/ads/e/t;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/google/ads/n;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/ads/e/t;-><init>(Lcom/google/ads/n;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 44
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 45
    return-void
.end method
