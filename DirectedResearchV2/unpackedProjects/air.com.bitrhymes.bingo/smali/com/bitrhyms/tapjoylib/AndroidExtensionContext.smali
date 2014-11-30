.class public Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;
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
    sget-object v0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->appsContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 23
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string v0, "TapjoyContext"

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
    sput-object p0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 29
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->activity:Landroid/app/Activity;

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
    sput-object p0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "AndroidDialogMessage"

    new-instance v2, Lcom/bitrhyms/tapjoylib/AndroidShowDialogFunction;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/AndroidShowDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "ffiInit"

    new-instance v2, Lcom/bitrhyms/tapjoylib/AndroidInitFunction;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/AndroidInitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhyms/tapjoylib/GetVersion;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/GetVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "ConnectTapjoy"

    new-instance v2, Lcom/bitrhyms/tapjoylib/ConnectTapjoy;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/ConnectTapjoy;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "ActionComplete"

    new-instance v2, Lcom/bitrhyms/tapjoylib/ActionComplete;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/ActionComplete;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "GetFeaturedApp"

    new-instance v2, Lcom/bitrhyms/tapjoylib/GetFeaturedApp;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/GetFeaturedApp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "GetFeaturedAppWithCurrencyID"

    new-instance v2, Lcom/bitrhyms/tapjoylib/GetFeaturedAppWithCurrencyID;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/GetFeaturedAppWithCurrencyID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "GetTapJoyPoints"

    new-instance v2, Lcom/bitrhyms/tapjoylib/GetTapJoyPoints;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/GetTapJoyPoints;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "InitVideoAd"

    new-instance v2, Lcom/bitrhyms/tapjoylib/InitVideoAd;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/InitVideoAd;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "SetUserID"

    new-instance v2, Lcom/bitrhyms/tapjoylib/SetUserID;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/SetUserID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "SetVideoCacheCount"

    new-instance v2, Lcom/bitrhyms/tapjoylib/SetVideoCacheCount;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/SetVideoCacheCount;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "ShowOffers"

    new-instance v2, Lcom/bitrhyms/tapjoylib/ShowOffers;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/ShowOffers;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "ShowOffersWithCurrencyID"

    new-instance v2, Lcom/bitrhyms/tapjoylib/ShowOffersWithCurrencyID;

    invoke-direct {v2}, Lcom/bitrhyms/tapjoylib/ShowOffersWithCurrencyID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v0
.end method
