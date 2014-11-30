.class public Lcom/playtika/extensions/flurry/FlurryExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "FlurryExtensionContext.java"


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
    .line 15
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
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "onStartSession"

    new-instance v2, Lcom/playtika/extensions/flurry/FlurryStartSessionFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/flurry/FlurryStartSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "onEndSession"

    new-instance v2, Lcom/playtika/extensions/flurry/FlurryCloseSessionFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/flurry/FlurryCloseSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "logEvent"

    new-instance v2, Lcom/playtika/extensions/flurry/FlurryLogEventFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/flurry/FlurryLogEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object v0
.end method
