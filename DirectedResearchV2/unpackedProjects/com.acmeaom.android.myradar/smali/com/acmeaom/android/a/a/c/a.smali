.class public Lcom/acmeaom/android/a/a/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/acmeaom/android/a/a/c/a;->a:F

    .line 15
    iput p2, p0, Lcom/acmeaom/android/a/a/c/a;->b:F

    .line 16
    iput p3, p0, Lcom/acmeaom/android/a/a/c/a;->c:F

    .line 17
    iput p4, p0, Lcom/acmeaom/android/a/a/c/a;->d:F

    .line 18
    iput p5, p0, Lcom/acmeaom/android/a/a/c/a;->e:F

    .line 19
    iput p6, p0, Lcom/acmeaom/android/a/a/c/a;->f:F

    .line 20
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/c/a;
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/acmeaom/android/a/a/c/a;

    move v3, v2

    move v4, v1

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/a/a/c/a;-><init>(FFFFFF)V

    return-object v0
.end method

.method public static a(FF)Lcom/acmeaom/android/a/a/c/a;
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/acmeaom/android/a/a/c/a;

    move v3, v2

    move v4, v1

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/a/a/c/a;-><init>(FFFFFF)V

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/a;FF)Lcom/acmeaom/android/a/a/c/a;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/acmeaom/android/a/a/c/a;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/a;-><init>()V

    .line 55
    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->a:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/acmeaom/android/a/a/c/a;->a:F

    .line 56
    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->b:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/acmeaom/android/a/a/c/a;->b:F

    .line 57
    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->c:F

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/acmeaom/android/a/a/c/a;->c:F

    .line 58
    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->d:F

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/acmeaom/android/a/a/c/a;->d:F

    .line 59
    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->e:F

    iput v1, v0, Lcom/acmeaom/android/a/a/c/a;->e:F

    .line 60
    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->f:F

    iput v1, v0, Lcom/acmeaom/android/a/a/c/a;->f:F

    .line 61
    return-object v0
.end method


# virtual methods
.method public b()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/acmeaom/android/a/a/c/a;->a:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/acmeaom/android/a/a/c/a;->c:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/acmeaom/android/a/a/c/a;->e:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/acmeaom/android/a/a/c/a;->b:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/acmeaom/android/a/a/c/a;->d:F

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/acmeaom/android/a/a/c/a;->f:F

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v4, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 68
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    instance-of v1, p1, Lcom/acmeaom/android/a/a/c/a;

    if-nez v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    check-cast p1, Lcom/acmeaom/android/a/a/c/a;

    .line 44
    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/a;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->b:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/a;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->c:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/a;->c:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/a;->d:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/a;->e:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/a;->f:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/a;->f:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
