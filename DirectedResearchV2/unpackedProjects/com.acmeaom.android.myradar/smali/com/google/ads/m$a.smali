.class public final Lcom/google/ads/m$a;
.super Lcom/google/ads/e/ac;
.source "ProGuard"


# instance fields
.field public final a:Lcom/google/ads/e/ag;

.field public final b:Lcom/google/ads/e/ag;

.field public final c:Lcom/google/ads/e/ag;

.field public final d:Lcom/google/ads/e/ag;

.field public final e:Lcom/google/ads/e/ag;

.field public final f:Lcom/google/ads/e/ag;

.field public final g:Lcom/google/ads/e/ag;

.field public final h:Lcom/google/ads/e/ag;

.field public final i:Lcom/google/ads/e/ag;

.field public final j:Lcom/google/ads/e/ag;

.field public final k:Lcom/google/ads/e/ag;

.field public final l:Lcom/google/ads/e/ag;

.field public final m:Lcom/google/ads/e/ag;

.field public final n:Lcom/google/ads/e/ag;

.field public final o:Lcom/google/ads/e/ag;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x500000

    const-wide/32 v4, 0x20000

    const/16 v3, 0x12

    .line 20
    invoke-direct {p0}, Lcom/google/ads/e/ac;-><init>()V

    .line 22
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "ASDomains"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->a:Lcom/google/ads/e/ag;

    .line 25
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "minHwAccelerationVersionBanner"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->b:Lcom/google/ads/e/ag;

    .line 32
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "minHwAccelerationVersionOverlay"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->c:Lcom/google/ads/e/ag;

    .line 36
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "minHwAccelerationVersionOverlay"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->d:Lcom/google/ads/e/ag;

    .line 40
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "mraidBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_banner.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->e:Lcom/google/ads/e/ag;

    .line 45
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "mraidExpandedBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->f:Lcom/google/ads/e/ag;

    .line 50
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "mraidInterstitialPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_interstitial.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->g:Lcom/google/ads/e/ag;

    .line 56
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "badAdReportPath"

    const-string v2, "https://badad.googleplex.com/s/reportAd"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->h:Lcom/google/ads/e/ag;

    .line 65
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "appCacheMaxSize"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->i:Lcom/google/ads/e/ag;

    .line 72
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "appCacheMaxSizePaddingInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->j:Lcom/google/ads/e/ag;

    .line 76
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "maxTotalAppCacheQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->k:Lcom/google/ads/e/ag;

    .line 80
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "maxTotalDatabaseQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->l:Lcom/google/ads/e/ag;

    .line 84
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "maxDatabaseQuotaPerOriginInBytes"

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->m:Lcom/google/ads/e/ag;

    .line 88
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "databaseQuotaIncreaseStepInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->n:Lcom/google/ads/e/ag;

    .line 92
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "isInitialized"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m$a;->o:Lcom/google/ads/e/ag;

    return-void
.end method
