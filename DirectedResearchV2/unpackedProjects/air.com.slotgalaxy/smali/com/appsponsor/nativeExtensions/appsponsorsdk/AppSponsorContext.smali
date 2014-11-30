.class public Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;
.super Lcom/adobe/fre/FREContext;


# instance fields
.field private interstitial:Lcom/appsponsor/appsponsorsdk/PopupAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterstitial(Ljava/lang/String;)Lcom/appsponsor/appsponsorsdk/PopupAd;
    .locals 2

    new-instance v0, Lcom/appsponsor/appsponsorsdk/PopupAd;

    invoke-virtual {p0}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/appsponsor/appsponsorsdk/PopupAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->interstitial:Lcom/appsponsor/appsponsorsdk/PopupAd;

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->interstitial:Lcom/appsponsor/appsponsorsdk/PopupAd;

    new-instance v1, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;

    invoke-direct {v1, p0}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext$1;-><init>(Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;)V

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAd;->setPopupAdListener(Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;)V

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->interstitial:Lcom/appsponsor/appsponsorsdk/PopupAd;

    return-object v0
.end method

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

    const-string v1, "init"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorInit;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorInit;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "testMode"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorTestMode;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorTestMode;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCountry"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetCountry;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetCountry;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setRegion"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetRegion;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetRegion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMetro"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetMetro;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetMetro;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCity"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetCity;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetCity;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setZip"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetZip;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetZip;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setGender"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetGender;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetGender;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setYob"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetYob;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetYob;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUCountry"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetUCountry;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetUCountry;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUCity"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetUCity;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetUCity;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUZip"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetUZip;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetUZip;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setKeywords"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetKeywords;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorSetKeywords;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorLoad;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorLoad;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "presentAd"

    new-instance v2, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorPresentAd;

    invoke-direct {v2}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorPresentAd;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getInterstitial()Lcom/appsponsor/appsponsorsdk/PopupAd;
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->interstitial:Lcom/appsponsor/appsponsorsdk/PopupAd;

    return-object v0
.end method
