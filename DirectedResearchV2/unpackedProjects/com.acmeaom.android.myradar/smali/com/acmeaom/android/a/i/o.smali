.class public Lcom/acmeaom/android/a/i/o;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:I

.field private final b:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/acmeaom/android/a/i/o;->a:I

    .line 17
    iput p2, p0, Lcom/acmeaom/android/a/i/o;->b:F

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/c/d/e;)Lcom/acmeaom/android/a/a/c/l;
    .locals 4

    .prologue
    .line 21
    iget-object v0, p1, Lcom/acmeaom/android/c/d/e;->f:Ljava/util/HashMap;

    iget v1, p0, Lcom/acmeaom/android/a/i/o;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 22
    new-instance v2, Lcom/acmeaom/android/a/a/c/l;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, Lcom/acmeaom/android/a/i/o;->b:F

    div-float/2addr v1, v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v3, p0, Lcom/acmeaom/android/a/i/o;->b:F

    div-float/2addr v0, v3

    invoke-direct {v2, v1, v0}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    return-object v2
.end method

.method public b(Lcom/acmeaom/android/c/d/e;)Lcom/acmeaom/android/a/a/c/l;
    .locals 5

    .prologue
    .line 26
    iget-object v0, p1, Lcom/acmeaom/android/c/d/e;->g:Landroid/view/MotionEvent;

    .line 28
    iget v1, p0, Lcom/acmeaom/android/a/i/o;->a:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 29
    new-instance v2, Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/acmeaom/android/a/i/o;->b:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v1, p0, Lcom/acmeaom/android/a/i/o;->b:F

    div-float/2addr v0, v1

    invoke-direct {v2, v3, v0}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    instance-of v1, p1, Lcom/acmeaom/android/a/i/o;

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    check-cast p1, Lcom/acmeaom/android/a/i/o;

    .line 36
    iget v1, p1, Lcom/acmeaom/android/a/i/o;->a:I

    iget v2, p0, Lcom/acmeaom/android/a/i/o;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/acmeaom/android/a/i/o;->a:I

    return v0
.end method
