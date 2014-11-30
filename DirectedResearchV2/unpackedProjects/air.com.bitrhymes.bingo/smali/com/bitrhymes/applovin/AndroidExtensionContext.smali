.class public Lcom/bitrhymes/applovin/AndroidExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AndroidExtensionContext.java"


# static fields
.field static appsContext:Lcom/adobe/fre/FREContext;


# instance fields
.field public activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static getFreContext()Lcom/adobe/fre/FREContext;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/bitrhymes/applovin/AndroidExtensionContext;->appsContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/bitrhymes/applovin/AndroidExtensionContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 23
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string v0, "AdMobContext"

    const-string v1, "appsContext is null. So, we cannot communicate back to the flash project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFREContext(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "appsContext1"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 28
    sput-object p0, Lcom/bitrhymes/applovin/AndroidExtensionContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 29
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/applovin/AndroidExtensionContext;->activity:Landroid/app/Activity;

    .line 34
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "functionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/applovin/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/applovin/GetVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "initializeAppLovinSdk"

    new-instance v2, Lcom/bitrhymes/applovin/InitializeAppLovinSdk;

    invoke-direct {v2}, Lcom/bitrhymes/applovin/InitializeAppLovinSdk;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "showOverInterestitialAd"

    new-instance v2, Lcom/bitrhymes/applovin/ShowOverInterstitialAd;

    invoke-direct {v2}, Lcom/bitrhymes/applovin/ShowOverInterstitialAd;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object v0
.end method
