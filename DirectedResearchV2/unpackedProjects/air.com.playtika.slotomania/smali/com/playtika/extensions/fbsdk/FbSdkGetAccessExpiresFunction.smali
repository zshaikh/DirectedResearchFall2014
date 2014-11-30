.class public Lcom/playtika/extensions/fbsdk/FbSdkGetAccessExpiresFunction;
.super Ljava/lang/Object;
.source "FbSdkGetAccessExpiresFunction.java"

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
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 10
    const/4 v3, 0x0

    .line 12
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v2, v0

    .line 13
    .local v2, "fb_ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-virtual {v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getAccessExpires()Ljava/lang/String;

    move-result-object v4

    .line 14
    .local v4, "token_expires":Ljava/lang/String;
    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 20
    .end local v2    # "fb_ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    .end local v4    # "token_expires":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 15
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 16
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "FbSdkGetAccessExpiresFunction"

    invoke-static {v1, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
