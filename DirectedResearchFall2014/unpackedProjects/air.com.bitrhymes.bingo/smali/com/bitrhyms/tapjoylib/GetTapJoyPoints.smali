.class public Lcom/bitrhyms/tapjoylib/GetTapJoyPoints;
.super Ljava/lang/Object;
.source "GetTapJoyPoints.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/tapjoy/TapjoyNotifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .parameter "context"
    .parameter "args"

    .prologue
    .line 17
    invoke-static {p1}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 18
    move-object v0, p1

    check-cast v0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;

    move-object v1, v0

    .line 20
    .local v1, adec:Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, v1, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 23
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 24
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 26
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 27
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "ERROR_EVENT"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 4
    .parameter "currencyName"
    .parameter "pointTotal"

    .prologue
    .line 35
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 36
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending the session details back."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v1, "TAPJOY_RETURN_POINTS_EVENT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return_points,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 47
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 48
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 49
    const-string v1, "TAPJOY_RETURN_POINTS_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
