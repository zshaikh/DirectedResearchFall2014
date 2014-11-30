.class public Lcom/chartboost/sdk/Libraries/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->e()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c()[B
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/chartboost/sdk/impl/am;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/am;-><init>()V

    .line 44
    const-string v3, "uuid"

    invoke-virtual {v2, v3, v0}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "macid"

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/chartboost/sdk/impl/al;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/al;-><init>()V

    .line 49
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/al;->a(Lcom/chartboost/sdk/impl/aj;)[B

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static e()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 83
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, v5

    .line 96
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 89
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_2

    move-object v0, v1

    .line 93
    goto :goto_0

    .line 90
    :cond_2
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    move-object v0, v5

    .line 96
    goto :goto_0
.end method
