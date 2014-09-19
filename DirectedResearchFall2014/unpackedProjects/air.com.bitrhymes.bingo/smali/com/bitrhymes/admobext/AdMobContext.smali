.class public Lcom/bitrhymes/admobext/AdMobContext;
.super Lcom/adobe/fre/FREContext;
.source "AdMobContext.java"


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
    .line 16
    sget-object v0, Lcom/bitrhymes/admobext/AdMobContext;->appsContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/bitrhymes/admobext/AdMobContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 22
    :goto_0
    return-object v0

    .line 21
    :cond_0
    const-string v0, "AdMobContext"

    const-string v1, "appsContext is null. So, we cannot communicate back to the flash project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFREContext(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .parameter "appsContext1"

    .prologue
    .line 27
    sput-object p0, Lcom/bitrhymes/admobext/AdMobContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 28
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/admobext/AdMobContext;->activity:Landroid/app/Activity;

    .line 33
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
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, functionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/admobext/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/admobext/GetVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "showInterstitialAd"

    new-instance v2, Lcom/bitrhymes/admobext/ShowInterstitialAd;

    invoke-direct {v2}, Lcom/bitrhymes/admobext/ShowInterstitialAd;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object v0
.end method
