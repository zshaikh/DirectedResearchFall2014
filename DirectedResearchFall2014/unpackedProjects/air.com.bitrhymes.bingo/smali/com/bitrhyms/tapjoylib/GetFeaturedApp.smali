.class public Lcom/bitrhyms/tapjoylib/GetFeaturedApp;
.super Ljava/lang/Object;
.source "GetFeaturedApp.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/tapjoy/TapjoyFullScreenAdNotifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .parameter "context"
    .parameter "args"

    .prologue
    .line 15
    invoke-static {p1}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 18
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 19
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tapjoy/TapjoyConnect;->getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 22
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 23
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ERROR_EVENT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFullScreenAdResponse()V
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 32
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 33
    const-string v1, "TAPJOY_FEATURE_APP_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public getFullScreenAdResponseFailed(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 39
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 40
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 41
    const-string v1, "TAPJOY_FEATURE_APP_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
