.class public Lcom/acmeaom/android/a/i/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Matrix;

.field private c:Z

.field private d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    .line 28
    iget-object v0, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    .line 33
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/16 v1, 0x64

    const/high16 v5, 0x42c80000

    .line 59
    iget-boolean v0, p0, Lcom/acmeaom/android/a/i/c;->c:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/a/i/c;->c:Z

    .line 63
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    invoke-virtual {p0}, Lcom/acmeaom/android/a/i/c;->d()Lcom/acmeaom/android/a/a/c/m;

    move-result-object v2

    .line 66
    iget-object v3, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->a:F

    div-float v3, v5, v3

    iget-object v4, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v4, v4, Lcom/acmeaom/android/a/a/c/n;->b:F

    div-float v4, v5, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 67
    iget-object v3, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/l;->a:F

    neg-float v3, v3

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    new-instance v2, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v2, p0, Lcom/acmeaom/android/a/i/c;->b:Landroid/graphics/Matrix;

    .line 69
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 70
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v3, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 74
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/a/i/c;->d:Ljava/nio/ByteBuffer;

    .line 75
    iget-object v1, p0, Lcom/acmeaom/android/a/i/c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 55
    invoke-direct {p0}, Lcom/acmeaom/android/a/i/c;->e()V

    .line 56
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/a;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/c/a;->b()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 111
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V
    .locals 10

    .prologue
    const-wide v8, 0x401921fb54442d18L

    .line 129
    new-instance v2, Landroid/graphics/RectF;

    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    sub-float/2addr v0, p2

    iget v1, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    sub-float/2addr v1, p2

    iget v3, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    add-float/2addr v3, p2

    iget v4, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    add-float/2addr v4, p2

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    invoke-static {p3}, Lcom/acmeaom/android/a/g/w;->a(F)F

    move-result v0

    .line 134
    invoke-static {p4}, Lcom/acmeaom/android/a/g/w;->a(F)F

    move-result v3

    .line 135
    sub-float v1, v3, v0

    .line 137
    if-eqz p5, :cond_1

    .line 139
    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 140
    float-to-double v3, v1

    sub-double v3, v8, v3

    double-to-float v1, v3

    .line 152
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/acmeaom/android/a/g/w;->b(F)F

    move-result v0

    invoke-static {v1}, Lcom/acmeaom/android/a/g/w;->b(F)F

    move-result v1

    invoke-virtual {v3, v2, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 153
    return-void

    .line 146
    :cond_1
    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    .line 147
    neg-float v1, v0

    float-to-double v4, v1

    float-to-double v6, v3

    sub-double v6, v8, v6

    sub-double v3, v4, v6

    double-to-float v1, v3

    goto :goto_0

    .line 149
    :cond_2
    sub-float v1, v0, v3

    neg-float v1, v1

    goto :goto_0
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;)Z
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/acmeaom/android/a/i/c;->e()V

    .line 37
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    aput v3, v2, v1

    iget v3, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    aput v3, v2, v0

    .line 38
    iget-object v3, p0, Lcom/acmeaom/android/a/i/c;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 39
    aget v3, v2, v1

    float-to-int v3, v3

    .line 40
    aget v2, v2, v0

    float-to-int v4, v2

    .line 41
    if-ltz v3, :cond_0

    if-ge v3, v5, :cond_0

    if-ltz v4, :cond_0

    if-lt v4, v5, :cond_1

    :cond_0
    move v2, v0

    .line 42
    :goto_0
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/acmeaom/android/a/i/c;->d:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 41
    goto :goto_0

    :cond_2
    move v0, v1

    .line 42
    goto :goto_1
.end method

.method public b()Lcom/acmeaom/android/a/i/c;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    iget-object v1, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/i/c;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public b(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    iget v1, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    return-void
.end method

.method public c()Lcom/acmeaom/android/a/a/c/i;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/acmeaom/android/a/a/c/i;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/a/c/i;-><init>(Lcom/acmeaom/android/a/i/c;)V

    return-object v0
.end method

.method public c(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    iget v1, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    return-void
.end method

.method public d()Lcom/acmeaom/android/a/a/c/m;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/acmeaom/android/a/i/c;->a:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 162
    new-instance v1, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/a/a/c/m;-><init>(Landroid/graphics/RectF;)V

    return-object v1
.end method
