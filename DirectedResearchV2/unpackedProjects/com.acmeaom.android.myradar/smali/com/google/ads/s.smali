.class public Lcom/google/ads/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/ads/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/b/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 28
    instance-of v0, p3, Lcom/google/ads/b/e;

    if-eqz v0, :cond_0

    .line 29
    check-cast p3, Lcom/google/ads/b/e;

    .line 30
    invoke-virtual {p3}, Lcom/google/ads/b/e;->f()V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "Trying to close WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/e/i;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
