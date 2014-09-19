.class public Lcom/AdX/tag/AdXSendAppOpenFunction;
.super Ljava/lang/Object;
.source "AdXSendAppOpenFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    .line 31
    const/4 v4, 0x0

    .line 33
    .local v4, result:Lcom/adobe/fre/FREObject;
    const-string v5, "AdXSendAppOpenFunction"

    const-string v6, "call"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/AdX/tag/AdXExtensionContext;

    move-object v2, v0

    .line 39
    .local v2, adxExtContext:Lcom/AdX/tag/AdXExtensionContext;
    :try_start_0
    invoke-virtual {v2}, Lcom/AdX/tag/AdXExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 40
    .local v1, a:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1           #a:Landroid/app/Activity;
    :goto_0
    return-object v4

    .line 45
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 47
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "AdXFunction"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
