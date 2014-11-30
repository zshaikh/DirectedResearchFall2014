.class public Lcom/google/ads/t;
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
    .locals 2

    .prologue
    .line 27
    instance-of v0, p3, Lcom/google/ads/b/e;

    if-eqz v0, :cond_0

    .line 28
    check-cast p3, Lcom/google/ads/b/e;

    .line 29
    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/ads/b/e;->setCustomClose(Z)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "Trying to set a custom close icon on a WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/e/i;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
