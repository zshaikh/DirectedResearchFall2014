.class public final Lcom/vungle/sdk/az;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(Lcom/vungle/sdk/aw;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/sdk/aw;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/vungle/sdk/ay",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 37
    array-length v0, p1

    new-array v1, v0, [Lcom/vungle/sdk/ay;

    .line 39
    array-length v2, p1

    move v3, v7

    move v4, v7

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, p1, v3

    .line 40
    instance-of v5, v0, Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 41
    add-int/lit8 v5, v4, 0x1

    check-cast v0, Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/vungle/sdk/aw;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/vungle/sdk/ay;

    move-result-object v0

    aput-object v0, v1, v4

    move v0, v5

    .line 39
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    .line 43
    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, v0}, Lcom/vungle/sdk/aw;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/vungle/sdk/ay;

    move-result-object v0

    aput-object v0, v1, v4

    move v0, v5

    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    array-length v2, v1

    move v3, v7

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 53
    invoke-virtual {v4}, Lcom/vungle/sdk/ay;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 58
    :cond_2
    array-length v2, v1

    move v3, v7

    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 59
    invoke-static {p0, v4, v0}, Lcom/vungle/sdk/az;->a(Lcom/vungle/sdk/aw;Lcom/vungle/sdk/ay;Ljava/util/Map;)V

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 62
    :cond_3
    return-object v0
.end method

.method private static a(Lcom/vungle/sdk/aw;Lcom/vungle/sdk/ay;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/sdk/aw;",
            "Lcom/vungle/sdk/ay",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/vungle/sdk/ay",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p1, Lcom/vungle/sdk/ay;->d:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 72
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/vungle/sdk/aw;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/vungle/sdk/ay;

    move-result-object v4

    .line 74
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p0, v4, p2}, Lcom/vungle/sdk/az;->a(Lcom/vungle/sdk/aw;Lcom/vungle/sdk/ay;Ljava/util/Map;)V

    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
