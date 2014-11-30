.class public Lcom/playtika/extensions/fbsdk/FbSdkRequestNewPermissionsFunction;
.super Ljava/lang/Object;
.source "FbSdkRequestNewPermissionsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fromFREArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;
    .locals 5
    .param p1, "freArray"    # Lcom/adobe/fre/FREArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FRETypeMismatchException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v3

    long-to-int v2, v3

    .line 30
    .local v2, "length":I
    new-array v0, v2, [Ljava/lang/String;

    .line 31
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 34
    return-object v0

    .line 32
    :cond_0
    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v5, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    .local v1, "cbid":Ljava/lang/String;
    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 18
    .local v4, "permissions":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 19
    const/4 v6, 0x1

    aget-object v6, p2, v6

    check-cast v6, Lcom/adobe/fre/FREArray;

    invoke-direct {p0, v6}, Lcom/playtika/extensions/fbsdk/FbSdkRequestNewPermissionsFunction;->fromFREArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 23
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-object v2, v0

    .line 24
    .local v2, "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    invoke-virtual {v2, v1, v4}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->askForPublishPermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    return-object v5

    .line 20
    .end local v2    # "ctx":Lcom/playtika/extensions/fbsdk/FbSdkContext;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 21
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "FbSdkRequestNewPermissionsFunction"

    invoke-static {v3, v6}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
