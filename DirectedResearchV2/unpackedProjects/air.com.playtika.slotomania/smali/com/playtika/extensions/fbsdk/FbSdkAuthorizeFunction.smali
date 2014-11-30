.class public Lcom/playtika/extensions/fbsdk/FbSdkAuthorizeFunction;
.super Ljava/lang/Object;
.source "FbSdkAuthorizeFunction.java"

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
    .line 11
    const/4 v1, 0x0

    .line 12
    .local v1, "cbid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 15
    .local v4, "permissions":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 16
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 22
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v2, v0

    .line 23
    .local v2, "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->authorize(Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    const/4 v5, 0x0

    return-object v5

    .line 17
    .end local v2    # "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 18
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "FbSdkAuthorizeFunction"

    invoke-static {v3, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
