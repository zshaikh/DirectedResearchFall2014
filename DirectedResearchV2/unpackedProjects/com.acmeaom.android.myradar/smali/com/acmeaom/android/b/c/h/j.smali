.class public Lcom/acmeaom/android/b/c/h/j;
.super Lcom/acmeaom/android/c/b/a;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/f/m;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/f/m;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/acmeaom/android/c/b/a;-><init>(Lcom/acmeaom/android/c/d/e;)V

    .line 25
    iput-object p2, p0, Lcom/acmeaom/android/b/c/h/j;->a:Lcom/acmeaom/android/a/f/m;

    .line 26
    const-string v0, "kRadarOpacityKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 29
    const-string v0, "kRadarSpeedKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 31
    invoke-virtual {p0, v1}, Lcom/acmeaom/android/b/c/h/j;->b(F)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/h/j;->a(F)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/acmeaom/android/b/c/h/j;->b:F

    return v0
.end method

.method public a(F)V
    .locals 6

    .prologue
    .line 55
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    float-to-double v1, p1

    const-wide/high16 v3, -0x4000000000000000L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    const-wide v3, 0x3fc47ae147ae147bL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 56
    new-instance v1, Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v2, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/h/j;->a(Lcom/acmeaom/android/a/a/b/aj;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/acmeaom/android/b/c/h/j;->b(Lcom/acmeaom/android/a/a/b/aj;)V

    .line 60
    return-void
.end method

.method public declared-synchronized f()V
    .locals 3

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/acmeaom/android/c/b/a;->f()V

    .line 38
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/h/j;->h()Lcom/acmeaom/android/c/c/f;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/h/k;

    .line 40
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/k;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/k;->l()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/acmeaom/android/b/c/h/j;->a:Lcom/acmeaom/android/a/f/m;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/f/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
