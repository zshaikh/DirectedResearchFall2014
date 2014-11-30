.class public Lcom/stuv/ane/applovin/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 51
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
    .line 29
    invoke-virtual {p0}, Lcom/stuv/ane/applovin/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/stuv/ane/applovin/AppLovinWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    invoke-virtual {p0}, Lcom/stuv/ane/applovin/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 35
    const-string v1, "showInterstitialAd"

    new-instance v2, Lcom/stuv/ane/applovin/ExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/applovin/ExtensionContext$1;-><init>(Lcom/stuv/ane/applovin/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v0
.end method
