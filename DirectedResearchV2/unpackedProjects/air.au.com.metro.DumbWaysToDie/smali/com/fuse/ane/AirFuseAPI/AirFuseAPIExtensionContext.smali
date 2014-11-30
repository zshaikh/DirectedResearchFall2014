.class public Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtensionContext;
.super Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

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

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/StartSessionFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/StartSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerEvent"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/RegisterEventFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/RegisterEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "checkAdAvailable"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/CheckAdAvailableFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/CheckAdAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "displayNotifications"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/DisplayNotificationsFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/DisplayNotificationsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showAd"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/ShowAdFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/ShowAdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getGameConfigurationValue"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/GetGameConfigurationValueFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/GetGameConfigurationValueFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerLevel"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/RegisterLevelFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/RegisterLevelFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerCurrency"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/RegisterCurrencyFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/RegisterCurrencyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerGender"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/RegisterGenderFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/RegisterGenderFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gamesPlayed"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/GamesPlayedFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/GamesPlayedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "suspendSession"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/SuspendSessionFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/SuspendSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resumeSession"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/ResumeSessionFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/ResumeSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "displayMoreGames"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/MoreGamesFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/MoreGamesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "log"

    new-instance v2, Lcom/fuse/ane/AirFuseAPI/functions/LogFunction;

    invoke-direct {v2}, Lcom/fuse/ane/AirFuseAPI/functions/LogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
