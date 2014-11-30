.class public Lcom/playtika/extensions/fbsdk/FbSdkGetCouponLinkParameterFunction;
.super Ljava/lang/Object;
.source "FbSdkGetCouponLinkParameterFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 12
    const/4 v8, 0x0

    .line 14
    .local v8, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v3, v0

    .line 15
    .local v3, "fb_ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    const/4 v9, 0x0

    aget-object v7, p2, v9

    check-cast v7, Lcom/adobe/fre/FREArray;

    .line 16
    .local v7, "properties":Lcom/adobe/fre/FREArray;
    const/4 v9, 0x0

    new-array v1, v9, [Lcom/adobe/fre/FREArray;

    .line 17
    .local v1, "constructorArgs":[Lcom/adobe/fre/FREArray;
    const-string v9, "flash.utils.Dictionary"

    invoke-static {v9, v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    .line 18
    const-wide/16 v4, 0x0

    .local v4, "i":J
    :goto_0
    invoke-virtual {v7}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v9

    cmp-long v9, v4, v9

    if-ltz v9, :cond_0

    .line 27
    .end local v1    # "constructorArgs":[Lcom/adobe/fre/FREArray;
    .end local v3    # "fb_ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    .end local v4    # "i":J
    .end local v7    # "properties":Lcom/adobe/fre/FREArray;
    :goto_1
    return-object v8

    .line 19
    .restart local v1    # "constructorArgs":[Lcom/adobe/fre/FREArray;
    .restart local v3    # "fb_ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    .restart local v4    # "i":J
    .restart local v7    # "properties":Lcom/adobe/fre/FREArray;
    :cond_0
    invoke-virtual {v7, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getLinkParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, "param":Ljava/lang/String;
    invoke-virtual {v7, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    goto :goto_0

    .line 22
    .end local v1    # "constructorArgs":[Lcom/adobe/fre/FREArray;
    .end local v3    # "fb_ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    .end local v4    # "i":J
    .end local v6    # "param":Ljava/lang/String;
    .end local v7    # "properties":Lcom/adobe/fre/FREArray;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 23
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "FbSdkGetAccessTokenFunction"

    invoke-static {v2, v9}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
