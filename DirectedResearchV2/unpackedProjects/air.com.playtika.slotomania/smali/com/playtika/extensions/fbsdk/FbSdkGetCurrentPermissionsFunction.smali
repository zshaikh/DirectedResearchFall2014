.class public Lcom/playtika/extensions/fbsdk/FbSdkGetCurrentPermissionsFunction;
.super Ljava/lang/Object;
.source "FbSdkGetCurrentPermissionsFunction.java"

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
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 12
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v1, v0

    .line 13
    .local v1, "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getCurrentPermissions()Ljava/util/List;

    move-result-object v6

    .line 14
    .local v6, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 15
    const/4 v7, 0x0

    .line 26
    .end local p0    # "this":Lcom/playtika/extensions/fbsdk/FbSdkGetCurrentPermissionsFunction;
    :goto_0
    return-object v7

    .line 16
    .restart local p0    # "this":Lcom/playtika/extensions/fbsdk/FbSdkGetCurrentPermissionsFunction;
    :cond_0
    const/4 v4, 0x0

    .line 18
    .local v4, "list":Lcom/adobe/fre/FREArray;
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Lcom/adobe/fre/FREArray;->newArray(I)Lcom/adobe/fre/FREArray;

    move-result-object v4

    .line 19
    const/4 v3, 0x0

    .end local p0    # "this":Lcom/playtika/extensions/fbsdk/FbSdkGetCurrentPermissionsFunction;
    .local v3, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_1

    .end local v3    # "i":I
    :goto_2
    move-object v7, v4

    .line 26
    goto :goto_0

    .line 20
    .restart local v3    # "i":I
    :cond_1
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    .line 21
    .local v5, "permission":Lcom/adobe/fre/FREObject;
    int-to-long v7, v3

    invoke-virtual {v4, v7, v8, v5}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    .end local v3    # "i":I
    .end local v5    # "permission":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 24
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "FbSdkGetCurrentPermissionsFunction"

    invoke-static {v2, v7}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2
.end method
