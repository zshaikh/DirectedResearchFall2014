.class public Lcom/bitrhymes/flurry/FlurryContext;
.super Lcom/adobe/fre/FREContext;
.source "FlurryContext.java"


# static fields
.field static appsContext:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static getFreContext()Lcom/adobe/fre/FREContext;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/bitrhymes/flurry/FlurryContext;->appsContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/bitrhymes/flurry/FlurryContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 28
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "JungleAppsContext"

    const-string v1, "appsContext is null. So, we cannot communicate back to the flash project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFREContext(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .parameter "appsContext1"

    .prologue
    .line 33
    sput-object p0, Lcom/bitrhymes/flurry/FlurryContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 34
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inside dispose method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
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
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inside getFunctions method"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, functionsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/flurry/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/GetVersion;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "startSession"

    new-instance v2, Lcom/bitrhymes/flurry/StartSessionFunction;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/StartSessionFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "logEvent"

    new-instance v2, Lcom/bitrhymes/flurry/LogEvent;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/LogEvent;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "logEvent2"

    new-instance v2, Lcom/bitrhymes/flurry/LogEvent2;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/LogEvent2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "endTimedEvent"

    new-instance v2, Lcom/bitrhymes/flurry/EndTimedEvent;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/EndTimedEvent;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "endTimedEvent2"

    new-instance v2, Lcom/bitrhymes/flurry/EndTimedEvent2;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/EndTimedEvent2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "logError"

    new-instance v2, Lcom/bitrhymes/flurry/LogError;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/LogError;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "setUserID"

    new-instance v2, Lcom/bitrhymes/flurry/SetUserIDFunction;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/SetUserIDFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "setAge"

    new-instance v2, Lcom/bitrhymes/flurry/SetAgeFunction;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/SetAgeFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "setGender"

    new-instance v2, Lcom/bitrhymes/flurry/SetGenderFunction;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/SetGenderFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "stopSession"

    new-instance v2, Lcom/bitrhymes/flurry/StopSessionFunction;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/StopSessionFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "fetchAds"

    new-instance v2, Lcom/bitrhymes/flurry/FetchAdsFunction;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/FetchAdsFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "showAd"

    new-instance v2, Lcom/bitrhymes/flurry/DisplayAdsFunction;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/DisplayAdsFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "setUserCookies"

    new-instance v2, Lcom/bitrhymes/flurry/SetUserCookiesFunction;

    invoke-direct {v2}, Lcom/bitrhymes/flurry/SetUserCookiesFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "End of getFunctions method"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object v0
.end method
