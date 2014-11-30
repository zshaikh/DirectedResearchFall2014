.class public Lcom/acmeaom/android/a/i/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/a/c/n;

.field private final b:Lcom/acmeaom/android/a/a/c/d;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/a/c/d;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/acmeaom/android/a/i/i;->b:Lcom/acmeaom/android/a/a/c/d;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/i/i;->a:Lcom/acmeaom/android/a/a/c/n;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/acmeaom/android/a/i/i;->b:Lcom/acmeaom/android/a/a/c/d;

    .line 50
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0, p2}, Lcom/acmeaom/android/a/a/c/n;-><init>(Lcom/acmeaom/android/a/a/c/n;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/i/i;->a:Lcom/acmeaom/android/a/a/c/n;

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/acmeaom/android/a/i/i;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 91
    const-string v1, "blue dot.png"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 98
    new-instance v4, Landroid/graphics/LightingColorFilter;

    const v5, -0x333334

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 99
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 100
    new-instance v0, Lcom/acmeaom/android/a/i/i;

    new-instance v2, Lcom/acmeaom/android/a/a/c/d;

    invoke-direct {v2, v1}, Lcom/acmeaom/android/a/a/c/d;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v2}, Lcom/acmeaom/android/a/i/i;-><init>(Lcom/acmeaom/android/a/a/c/d;)V

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    if-eqz p0, :cond_0

    .line 103
    invoke-static {}, Lcom/acmeaom/android/a/a/b/l;->a()Lcom/acmeaom/android/a/a/b/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/acmeaom/android/a/a/b/l;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-static {p0}, Lcom/acmeaom/android/a/a/b/l;->a(Ljava/lang/String;)I

    move-result v0

    .line 105
    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->i()F

    move-result v0

    .line 108
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v0

    invoke-static {v2, v0}, Lcom/acmeaom/android/a/a/c/n;->a(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v2

    .line 109
    new-instance v0, Lcom/acmeaom/android/a/i/i;

    new-instance v3, Lcom/acmeaom/android/a/a/c/d;

    invoke-direct {v3, v1}, Lcom/acmeaom/android/a/a/c/d;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v3, v2}, Lcom/acmeaom/android/a/i/i;-><init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/a/c/d;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/acmeaom/android/a/i/i;->b:Lcom/acmeaom/android/a/a/c/d;

    return-object v0
.end method

.method public b()Lcom/acmeaom/android/a/a/c/n;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/acmeaom/android/a/i/i;->a:Lcom/acmeaom/android/a/a/c/n;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/acmeaom/android/a/i/i;->a:Lcom/acmeaom/android/a/a/c/n;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    iget-object v1, p0, Lcom/acmeaom/android/a/i/i;->b:Lcom/acmeaom/android/a/a/c/d;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/acmeaom/android/a/i/i;->b:Lcom/acmeaom/android/a/a/c/d;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    goto :goto_0
.end method
