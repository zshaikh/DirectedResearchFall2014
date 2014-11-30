.class public Lcom/playtika/extensions/fbsdk/FbSdkGraphPathFunction;
.super Ljava/lang/Object;
.source "FbSdkGraphPathFunction.java"

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
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x0

    const-string v9, "FbSdkGraphPathFunction"

    .line 11
    const-string v8, "FbSdkGraphPathFunction"

    invoke-static {v9, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 v2, 0x0

    .line 14
    .local v2, "cbid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 15
    .local v3, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 16
    .local v5, "json_params":Ljava/lang/String;
    const/4 v6, 0x0

    .line 19
    .local v6, "httpMethod":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 20
    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 21
    const/4 v8, 0x2

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 22
    const/4 v8, 0x3

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 28
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v1, v0

    .line 29
    .local v1, "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-virtual/range {v1 .. v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->graphpath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-object v4

    .line 23
    .end local v1    # "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 24
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "FbSdkGraphPathFunction"

    invoke-static {v7, v9}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
