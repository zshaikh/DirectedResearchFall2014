.class public Lcom/freshplanet/ane/AirChartboost/AirChartboostExtensionContext;
.super Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "startSession"

    new-instance v2, Lcom/freshplanet/ane/AirChartboost/functions/StartSessionFunction;

    invoke-direct {v2}, Lcom/freshplanet/ane/AirChartboost/functions/StartSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showInterstitial"

    new-instance v2, Lcom/freshplanet/ane/AirChartboost/functions/ShowInterstitialFunction;

    invoke-direct {v2}, Lcom/freshplanet/ane/AirChartboost/functions/ShowInterstitialFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cacheInterstitial"

    new-instance v2, Lcom/freshplanet/ane/AirChartboost/functions/CacheInterstitialFunction;

    invoke-direct {v2}, Lcom/freshplanet/ane/AirChartboost/functions/CacheInterstitialFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hasCachedInterstitial"

    new-instance v2, Lcom/freshplanet/ane/AirChartboost/functions/HasCachedInterstitialFunction;

    invoke-direct {v2}, Lcom/freshplanet/ane/AirChartboost/functions/HasCachedInterstitialFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
