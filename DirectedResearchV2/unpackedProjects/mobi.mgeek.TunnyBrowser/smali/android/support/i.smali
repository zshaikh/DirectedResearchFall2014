.class public Landroid/support/i;
.super Ljava/lang/Object;
.source "PrivateKeyCompact.java"


# direct methods
.method public static a(Ljava/security/PrivateKey;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    move v0, v1

    .line 38
    :goto_0
    return v0

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 33
    const-string v2, "getPkeyContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 34
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 35
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    move v0, v1

    .line 38
    goto :goto_0
.end method
