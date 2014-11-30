.class public Lcom/playtika/extensions/fbsdk/FbSdkLogoutFunction;
.super Ljava/lang/Object;
.source "FbSdkLogoutFunction.java"

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
    const/4 v4, 0x0

    .line 13
    .local v4, "result":Lcom/adobe/fre/FREObject;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "cbid":Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v2, v0

    .line 16
    .local v2, "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-virtual {v2, v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->logout(Ljava/lang/String;)V

    .line 18
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 24
    .end local v1    # "cbid":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    :goto_0
    return-object v4

    .line 19
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 20
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "FbSdkLogoutFunction"

    invoke-static {v3, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
