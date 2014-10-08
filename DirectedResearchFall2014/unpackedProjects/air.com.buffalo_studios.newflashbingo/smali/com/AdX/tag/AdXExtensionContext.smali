.class public Lcom/AdX/tag/AdXExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AdXExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 31
    const-string v0, "AdXExtensionContext"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "AdXExtensionContext"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
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
    .line 53
    const-string v1, "AdXExtensionContext"

    const-string v2, "getFunctions"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "reportAppOpen"

    new-instance v2, Lcom/AdX/tag/AdXSendAppOpenFunction;

    invoke-direct {v2}, Lcom/AdX/tag/AdXSendAppOpenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "reportAppResume"

    new-instance v2, Lcom/AdX/tag/AdXSendAppOpenFunction;

    invoke-direct {v2}, Lcom/AdX/tag/AdXSendAppOpenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "reportAppEvent"

    new-instance v2, Lcom/AdX/tag/AdXSendEventFunction;

    invoke-direct {v2}, Lcom/AdX/tag/AdXSendEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "initNativeCode"

    new-instance v2, Lcom/AdX/tag/AdXInitNativeCodeFunction;

    invoke-direct {v2}, Lcom/AdX/tag/AdXInitNativeCodeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "getReferral"

    new-instance v2, Lcom/AdX/tag/AdXGetReferralFunction;

    invoke-direct {v2}, Lcom/AdX/tag/AdXGetReferralFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "getDeviceID"

    new-instance v2, Lcom/AdX/tag/AdXGetDeviceIDFunction;

    invoke-direct {v2}, Lcom/AdX/tag/AdXGetDeviceIDFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object v0
.end method
