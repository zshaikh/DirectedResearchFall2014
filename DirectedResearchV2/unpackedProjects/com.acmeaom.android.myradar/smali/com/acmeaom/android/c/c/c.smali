.class public Lcom/acmeaom/android/c/c/c;
.super Lcom/acmeaom/android/c/c/i;
.source "ProGuard"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 24
    sget-object v2, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    const/high16 v3, 0x43800000

    const-string v5, "png"

    const/16 v7, 0xf

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/acmeaom/android/c/c/i;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FZLjava/lang/String;II)V

    .line 27
    invoke-virtual {p1}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    iput-boolean v4, p0, Lcom/acmeaom/android/c/c/c;->a:Z

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/acmeaom/android/c/c/c;->a:Z

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "1"

    .line 50
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v3, "http://ecn.t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ".tiles.virtualearth.net/tiles/r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "?g=1&mkt=en&lbl=l1&stl=h&shading=hill&n=z&device=mobile&dpi=d"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method protected b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/acmeaom/android/c/c/i;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/acmeaom/android/c/h/b;->c:Lcom/acmeaom/android/c/h/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/h/a;->a(Lcom/acmeaom/android/c/h/b;)V

    .line 73
    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method protected synthetic c(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/k;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/c/c/c;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method protected synthetic j()Lcom/acmeaom/android/c/h/q;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/acmeaom/android/c/c/c;->l()Lcom/acmeaom/android/c/h/i;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic k()Lcom/acmeaom/android/c/a/d;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/acmeaom/android/c/c/c;->l()Lcom/acmeaom/android/c/h/i;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lcom/acmeaom/android/c/h/i;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/acmeaom/android/c/h/g;->a:Lcom/acmeaom/android/c/h/i;

    return-object v0
.end method
