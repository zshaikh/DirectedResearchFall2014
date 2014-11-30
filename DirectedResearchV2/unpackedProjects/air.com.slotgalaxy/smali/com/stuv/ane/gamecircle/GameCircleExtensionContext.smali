.class public Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "GameCircleExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 107
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
    .line 14
    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isReady"

    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$1;-><init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "showAchievements"

    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$2;

    invoke-direct {v2, p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$2;-><init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "updateAchievement"

    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$3;

    invoke-direct {v2, p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$3;-><init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "showLeaderboard"

    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$4;

    invoke-direct {v2, p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$4;-><init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "submitScore"

    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$5;

    invoke-direct {v2, p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$5;-><init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "setCloudData"

    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$6;

    invoke-direct {v2, p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$6;-><init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "getCloudData"

    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$7;

    invoke-direct {v2, p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$7;-><init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "syncCloud"

    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$8;

    invoke-direct {v2, p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$8;-><init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v0
.end method
