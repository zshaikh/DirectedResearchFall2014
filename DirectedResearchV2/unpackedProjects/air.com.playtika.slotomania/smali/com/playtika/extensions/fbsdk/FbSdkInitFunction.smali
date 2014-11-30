.class public Lcom/playtika/extensions/fbsdk/FbSdkInitFunction;
.super Ljava/lang/Object;
.source "FbSdkInitFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v10, "FbSdkInitFunction"

    .line 14
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 15
    .local v3, "appID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 16
    .local v2, "access_token":Ljava/lang/String;
    const/4 v1, 0x0

    .line 17
    .local v1, "access_expires":Ljava/lang/String;
    const/4 v6, 0x0

    .line 19
    .local v6, "supressSSO":Z
    const/4 v7, 0x1

    aget-object v7, p2, v7

    if-eqz v7, :cond_0

    .line 20
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 21
    :cond_0
    const/4 v7, 0x2

    aget-object v7, p2, v7

    if-eqz v7, :cond_1

    .line 22
    const/4 v7, 0x2

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_1
    const/4 v7, 0x3

    aget-object v7, p2, v7

    if-eqz v7, :cond_2

    .line 24
    const/4 v7, 0x3

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v6

    .line 26
    :cond_2
    const-string v7, "FbSdkInitFunction"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "appID "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v5, v0

    .line 29
    .local v5, "fbCtx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-virtual {v5, v3, v2, v1, v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->initFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "access_expires":Ljava/lang/String;
    .end local v2    # "access_token":Ljava/lang/String;
    .end local v3    # "appID":Ljava/lang/String;
    .end local v5    # "fbCtx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    .end local v6    # "supressSSO":Z
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 30
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 31
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "FbSdkInitFunction"

    invoke-static {v4, v10}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
