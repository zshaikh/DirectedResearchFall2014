.class public Lcom/mobosquare/sdk/subscription/c/l;
.super Ljava/lang/Object;
.source "ToolUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 21
    .line 22
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    move v0, v1

    .line 26
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 35
    :cond_0
    return v1

    .line 27
    :cond_1
    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 28
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    const/4 v1, 0x1

    .line 26
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
