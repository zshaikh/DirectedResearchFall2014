.class public Lcom/acmeaom/android/b/c/b/a;
.super Lcom/acmeaom/android/c/f/c;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/c;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 28
    new-instance v0, Lcom/acmeaom/android/b/c/a/g;

    invoke-direct {v0, p1}, Lcom/acmeaom/android/b/c/a/g;-><init>(Lcom/acmeaom/android/c/d/e;)V

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/b/a;->a(Lcom/acmeaom/android/c/f/c;)V

    .line 29
    new-instance v0, Lcom/acmeaom/android/b/c/f/b;

    invoke-direct {v0, p1}, Lcom/acmeaom/android/b/c/f/b;-><init>(Lcom/acmeaom/android/c/d/e;)V

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/b/a;->a(Lcom/acmeaom/android/c/f/c;)V

    .line 31
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/acmeaom/android/b/c/b/b;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/b/b;-><init>(Lcom/acmeaom/android/b/c/b/a;)V

    const-string v2, "kAviationLayerStatusChanged"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/acmeaom/android/a/f/g;->b()Lcom/acmeaom/android/a/f/g;

    const-string v0, "kAviationLayerStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->d()Z

    move-result v0

    .line 46
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/acmeaom/android/c/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
