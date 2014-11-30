.class final Lcom/google/ads/bk;
.super Ljava/util/HashMap;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v0, "banner"

    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/bk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "mrec"

    sget-object v1, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/bk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "fullbanner"

    sget-object v1, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/bk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "leaderboard"

    sget-object v1, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/bk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "skyscraper"

    sget-object v1, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/bk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
