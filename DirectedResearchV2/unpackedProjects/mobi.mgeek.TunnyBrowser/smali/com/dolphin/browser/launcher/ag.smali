.class public Lcom/dolphin/browser/launcher/ag;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field private static b:F


# instance fields
.field a:Lcom/g/a/an;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Point;

.field private i:Landroid/graphics/Rect;

.field private j:Lcom/dolphin/browser/launcher/DragLayer;

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/high16 v0, 0x3f800000

    sput v0, Lcom/dolphin/browser/launcher/ag;->b:F

    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/launcher/DragLayer;Landroid/graphics/Bitmap;IIIIIIF)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v2, p0, Lcom/dolphin/browser/launcher/ag;->h:Landroid/graphics/Point;

    .line 45
    iput-object v2, p0, Lcom/dolphin/browser/launcher/ag;->i:Landroid/graphics/Rect;

    .line 46
    iput-object v2, p0, Lcom/dolphin/browser/launcher/ag;->j:Lcom/dolphin/browser/launcher/DragLayer;

    .line 47
    iput-boolean v4, p0, Lcom/dolphin/browser/launcher/ag;->k:Z

    .line 48
    iput v1, p0, Lcom/dolphin/browser/launcher/ag;->l:F

    .line 51
    iput v1, p0, Lcom/dolphin/browser/launcher/ag;->m:F

    .line 52
    iput v1, p0, Lcom/dolphin/browser/launcher/ag;->n:F

    .line 53
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/dolphin/browser/launcher/ag;->o:F

    .line 69
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ag;->j:Lcom/dolphin/browser/launcher/DragLayer;

    .line 70
    iput p9, p0, Lcom/dolphin/browser/launcher/ag;->o:F

    .line 72
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->dragViewScale:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 74
    int-to-float v1, p7

    add-float/2addr v0, v1

    int-to-float v1, p7

    div-float/2addr v0, v1

    .line 77
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/g/a/an;->b([F)Lcom/g/a/an;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/launcher/ag;->a:Lcom/g/a/an;

    .line 78
    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->a:Lcom/g/a/an;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/g/a/an;->c(J)Lcom/g/a/an;

    .line 79
    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->a:Lcom/g/a/an;

    new-instance v2, Lcom/dolphin/browser/launcher/ah;

    invoke-direct {v2, p0, p9, v0}, Lcom/dolphin/browser/launcher/ah;-><init>(Lcom/dolphin/browser/launcher/ag;FF)V

    invoke-virtual {v1, v2}, Lcom/g/a/an;->a(Lcom/g/a/au;)V

    .line 104
    invoke-static {p2, p5, p6, p7, p8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/ag;->c:Landroid/graphics/Bitmap;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ag;->a(Landroid/graphics/Rect;)V

    .line 108
    iput p3, p0, Lcom/dolphin/browser/launcher/ag;->f:I

    .line 109
    iput p4, p0, Lcom/dolphin/browser/launcher/ag;->g:I

    .line 112
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 113
    invoke-virtual {p0, v0, v0}, Lcom/dolphin/browser/launcher/ag;->measure(II)V

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/ag;->e:Landroid/graphics/Paint;

    .line 115
    return-void

    .line 77
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/ag;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->m:F

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/ag;F)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->m:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/dolphin/browser/launcher/ag;->m:F

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/ag;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->n:F

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/ag;F)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->n:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/dolphin/browser/launcher/ag;->n:F

    return v0
.end method

.method static synthetic f()F
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/dolphin/browser/launcher/ag;->b:F

    return v0
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 220
    invoke-static {p0, p1}, Lcom/g/c/a;->a(Landroid/view/View;F)V

    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ag;->invalidate()V

    .line 223
    return-void
.end method

.method public a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->j:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 236
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/launcher/cn;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 239
    new-instance v0, Lcom/dolphin/browser/launcher/ad;

    invoke-direct {v0, v2, v2}, Lcom/dolphin/browser/launcher/ad;-><init>(II)V

    .line 240
    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/launcher/ad;->width:I

    .line 241
    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/launcher/ad;->height:I

    .line 242
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/ad;->c:Z

    .line 243
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->f:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/g/c/a;->g(Landroid/view/View;F)V

    .line 245
    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->g:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/g/c/a;->h(Landroid/view/View;F)V

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->a:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->a()V

    .line 247
    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ag;->h:Landroid/graphics/Point;

    .line 139
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ag;->i:Landroid/graphics/Rect;

    .line 147
    return-void
.end method

.method b(II)V
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->f:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/dolphin/browser/launcher/ag;->m:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/g/c/a;->g(Landroid/view/View;F)V

    .line 268
    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->g:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/dolphin/browser/launcher/ag;->n:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/g/c/a;->h(Landroid/view/View;F)V

    .line 269
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/ag;->k:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->a:Lcom/g/a/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->a:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->a:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->b()V

    .line 253
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/ag;->n:F

    iput v0, p0, Lcom/dolphin/browser/launcher/ag;->m:F

    .line 257
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ag;->requestLayout()V

    .line 258
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/launcher/cn;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->j:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 278
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/high16 v5, 0x437f0000

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/ag;->k:Z

    .line 169
    iget v1, p0, Lcom/dolphin/browser/launcher/ag;->l:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    move v1, v0

    .line 170
    :goto_0
    if-eqz v1, :cond_0

    .line 171
    if-eqz v1, :cond_3

    iget v0, p0, Lcom/dolphin/browser/launcher/ag;->l:F

    sub-float v0, v4, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 172
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/launcher/ag;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/ag;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    if-eqz v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/launcher/ag;->l:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 179
    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/dolphin/browser/launcher/ag;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 184
    :cond_1
    return-void

    .line 169
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 171
    :cond_3
    const/16 v0, 0xff

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ag;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ag;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/ag;->setMeasuredDimension(II)V

    .line 164
    return-void
.end method
