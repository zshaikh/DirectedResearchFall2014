.class public abstract Lcom/acmeaom/android/c/c/b;
.super Lcom/acmeaom/android/c/c/i;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 25
    sget-object v2, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    const/high16 v3, 0x43800000

    const-string v5, "png"

    const/16 v7, 0x14

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/acmeaom/android/c/c/i;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FZLjava/lang/String;II)V

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lcom/acmeaom/android/c/h/m;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    const-string v0, "%.0u/%ld/%ld"

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

    move-result-object v0

    .line 40
    const-string v1, "http://mesonet.agron.iastate.edu/cache/tile.py/1.0.0/goes-ir-4km-900913/"

    .line 42
    new-instance v2, Lcom/acmeaom/android/a/a/b/q;

    invoke-direct {v2, v1}, Lcom/acmeaom/android/a/a/b/q;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 44
    const-string v0, ".png"

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/acmeaom/android/c/c/i;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/acmeaom/android/c/h/b;->d:Lcom/acmeaom/android/c/h/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/h/a;->a(Lcom/acmeaom/android/c/h/b;)V

    .line 55
    return-object v0
.end method

.method protected synthetic c(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/k;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/c/c/b;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    return-object v0
.end method

.method protected j()Lcom/acmeaom/android/c/h/q;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/acmeaom/android/c/h/c;->a:Lcom/acmeaom/android/c/h/e;

    return-object v0
.end method

.method protected synthetic k()Lcom/acmeaom/android/c/a/d;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/acmeaom/android/c/c/b;->j()Lcom/acmeaom/android/c/h/q;

    move-result-object v0

    return-object v0
.end method
