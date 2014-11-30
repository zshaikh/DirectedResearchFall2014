.class public Lcom/acmeaom/android/c/c/a;
.super Lcom/acmeaom/android/c/c/i;
.source "ProGuard"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 23
    sget-object v2, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    const/high16 v3, 0x43800000

    const-string v5, "jpg"

    const/16 v7, 0xf

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/acmeaom/android/c/c/i;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FZLjava/lang/String;II)V

    .line 25
    invoke-virtual {p1}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 26
    iput-boolean v4, p0, Lcom/acmeaom/android/c/c/a;->a:Z

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acmeaom/android/c/c/a;->a:Z

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v1, Lcom/acmeaom/android/a/a/b/q;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/acmeaom/android/a/a/b/q;-><init>(I)V

    .line 43
    const-string v2, "http://ecn.t"

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 44
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 48
    const-string v0, ".tiles.virtualearth.net/tiles/h"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, p1}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 51
    const-string v0, ".jpeg?g=1&mkt=en&n=z&device=mobile&dpi=d"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/acmeaom/android/c/c/a;->a:Z

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "1"

    .line 57
    :goto_1
    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/q;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
