.class public abstract Lcom/acmeaom/android/a/i/a;
.super Lcom/acmeaom/android/c/a/a;
.source "ProGuard"


# instance fields
.field protected a:Lcom/acmeaom/android/a/i/b;

.field private h:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/d/d;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/acmeaom/android/c/a/a;-><init>(Lcom/acmeaom/android/a/d/d;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected a(Lcom/acmeaom/android/a/i/l;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/acmeaom/android/a/i/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getParent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/acmeaom/android/a/i/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->requestRender()V

    .line 35
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public h()F
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acmeaom/android/a/i/a;->h:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->h()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43200000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/i/a;->h:Ljava/lang/Float;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/i/a;->h:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
