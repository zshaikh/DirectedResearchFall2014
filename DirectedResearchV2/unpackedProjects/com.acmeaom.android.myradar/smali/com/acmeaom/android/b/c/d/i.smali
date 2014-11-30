.class public Lcom/acmeaom/android/b/c/d/i;
.super Lcom/acmeaom/android/c/c/b;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/acmeaom/android/c/c/b;-><init>(Lcom/acmeaom/android/c/d/e;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected a(Lcom/acmeaom/android/c/h/m;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    const-string v0, "%d/%d/%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/acmeaom/android/c/h/m;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/acmeaom/android/c/h/m;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/acmeaom/android/c/h/m;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v0, "kCloudTileType"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    const-string v2, "Water Vapor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "http://mesonet.agron.iastate.edu/cache/tile.py/1.0.0/goes-wv-4km-900913/"

    .line 65
    :goto_0
    new-instance v2, Lcom/acmeaom/android/a/a/b/q;

    invoke-direct {v2, v0}, Lcom/acmeaom/android/a/a/b/q;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2, v1}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 67
    const-string v0, ".png"

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "http://mesonet.agron.iastate.edu/cache/tile.py/1.0.0/goes-ir-4km-900913/"

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;
    .locals 3

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/acmeaom/android/c/c/b;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v1

    .line 74
    const-string v0, "kCloudTileType"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    const-string v2, "Default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/acmeaom/android/c/h/b;->d:Lcom/acmeaom/android/c/h/b;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/h/a;->a(Lcom/acmeaom/android/c/h/b;)V

    .line 81
    :goto_0
    return-object v1

    .line 79
    :cond_0
    sget-object v0, Lcom/acmeaom/android/c/h/b;->b:Lcom/acmeaom/android/c/h/b;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/h/a;->a(Lcom/acmeaom/android/c/h/b;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic c(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/k;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/d/i;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected j()Lcom/acmeaom/android/c/h/q;
    .locals 2

    .prologue
    .line 32
    const-string v0, "kCloudTileType"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    const-string v1, "Clouds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v0, Lcom/acmeaom/android/c/h/c;->a:Lcom/acmeaom/android/c/h/e;

    .line 43
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v1, "Aviation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v0, Lcom/acmeaom/android/b/c/d/a;->a:Lcom/acmeaom/android/c/h/q;

    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "Rainbow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    sget-object v0, Lcom/acmeaom/android/b/c/d/j;->g:Lcom/acmeaom/android/c/h/q;

    goto :goto_0

    .line 40
    :cond_2
    const-string v1, "Water Vapor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    sget-object v0, Lcom/acmeaom/android/b/c/d/k;->g:Lcom/acmeaom/android/c/h/q;

    goto :goto_0

    .line 43
    :cond_3
    sget-object v0, Lcom/acmeaom/android/c/h/c;->a:Lcom/acmeaom/android/c/h/e;

    goto :goto_0
.end method

.method protected synthetic k()Lcom/acmeaom/android/c/a/d;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/d/i;->j()Lcom/acmeaom/android/c/h/q;

    move-result-object v0

    return-object v0
.end method
