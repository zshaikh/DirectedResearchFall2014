.class public Lcom/playtika/extensions/chartboost/ChartboostContext;
.super Lcom/adobe/fre/FREContext;
.source "ChartboostContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 14
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

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/playtika/extensions/chartboost/ChartboostInitFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/chartboost/ChartboostInitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "onDestroy"

    new-instance v2, Lcom/playtika/extensions/chartboost/ChartboostDestroyFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/chartboost/ChartboostDestroyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "onStart"

    new-instance v2, Lcom/playtika/extensions/chartboost/ChartboostStartFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/chartboost/ChartboostStartFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "onStop"

    new-instance v2, Lcom/playtika/extensions/chartboost/ChartboostStopFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/chartboost/ChartboostStopFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-object v0
.end method
