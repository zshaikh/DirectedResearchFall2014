.class public Lcom/acmeaom/android/c/c/e;
.super Lcom/acmeaom/android/c/c/i;
.source "ProGuard"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 20
    sget-object v2, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    const/high16 v3, 0x43800000

    const-string v5, "png"

    const/16 v7, 0xf

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/acmeaom/android/c/c/i;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FZLjava/lang/String;II)V

    .line 22
    invoke-virtual {p1}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    iput-boolean v4, p0, Lcom/acmeaom/android/c/c/e;->a:Z

    .line 23
    return-void

    .line 22
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/acmeaom/android/c/c/e;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    .line 37
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v3, "http://ecn.t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ".tiles.virtualearth.net/tiles/r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "?g=1&mkt=en&stl=h&shading=hill&n=z&device=mobile&dpi=d"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method
