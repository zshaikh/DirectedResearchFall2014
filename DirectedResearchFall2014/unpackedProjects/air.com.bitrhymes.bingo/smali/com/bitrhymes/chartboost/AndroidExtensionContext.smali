.class public Lcom/bitrhymes/chartboost/AndroidExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AndroidExtensionContext.java"


# static fields
.field static context:Lcom/bitrhymes/chartboost/AndroidExtensionContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static getFreContext()Lcom/bitrhymes/chartboost/AndroidExtensionContext;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/bitrhymes/chartboost/AndroidExtensionContext;->context:Lcom/bitrhymes/chartboost/AndroidExtensionContext;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/bitrhymes/chartboost/AndroidExtensionContext;->context:Lcom/bitrhymes/chartboost/AndroidExtensionContext;

    .line 26
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string v0, "Chartboost Ext"

    .line 24
    const-string v1, "context is null, why? why? why?, can\'t return value to flash"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 17
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
    .line 31
    sput-object p0, Lcom/bitrhymes/chartboost/AndroidExtensionContext;->context:Lcom/bitrhymes/chartboost/AndroidExtensionContext;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, functionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/chartboost/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/chartboost/GetVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "startSession"

    new-instance v2, Lcom/bitrhymes/chartboost/StartSession;

    invoke-direct {v2}, Lcom/bitrhymes/chartboost/StartSession;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "showInterstitial"

    new-instance v2, Lcom/bitrhymes/chartboost/ShowInterstitial;

    invoke-direct {v2}, Lcom/bitrhymes/chartboost/ShowInterstitial;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "cacheInterstitial"

    new-instance v2, Lcom/bitrhymes/chartboost/CacheInterstitial;

    invoke-direct {v2}, Lcom/bitrhymes/chartboost/CacheInterstitial;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "hasCachedInterstitial"

    new-instance v2, Lcom/bitrhymes/chartboost/HasCachedInterstitial;

    invoke-direct {v2}, Lcom/bitrhymes/chartboost/HasCachedInterstitial;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "cacheMoreApps"

    new-instance v2, Lcom/bitrhymes/chartboost/CacheMoreApps;

    invoke-direct {v2}, Lcom/bitrhymes/chartboost/CacheMoreApps;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "showMoreApps"

    new-instance v2, Lcom/bitrhymes/chartboost/ShowMoreApps;

    invoke-direct {v2}, Lcom/bitrhymes/chartboost/ShowMoreApps;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method
