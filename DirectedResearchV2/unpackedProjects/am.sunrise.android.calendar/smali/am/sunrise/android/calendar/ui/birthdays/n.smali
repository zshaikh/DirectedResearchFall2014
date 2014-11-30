.class public Lam/sunrise/android/calendar/ui/birthdays/n;
.super Ljava/lang/Object;
.source "CoverTransformation.java"

# interfaces
.implements Lcom/b/a/ba;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lam/sunrise/android/calendar/ui/birthdays/n;->a:I

    .line 26
    iput p2, p0, Lam/sunrise/android/calendar/ui/birthdays/n;->b:I

    .line 27
    iput p3, p0, Lam/sunrise/android/calendar/ui/birthdays/n;->c:I

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 44
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    iget v0, p0, Lam/sunrise/android/calendar/ui/birthdays/n;->a:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 47
    iget v1, p0, Lam/sunrise/android/calendar/ui/birthdays/n;->b:I

    int-to-float v1, v1

    int-to-float v4, v2

    div-float/2addr v1, v4

    .line 49
    cmpl-float v4, v0, v1

    if-lez v4, :cond_1

    .line 51
    int-to-float v4, v2

    div-float/2addr v1, v0

    mul-float/2addr v1, v4

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    .line 52
    sub-int v1, v2, v4

    div-int/lit8 v1, v1, 0x2

    move v2, v1

    move v1, v6

    .line 62
    :goto_1
    iget v6, p0, Lam/sunrise/android/calendar/ui/birthdays/n;->c:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 63
    add-int/2addr v2, v6

    .line 65
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 67
    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 56
    :cond_1
    int-to-float v4, v3

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v0, v7

    .line 57
    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    move v4, v2

    move v2, v6

    move v9, v0

    move v0, v1

    move v1, v3

    move v3, v9

    .line 58
    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverTransformation ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/birthdays/n;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/birthdays/n;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
