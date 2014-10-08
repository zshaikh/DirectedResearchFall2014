.class public Lcom/AdX/tag/AdXSendEventFunction;
.super Ljava/lang/Object;
.source "AdXSendEventFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v8, 0x0

    .line 34
    .local v8, "result":Lcom/adobe/fre/FREObject;
    const-string v9, "AdXSendEventFunction"

    const-string v10, "call"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/AdX/tag/AdXExtensionContext;

    move-object v2, v0

    .line 40
    .local v2, "adxExtContext":Lcom/AdX/tag/AdXExtensionContext;
    const/4 v9, 0x0

    :try_start_0
    aget-object v7, p2, v9

    .line 41
    .local v7, "fro":Lcom/adobe/fre/FREObject;
    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "event":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v7, p2, v9

    .line 43
    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "data":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v7, p2, v9

    .line 45
    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "currency":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/AdX/tag/AdXExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 48
    .local v1, "a":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6, v4, v3}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "a":Landroid/app/Activity;
    .end local v3    # "currency":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v6    # "event":Ljava/lang/String;
    .end local v7    # "fro":Lcom/adobe/fre/FREObject;
    :goto_0
    return-object v8

    .line 53
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 55
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "AdXFunction"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
