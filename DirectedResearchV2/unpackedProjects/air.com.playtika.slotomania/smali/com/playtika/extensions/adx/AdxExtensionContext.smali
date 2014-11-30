.class public Lcom/playtika/extensions/adx/AdxExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AdxExtensionContext.java"


# static fields
.field public static final PREFS_ADX_NEED_TO_UPDATE:Ljava/lang/String; = "prefs_adx_need_to_update"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 22
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
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "onStartSession"

    new-instance v2, Lcom/playtika/extensions/adx/AdxStartSessionFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/adx/AdxStartSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "onEndSession"

    new-instance v2, Lcom/playtika/extensions/adx/AdxCloseSessionFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/adx/AdxCloseSessionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "logEvent"

    new-instance v2, Lcom/playtika/extensions/adx/AdxLogEventFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/adx/AdxLogEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "getReferral"

    new-instance v2, Lcom/playtika/extensions/adx/AdxGetReferral;

    invoke-direct {v2}, Lcom/playtika/extensions/adx/AdxGetReferral;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "getNeedToUpdateADX"

    new-instance v2, Lcom/playtika/extensions/adx/AdxGetNeedToUpdateFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/adx/AdxGetNeedToUpdateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "setNeedToUpdateADX"

    new-instance v2, Lcom/playtika/extensions/adx/AdxSetNeedToUpdateFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/adx/AdxSetNeedToUpdateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0
.end method

.method public getReferralAsync()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/playtika/extensions/adx/AdxExtensionContext$1;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/adx/AdxExtensionContext$1;-><init>(Lcom/playtika/extensions/adx/AdxExtensionContext;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/playtika/extensions/adx/AdxExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/playtika/extensions/adx/AdxExtensionContext$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method public pushEventToAS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/playtika/extensions/adx/AdxExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
