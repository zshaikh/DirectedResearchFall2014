.class public Lcom/freshplanet/flurry/ExtensionContext;
.super Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    sget-object v0, Lcom/freshplanet/flurry/Extension;->TAG:Ljava/lang/String;

    const-string v1, "Context created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/freshplanet/flurry/Extension;->TAG:Ljava/lang/String;

    const-string v1, "Context disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/freshplanet/flurry/Extension;->context:Lcom/adobe/fre/FREContext;

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

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/StartSessionFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/StartSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stopSession"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/StopSessionFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/StopSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logEvent"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logError"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/LogErrorFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/LogErrorFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAppVersion"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/SetAppVersionFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/SetAppVersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUserId"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/SetUserIdFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/SetUserIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUserInfo"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/SetUserInfoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setSendEventsOnPause"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/SetSendEventsOnPauseFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/SetSendEventsOnPauseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startTimedEvent"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/StartTimedEventFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/StartTimedEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stopTimedEvent"

    new-instance v2, Lcom/freshplanet/flurry/functions/analytics/StopTimedEventFunction;

    invoke-direct {v2}, Lcom/freshplanet/flurry/functions/analytics/StopTimedEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
