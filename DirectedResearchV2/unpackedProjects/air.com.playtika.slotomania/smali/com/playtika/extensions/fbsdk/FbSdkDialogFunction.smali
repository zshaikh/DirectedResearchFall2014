.class public Lcom/playtika/extensions/fbsdk/FbSdkDialogFunction;
.super Ljava/lang/Object;
.source "FbSdkDialogFunction.java"

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
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 10
    const/4 v2, 0x0

    .line 11
    .local v2, "cbid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 12
    .local v1, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 15
    .local v5, "jsonParam":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 16
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 17
    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 23
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v3, v0

    .line 24
    .local v3, "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-virtual {v3, v2, v1, v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->dialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v6, 0x0

    return-object v6

    .line 18
    .end local v3    # "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 19
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "FbSdkDialogFunction"

    invoke-static {v4, v6}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
