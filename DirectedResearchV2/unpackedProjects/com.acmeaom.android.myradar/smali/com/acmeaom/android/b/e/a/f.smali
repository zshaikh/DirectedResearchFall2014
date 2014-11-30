.class public Lcom/acmeaom/android/b/e/a/f;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"


# direct methods
.method public static a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/d/a;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 41
    const-string v1, "Warining: point must have only 2 coordinates, got: %@. ignoring."

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p0, v2, v7

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    sget-object v1, Lcom/acmeaom/android/b/e/a/g;->a:Lcom/acmeaom/android/b/e/a/g;

    iget v1, v1, Lcom/acmeaom/android/b/e/a/g;->c:I

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/a/a/b/e;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/b/e/a/f;->a(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    .line 46
    sget-object v1, Lcom/acmeaom/android/b/e/a/g;->b:Lcom/acmeaom/android/b/e/a/g;

    iget v1, v1, Lcom/acmeaom/android/b/e/a/g;->c:I

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/a/a/b/e;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/b/e/a/f;->a(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v3

    .line 48
    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    .line 49
    :cond_1
    const-string v1, "Warning: can not extract locations from point: %@, ignoring"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p0, v2, v7

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 61
    :goto_0
    return-object v0

    .line 54
    :cond_2
    new-instance v1, Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 56
    iget-object v2, v1, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    invoke-static {v2}, Lcom/acmeaom/android/a/a/d/b;->a(Lcom/acmeaom/android/a/a/d/b;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 57
    const-string v1, "Warning: invalid coordinates for point: %@"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p0, v2, v7

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 61
    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "Warning: coordinate: %@ is not a number, ignoring"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    move-object p0, v1

    .line 77
    :goto_0
    return-object p0

    :cond_0
    move-object v0, p0

    .line 71
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/b/a;->a(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "Waring: coordinate: %@ has wrong value, ignoring"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    move-object p0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    check-cast p0, Ljava/lang/Number;

    goto :goto_0
.end method
