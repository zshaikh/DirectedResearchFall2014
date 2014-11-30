.class public Lcom/playtika/extensions/concurrency/logging/GraylogContext;
.super Lcom/adobe/fre/FREContext;
.source "GraylogContext.java"


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
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->getInstance()Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->stop()V

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

    .line 19
    .local v0, "functionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "start"

    new-instance v2, Lcom/playtika/extensions/concurrency/logging/GraylogStartFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogStartFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "log"

    new-instance v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "setLogLevel"

    new-instance v2, Lcom/playtika/extensions/concurrency/logging/GraylogSetLogLevel;

    invoke-direct {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogSetLogLevel;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-object v0
.end method
