.class final Lcom/google/ads/b/l;
.super Ljava/util/HashMap;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 94
    const-string v0, "/log"

    new-instance v1, Lcom/google/ads/y;

    invoke-direct {v1}, Lcom/google/ads/y;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/b/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "/setNativeActivationOverlay"

    new-instance v1, Lcom/google/ads/aa;

    invoke-direct {v1}, Lcom/google/ads/aa;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/b/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
