.class public Lcom/google/ads/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/ads/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/b/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 4

    .prologue
    .line 30
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    const-string v1, "errors"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " request error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/i;->e(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/google/ads/b/w;->k()Lcom/google/ads/b/n;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->a:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 41
    :cond_0
    return-void
.end method
