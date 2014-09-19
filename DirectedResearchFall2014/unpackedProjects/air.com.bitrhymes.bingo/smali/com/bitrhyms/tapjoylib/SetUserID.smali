.class public Lcom/bitrhyms/tapjoylib/SetUserID;
.super Ljava/lang/Object;
.source "SetUserID.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .parameter "context"
    .parameter "args"

    .prologue
    .line 13
    move-object v0, p1

    check-cast v0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;

    move-object v1, v0

    .line 14
    .local v1, adec:Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;
    invoke-static {p1}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 16
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 17
    iget-object v4, v1, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->activity:Landroid/app/Activity;

    .line 16
    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 20
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 21
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/TapjoyConnect;->setUserID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 23
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 24
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "ERROR_EVENT"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v4, "AIR_AndroidDialog"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
