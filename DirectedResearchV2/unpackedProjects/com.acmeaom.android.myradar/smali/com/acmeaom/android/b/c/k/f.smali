.class public Lcom/acmeaom/android/b/c/k/f;
.super Lcom/acmeaom/android/c/g/c/b;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/b/c/k/a;F)V
    .locals 2

    .prologue
    .line 24
    invoke-static {p1}, Lcom/acmeaom/android/b/c/k/f;->a(Lcom/acmeaom/android/b/c/k/a;)Ljava/util/List;

    move-result-object v0

    const/high16 v1, 0x3fc00000

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/c/g/c/b;-><init>(Ljava/util/List;F)V

    .line 26
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/k/a;->g()Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/k/f;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 27
    sget-object v0, Lcom/acmeaom/android/a/f/l;->j:Lcom/acmeaom/android/a/f/l;

    iget v0, v0, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/k/f;->a(I)V

    .line 28
    return-void
.end method

.method private static a(Lcom/acmeaom/android/b/c/k/a;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const-string v1, "can\'t create graphic with no polygons"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 39
    const-string v1, "can\'t create graphic with no locations"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 43
    :cond_1
    return-object v0
.end method
