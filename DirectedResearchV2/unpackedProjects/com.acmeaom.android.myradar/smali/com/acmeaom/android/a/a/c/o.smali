.class public Lcom/acmeaom/android/a/a/c/o;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(FF)Lcom/acmeaom/android/a/a/c/l;
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    return-object v0
.end method

.method public static a(FFFF)Lcom/acmeaom/android/a/a/c/m;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/acmeaom/android/a/a/c/m;

    new-instance v1, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v1, p0, p1}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    new-instance v2, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v2, p2, p3}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/m;-><init>(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/n;)V

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/l;)Z
    .locals 2

    .prologue
    .line 9
    iget v0, p0, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v1, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget v1, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/m;)Z
    .locals 5

    .prologue
    .line 21
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    iget-object v1, p1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/c/l;-><init>(Lcom/acmeaom/android/a/a/c/l;)V

    .line 22
    new-instance v1, Lcom/acmeaom/android/a/a/c/l;

    iget-object v2, p1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v1, v2}, Lcom/acmeaom/android/a/a/c/l;-><init>(Lcom/acmeaom/android/a/a/c/l;)V

    .line 23
    new-instance v2, Lcom/acmeaom/android/a/a/c/l;

    iget-object v3, p1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v2, v3}, Lcom/acmeaom/android/a/a/c/l;-><init>(Lcom/acmeaom/android/a/a/c/l;)V

    .line 25
    iget v3, v0, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v4, p1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v4, v4, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 26
    iget v3, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v4, p1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v4, v4, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 27
    iget v3, v1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v4, p1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v4, v4, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/acmeaom/android/a/a/c/l;->b:F

    .line 28
    iget v3, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v4, p1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v4, v4, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    .line 30
    iget-object v3, p1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {p0, v3}, Lcom/acmeaom/android/a/a/c/m;->a(Lcom/acmeaom/android/a/a/c/l;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/a/c/m;->a(Lcom/acmeaom/android/a/a/c/l;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/a/a/c/m;->a(Lcom/acmeaom/android/a/a/c/l;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/acmeaom/android/a/a/c/m;->a(Lcom/acmeaom/android/a/a/c/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/n;Lcom/acmeaom/android/a/a/c/n;)Z
    .locals 2

    .prologue
    .line 13
    iget v0, p0, Lcom/acmeaom/android/a/a/c/n;->b:F

    iget v1, p1, Lcom/acmeaom/android/a/a/c/n;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v1, p1, Lcom/acmeaom/android/a/a/c/n;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(FF)Lcom/acmeaom/android/a/a/c/n;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    return-object v0
.end method
